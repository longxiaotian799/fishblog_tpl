@echo off
setlocal enabledelayedexpansion

set ROOT_DIR=%~dp0..
set NETWORK_NAME=fishblog-net

set MYSQL_CONTAINER=fishblog-mysql
set REDIS_CONTAINER=fishblog-redis
set RABBITMQ_CONTAINER=fishblog-rabbitmq
set ES_CONTAINER=fishblog-es

echo 创建 Docker 网络...
docker network inspect %NETWORK_NAME% >nul 2>&1
if errorlevel 1 (
    docker network create %NETWORK_NAME%
)

echo 拉取镜像...
docker pull mysql:8.0
docker pull redis:6.2
docker pull rabbitmq:3.13-management
docker pull elasticsearch:7.17.24

echo 启动 MySQL...
docker ps --format "{{.Names}}" | findstr /x "%MYSQL_CONTAINER%" >nul
if errorlevel 1 (
    docker ps -a --format "{{.Names}}" | findstr /x "%MYSQL_CONTAINER%" >nul
    if not errorlevel 1 (
        docker start %MYSQL_CONTAINER%
    ) else (
        docker run -d --name %MYSQL_CONTAINER% ^
          --network %NETWORK_NAME% ^
          -p 3307:3306 ^
          -e MYSQL_ROOT_PASSWORD=123456 ^
          -e MYSQL_DATABASE=blog_temp ^
          -v "%ROOT_DIR%\docker\mysql\init\00-create-db.sql:/docker-entrypoint-initdb.d/00-create-db.sql:ro" ^
          -v "%ROOT_DIR%\blog_mysql8.sql:/docker-entrypoint-initdb.d/01-blog_mysql8.sql:ro" ^
          mysql:8.0 ^
          --default-authentication-plugin=mysql_native_password
    )
)

echo 启动 Redis...
docker ps --format "{{.Names}}" | findstr /x "%REDIS_CONTAINER%" >nul
if errorlevel 1 (
    docker ps -a --format "{{.Names}}" | findstr /x "%REDIS_CONTAINER%" >nul
    if not errorlevel 1 (
        docker start %REDIS_CONTAINER%
    ) else (
        docker run -d --name %REDIS_CONTAINER% ^
          --network %NETWORK_NAME% ^
          -p 6379:6379 ^
          redis:6.2
    )
)

echo 启动 RabbitMQ...
docker ps --format "{{.Names}}" | findstr /x "%RABBITMQ_CONTAINER%" >nul
if errorlevel 1 (
    docker ps -a --format "{{.Names}}" | findstr /x "%RABBITMQ_CONTAINER%" >nul
    if not errorlevel 1 (
        docker start %RABBITMQ_CONTAINER%
    ) else (
        docker run -d --name %RABBITMQ_CONTAINER% ^
          --network %NETWORK_NAME% ^
          -p 5672:5672 ^
          -p 15672:15672 ^
          rabbitmq:3.13-management
    )
)

echo 启动 Elasticsearch...
docker ps --format "{{.Names}}" | findstr /x "%ES_CONTAINER%" >nul
if errorlevel 1 (
    docker ps -a --format "{{.Names}}" | findstr /x "%ES_CONTAINER%" >nul
    if not errorlevel 1 (
        docker start %ES_CONTAINER%
    ) else (
        docker run -d --name %ES_CONTAINER% ^
          --network %NETWORK_NAME% ^
          -p 9200:9200 ^
          -p 9300:9300 ^
          -e discovery.type=single-node ^
          -e xpack.security.enabled=false ^
          -e "ES_JAVA_OPTS=-Xms512m -Xmx512m" ^
          elasticsearch:7.17.24
    )
)

echo.
echo ========================================
echo 中间件启动完成！
echo ========================================
echo.
echo 可用地址：
echo - MySQL: 127.0.0.1:3307 (root/123456)
echo - Redis: 127.0.0.1:6379
echo - RabbitMQ: http://127.0.0.1:15672 (guest/guest)
echo - Elasticsearch: http://127.0.0.1:9200
echo.

endlocal
