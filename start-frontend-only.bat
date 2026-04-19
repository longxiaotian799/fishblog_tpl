@echo off
setlocal enabledelayedexpansion

echo ========================================
echo FishBlog - 启动前端服务
echo ========================================
echo.
echo 注意: 后端服务需要使用JDK 8或使用Docker构建
echo 本脚本仅启动前端和后台管理界面
echo.

cd /d %~dp0

echo [1/2] 启动前台博客服务...
echo.

cd blog-vue\blog

REM 检查node_modules是否存在
if not exist "node_modules" (
    echo 正在安装前端依赖...
    call yarn install
    if errorlevel 1 (
        echo [提示] yarn安装失败，尝试使用npm
        call npm install
        if errorlevel 1 (
            echo [错误] 前端依赖安装失败
            pause
            exit /b 1
        )
    )
)

echo 启动前台博客服务...
echo 前台地址: http://127.0.0.1:8081
echo.
start "FishBlog-Frontend" cmd /k "yarn serve || npm run serve"

timeout /t 3 /nobreak >nul

echo.
echo [2/2] 启动后台管理服务...
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
echo ✅ 前端服务已启动！
echo ========================================
echo.
echo 可用地址：
echo - 博客前台:  http://127.0.0.1:8081
echo - 管理后台: http://127.0.0.1:8082
echo.
echo 注意: 后端服务尚未启动，请先安装JDK 8或使用Docker构建后端
echo.
echo Docker中间件状态:
docker ps --filter "name=fishblog" --format "  - {{.Names}}: 运行中" 2>nul
echo.
echo 按任意键查看后端启动方案...
pause >nul

echo.
echo ========================================
echo 启动后端的方案:
echo ========================================
echo.
echo 方案1 (推荐): 安装JDK 8
echo   1. 下载JDK 8: https://repo.huaweicloud.com/java/jdk/8u202-b08/jdk-8u202-windows-x64.exe
echo   2. 安装后设置环境变量JAVA_HOME
echo   3. 运行: start-all.bat
echo.
echo 方案2: 使用Docker构建后端
echo   运行: docker-build-backend.bat
echo.
echo ========================================
echo.
pause

endlocal
