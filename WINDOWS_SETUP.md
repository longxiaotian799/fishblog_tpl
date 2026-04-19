# FishBlog Windows Docker 启动指南

## 已完成步骤 ✅

1. Docker中间件已成功启动（MySQL、Redis、RabbitMQ、Elasticsearch）
2. 所有容器运行正常

## 中间件访问信息

| 服务 | 地址 | 用户名/密码 |
|------|------|-------------|
| MySQL | 127.0.0.1:3307 | root/123456 |
| Redis | 127.0.0.1:6379 | 无密码 |
| RabbitMQ | http://127.0.0.1:15672 | guest/guest |
| Elasticsearch | http://127.0.0.1:9200 | 无鉴权 |

## 还需要安装的软件

### 1. Maven

项目需要Maven来构建和打包后端项目。

**安装步骤：**

1. 下载Maven: https://maven.apache.org/download.cgi
   - 下载 `apache-maven-3.9.x-bin.zip`
   
2. 解压到安装目录，例如: `C:\Program Files\Apache\maven`

3. 添加环境变量:
   - 右键"此电脑" → "属性" → "高级系统设置" → "环境变量"
   - 在"系统变量"中新建:
     - 变量名: `MAVEN_HOME`
     - 变量值: `C:\Program Files\Apache\maven` (你的安装路径)
   
4. 编辑Path变量，添加: `%MAVEN_HOME%\bin`

5. 验证安装（打开新的命令行窗口）:
   ```cmd
   mvn -version
   ```

### 2. Node.js 和 yarn/npm

如果还没有安装Node.js和yarn：

1. 下载Node.js: https://nodejs.org/
   - 推荐LTS版本

2. 安装yarn（如果已安装npm）:
   ```cmd
   npm install -g yarn
   ```

## 启动项目

### 方式一：使用一键启动脚本（推荐）

安装完Maven后，运行：

```cmd
cd C:\Users\31847\fishblog_tpl
start-all.bat
```

这个脚本会自动：
1. 打包后端项目
2. 启动Spring Boot后端服务
3. 启动前台博客服务
4. 启动后台管理服务

### 方式二：手动启动

#### 1. 启动后端

```cmd
cd C:\Users\31847\fishblog_tpl\blog-springboot

# 打包项目
mvn clean package -DskipTests

# 启动后端
java -jar target\blog-0.0.1.jar --spring.profiles.active=local
```

#### 2. 启动前台博客

```cmd
cd C:\Users\31847\fishblog_tpl\blog-vue\blog

# 安装依赖（首次运行）
yarn install

# 启动服务
yarn serve
```

#### 3. 启动后台管理

```cmd
cd C:\Users\31847\fishblog_tpl\blog-vue\admin

# 安装依赖（首次运行）
npm install

# 启动服务
npm run serve
```

## 访问地址

启动完成后，可以访问：

- **博客前台**: http://127.0.0.1:8081
- **管理后台**: http://127.0.0.1:8082
- **后端API**: http://127.0.0.1:8080
- **Swagger文档**: http://127.0.0.1:8080/doc.html

## 默认账户

- 用户名: 15967777744@qq.com
- 密码: 123456

## 停止Docker容器

```cmd
docker stop fishblog-mysql fishblog-redis fishblog-rabbitmq fishblog-es
```

## 重新启动Docker容器

```cmd
docker start fishblog-mysql fishblog-redis fishblog-rabbitmq fishblog-es
```

## 删除Docker容器（如果需要重新初始化）

```cmd
docker rm -f fishblog-mysql fishblog-redis fishblog-rabbitmq fishblog-es
```
