@echo off
setlocal enabledelayedexpansion

echo ========================================
echo FishBlog 一键重启
echo ========================================
echo.

REM 设置环境变量
set "JAVA_HOME=C:\Program Files\Java\jdk1.8.0_202"
set "PATH=%JAVA_HOME%\bin;D:\Download\apache-maven-3.9.15-bin\apache-maven-3.9.15\bin;%PATH%"

echo [1/4] 检查Docker中间件...
docker ps --filter "name=fishblog" --format "{{.Names}}" 2>nul | findstr "fishblog-mysql" >nul
if errorlevel 1 (
    echo Docker中间件未运行，请先运行Docker中间件:
    echo   docker start fishblog-mysql fishblog-redis fishblog-rabbitmq fishblog-es
    pause
    exit /b 1
)
echo Docker中间件运行正常
echo.

echo [2/4] 启动后端服务...
taskkill /F /FI "WINDOWTITLE eq FishBlog-Backend*" 2>nul >nul
timeout /t 2 /nobreak >nul
cd /d %~dp0blog-springboot
start "FishBlog-Backend" java -jar target\blog-0.0.1.jar --spring.profiles.active=local
echo 后端启动中...
echo.

echo [3/4] 等待后端就绪...
timeout /t 20 /nobreak >nul
echo 后端应该已就绪
echo.

echo [4/4] 启动前端服务...
taskkill /F /FI "WINDOWTITLE eq FishBlog-Frontend*" 2>nul >nul
taskkill /F /FI "WINDOWTITLE eq FishBlog-Admin*" 2>nul >nul
timeout /t 2 /nobreak >nul

cd /d %~dp0blog-vue\blog
start "FishBlog-Frontend" cmd /k "yarn serve"

timeout /t 5 /nobreak >nul

cd /d %~dp0blog-vue\admin
start "FishBlog-Admin" cmd /k "npm run serve"

echo.
echo ========================================
echo 所有服务启动中，请稍候...
echo ========================================
echo.
echo 可用地址：
echo - 博客前台:   http://127.0.0.1:8081
echo - 管理后台:   http://127.0.0.1:8082
echo - 后端API:    http://127.0.0.1:8080
echo.
echo 按任意键退出...
pause >nul
