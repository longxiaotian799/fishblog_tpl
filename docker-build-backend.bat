@echo off
echo ========================================
echo FishBlog - 使用Docker构建和运行后端
echo ========================================
echo.
echo 由于你的系统使用Java 26，而项目需要Java 8
echo 我们将使用Docker来构建和运行后端服务
echo.

cd /d %~dp0blog-springboot

echo [1/2] 创建Dockerfile...
(
echo FROM maven:3.8-openjdk-8
echo.
echo WORKDIR /app
echo.
echo COPY pom.xml .
echo COPY src ./src
echo.
echo RUN mvn clean package -DskipTests
echo.
echo EXPOSE 8080
echo.
echo CMD ["java", "-jar", "target/blog-0.0.1.jar", "--spring.profiles.active=local"]
) > Dockerfile

echo ✅ Dockerfile已创建
echo.

echo [2/2] 构建并启动后端容器...
echo.

REM 检查是否已有运行的容器
docker ps -a --format "{{.Names}}" | findstr /x "fishblog-backend" >nul
if not errorlevel 1 (
    echo 停止并删除旧的后端容器...
    docker rm -f fishblog-backend >nul
)

echo 构建后端镜像（首次需要几分钟）...
docker build -t fishblog-backend-image .

if errorlevel 1 (
    echo [错误] Docker构建失败
    pause
    exit /b 1
)

echo.
echo 启动后端服务...
docker run -d --name fishblog-backend ^
  --network fishblog-net ^
  -p 8080:8080 ^
  -e SPRING_DATASOURCE_URL=jdbc:mysql://host.docker.internal:3307/blog_temp?serverTimezone=GMT%%2B8 ^
  -e SPRING_DATASOURCE_USERNAME=root ^
  -e SPRING_DATASOURCE_PASSWORD=123456 ^
  fishblog-backend-image

echo.
echo ========================================
echo ✅ 后端服务已启动！
echo ========================================
echo.
echo 后端地址: http://127.0.0.1:8080
echo Swagger文档: http://127.0.0.1:8080/doc.html
echo.
echo 查看日志: docker logs -f fishblog-backend
echo 停止服务: docker stop fishblog-backend
echo.
pause
