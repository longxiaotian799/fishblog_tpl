@echo off
echo ========================================
echo Maven 配置和环境变量设置
echo ========================================
echo.

set MAVEN_HOME=D:\Download\apache-maven-3.9.15-bin\apache-maven-3.9.15
set MAVEN_SETTINGS=%MAVEN_HOME%\conf\settings.xml

echo [1/3] 配置Maven使用阿里源...
echo.

REM 备份原始settings.xml
if exist "%MAVEN_SETTINGS%" (
    copy /Y "%MAVEN_SETTINGS%" "%MAVEN_SETTINGS%.backup" >nul
    echo 已备份原始配置文件为 settings.xml.backup
)

REM 创建新的settings.xml使用阿里源
(
echo ^<?xml version="1.0" encoding="UTF-8"?^>
echo ^<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
echo           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
echo           xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd"^>
echo.
echo   ^!-- 本地仓库位置，修改为D盘 --^>
echo   ^<localRepository^>D:\MavenRepository^</localRepository^>
echo.
echo   ^<mirrors^>
echo     ^<mirror^>
echo       ^<id^>aliyunmaven^</id^>
echo       ^<mirrorOf^>*^</mirrorOf^>
echo       ^<name^>阿里云公共仓库^</name^>
echo       ^<url^>https://maven.aliyun.com/repository/public^</url^>
echo     ^</mirror^>
echo.
echo     ^<mirror^>
echo       ^<id^>aliyunmaven-central^</id^>
echo       ^<mirrorOf^>central^</mirrorOf^>
echo       ^<name^>Maven中央仓库^</name^>
echo       ^<url^>https://maven.aliyun.com/repository/central^</url^>
echo     ^</mirror^>
echo.
echo     ^<mirror^>
echo       ^<id^>aliyunmaven-spring^</id^>
echo       ^<mirrorOf^>spring^</mirrorOf^>
echo       ^<name^>Spring仓库^</name^>
echo       ^<url^>https://maven.aliyun.com/repository/spring^</url^>
echo     ^</mirror^>
echo   ^</mirrors^>
echo.
echo ^</settings^>
) > "%MAVEN_SETTINGS%"

echo ✅ Maven配置文件已创建: %MAVEN_SETTINGS%
echo.

echo [2/3] 临时设置环境变量（当前窗口有效）...
echo.

set PATH=%MAVEN_HOME%\bin;%PATH%

echo [3/3] 测试Maven是否可用...
echo.

call mvn -version

echo.
echo ========================================
echo ✅ Maven 配置完成！
echo ========================================
echo.
echo 本地仓库位置: D:\MavenRepository
echo 配置文件位置: %MAVEN_SETTINGS%
echo.
echo 【重要】永久设置环境变量:
echo.
echo 方法1: 使用系统设置（推荐）
echo   1. 右键"此电脑" → "属性" → "高级系统设置" → "环境变量"
echo   2. 在"系统变量"中新建:
echo      - 变量名: MAVEN_HOME
echo      - 变量值: %MAVEN_HOME%
echo   3. 编辑 Path 变量，添加: %%MAVEN_HOME%%\bin
echo.
echo 方法2: 复制以下命令手动添加到系统环境变量:
echo.
echo    MAVEN_HOME = %MAVEN_HOME%
echo    Path中添加 = %%MAVEN_HOME%%\bin
echo.
echo ========================================
echo.
echo 现在可以运行以下命令启动项目:
echo   cd C:\Users\31847\fishblog_tpl
echo   start-all.bat
echo.
pause
