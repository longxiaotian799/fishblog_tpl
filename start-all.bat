@echo off
setlocal enabledelayedexpansion

echo ========================================
echo FishBlog 项目启动脚本
echo ========================================
echo.

REM 设置JDK 8路径
set JAVA_8_HOME=C:\Program Files\Java\jdk1.8.0_202
set JAVA_HOME=%JAVA_8_HOME%
set PATH=%JAVA_HOME%\bin;%PATH%

echo 使用JDK 8: %JAVA_HOME%
java -version
echo.

REM 检查Java是否安装
java -version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未检测到Java环境，请先安装JDK 8
    pause
    exit /b 1
)

REM 检查Maven是否安装
set MAVEN_HOME=D:\Download\apache-maven-3.9.15-bin\apache-maven-3.9.15
set PATH=%MAVEN_HOME%\bin;%PATH%

mvn -version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未检测到Maven，请先安装Maven
    pause
    exit /b 1
)

echo [1/3] 启动后端服务...
echo.

cd /d %~dp0blog-springboot

echo 正在打包后端项目...
call mvn clean package -DskipTests

if errorlevel 1 (
    echo [错误] Maven打包失败
    pause
    exit /b 1
)

echo.
echo 启动Spring Boot后端服务...
echo 后端地址: http://127.0.0.1:8080
echo Swagger文档: http://127.0.0.1:8080/doc.html
echo.
start "FishBlog-Backend" java -jar target\blog-0.0.1.jar --spring.profiles.active=local

echo.
echo [2/3] 启动前台博客服务...
echo.

cd ..\blog-vue\blog

REM 检查node_modules是否存在
if not exist "node_modules" (
    echo 正在安装前端依赖...
    call yarn install
    if errorlevel 1 (
        echo [错误] 前端依赖安装失败
        pause
        exit /b 1
    )
)

echo 启动前台博客服务...
echo 前台地址: http://127.0.0.1:8081
echo.
start "FishBlog-Frontend" cmd /k "yarn serve"

timeout /t 5 /nobreak >nul

echo.
echo [3/3] 启动后台管理服务...
echo.

cd ..\admin

REM 检查node_modules是否存在
if not exist "node_modules" (
    echo 正在安装后台依赖...
    call npm install
    if errorlevel 1 (
        echo [错误] 后台依赖安装失败
        pause
        exit /b 1
    )
)

echo 启动后台管理服务...
echo 后台地址: http://127.0.0.1:8082
echo.
start "FishBlog-Admin" cmd /k "npm run serve"

echo.
echo ========================================
echo 所有服务已启动！
echo ========================================
echo.
echo 可用地址：
echo - 博客前台:     http://127.0.0.1:8081
echo - 管理后台:    http://127.0.0.1:8082
echo - 后端API:     http://127.0.0.1:8080
echo - Swagger文档: http://127.0.0.1:8080/doc.html
echo - RabbitMQ:    http://127.0.0.1:15672 (guest/guest)
echo - MySQL:       127.0.0.1:3307 (root/123456)
echo - Redis:       127.0.0.1:6379
echo - ES:          http://127.0.0.1:9200
echo.
echo 默认管理员账户：
echo - 用户名: 15967777744@qq.com
echo - 密码: 123456
echo.
echo 按任意键退出...
pause >nul

endlocal
