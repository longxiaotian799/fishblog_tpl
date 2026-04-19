@echo off
echo ========================================
echo FishBlog 停止所有服务
echo ========================================
echo.

echo 正在停止前端和管理后台窗口...
taskkill /F /FI "WINDOWTITLE eq FishBlog-Frontend*" 2>nul
taskkill /F /FI "WINDOWTITLE eq FishBlog-Admin*" 2>nul
taskkill /F /FI "WINDOWTITLE eq FishBlog-Backend*" 2>nul

echo 正在停止占用8080-8082端口的进程...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8080 :8081 :8082" ^| findstr LISTENING') do (
    taskkill /F /PID %%a 2>nul
)

timeout /t 2 /nobreak >nul

echo.
echo 正在停止Docker容器...
docker stop fishblog-mysql fishblog-redis fishblog-rabbitmq fishblog-es fishblog-backend 2>nul

echo.
echo ========================================
echo 所有服务已停止！
echo ========================================
echo.
pause
