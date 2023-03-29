## 1. 项目简介

在疫情依旧严峻的今天，学校保持着严格校园管理制度。对于我们学生来说，每天必不可少的就每日的健康打卡以及外出申请。同时教师也需要核实每日的健康打卡数据以及审批外出申请。所以这个项目的出发点就是为了解决以上这些需求，运用已学的计算机技术结合日常实际来实现这个系统。

## 2. 功能模块
- 疫情数据面板

![image](https://user-images.githubusercontent.com/64343822/228552113-2dbf5b76-a899-443c-9cd5-1b84d885eba5.png)

![image](https://user-images.githubusercontent.com/64343822/228552155-f0eeebe2-0ff7-4f04-8a19-eb0003b1dfdc.png)
- 系统登录、过滤器、密码管理

![image](https://user-images.githubusercontent.com/64343822/228551995-fb288c61-a9a5-48a0-b7b1-36a29b70226c.png)

- 基础信息管理

![image](https://user-images.githubusercontent.com/64343822/228552688-313307d8-15c1-42c7-900b-a30ea52d78f4.png)


- 每日健康打卡

![image](https://user-images.githubusercontent.com/64343822/228552243-66222c0b-5921-42f1-9ba5-7d546ba584da.png)

- 外出申请

![image](https://user-images.githubusercontent.com/64343822/228552270-00781695-5065-479e-b8c3-7786ea9048ba.png)


## 3. 项目架构图

![](https://raw.githubusercontent.com/Gliogz/Photo/master/office/%E6%8A%80%E6%9C%AF%E6%9E%B6%E6%9E%84%E5%9B%BE.png)

## 4. 项目思维导图

![](https://raw.githubusercontent.com/Gliogz/Photo/master/office/%E6%80%9D%E7%BB%B4%E5%AF%BC%E5%9B%BE.png)

## 5. 安装说明

### 5.1 IDE安装

1. IDEA：[官方下载](https://www.jetbrains.com/zh-cn/idea/download/#section=windows)

### 5.2 环境安装

#### 5.2.1 Docker下部署

#### Docker&Dokcer-Compose环境安装

1. 下载docker-ce的repo

```
curl https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo
```

2. 安装依赖

```
yum install https://download.docker.com/linux/fedora/30/x86_64/stable/Packages/containerd.io-1.2.6-3.3.fc30.x86_64.rpm
```

3. 安装docker-ce

```
yum install -y docker-ce
```

4. 启动docker

```
systemctl start docker
```

5. 开启自动docker

```
systemctl enable docker
```

6. 安装docker-compose

```
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`- `uname -m` -o /usr/local/bin/docker-compose
```

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

7. 添加操作权限

```
sudo chmod +x /usr/local/bin/docker-compose
```

8. 设置快捷

```
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
```

9. 查看docker-compose 版本

```
docker-compose --version
```

#### Mysql安装

- 下载MySQL`8的docker镜像：

```
docker pull mysql:8
```

- 使用如下命令启动MySQL服务：

```
docker run -p 3306:3306 --name mysql \
-v /mydata/mysql/log:/logs \
-v /mydata/mysql/data:/var/lib/mysql \
-v /mydata/mysql/conf:/etc/mysql/conf.d \
-e MYSQL_ROOT_PASSWORD=123456  \
-d mysql:8
```

- 参数说明：
  - -p 3306:3306：将容器的3306端口映射到主机的3306端口
  - -v /mydata/mysql/conf:/etc/mysql/conf.d：将配置文件夹挂在到主机
  - -v /mydata/mysql/log:/logs：将日志文件夹挂载到主机
  - -v /mydata/mysql/data:/var/lib/mysql/：将数据文件夹挂载到主机
  - -e MYSQL_ROOT_PASSWORD=root：初始化root用户的密码

- 进入运行MySQL的docker容器：

```
docker exec -it mysql /bin/bash
```

- 使用MySQL命令打开客户端：

```
mysql -uroot -proot --default-character-set=utf8
```

- 创建一个`admin:123456`帐号并修改权限，使得任何ip都能访问：

```
grant all privileges on *.* to 'admin' @'%' identified by '123456';
```

#### Redis安装

- 下载Redis的docker镜像：

```
docker pull redis:5.0
```

- 使用如下命令启动Redis服务：

```
[root@VM-16-17-centos mydata]#mkdir redis
[root@VM-16-17-centos mydata]#cd redis

[root@VM-16-17-centos redis]#docker run -p 6379:6379 --name redis \
-v $PWD/data:/data \
-d redis:5.0 redis-server --appendonly yes
```

- 参数说明：
  - redis redis-server：redis 代表着 redis 镜像 redis-server 表示的是执行的命令，也是就 redis 的启动命令
  - --appendonly yes：开启 AOF 持久化

- 进入Redis容器使用`redis-cli`命令进行连接：

```
docker exec -it redis redis-cli
```

#### Nacos安装

- 拉取nacos-server镜像

```
docker pull nacos/nacos-server:2.0.3
```

- 创建数据库

MySQL创建数据库名为nacos_config

并导入官方脚本 [nacos-db.sql](https://github.com/alibaba/nacos/blob/1.4.0/config/src/main/resources/META-INF/nacos-db.sql)

- 创建挂载

```
mkdir -p /home/nacos/logs                  
mkdir -p /home/nacos/init.d          
touch /home/nacos/init.d/custom.properties
```

- 创建并启动容器

```
docker run -d --name nacos --restart=always \
-p 8848:8848 \
-p 9848:9848 \
-p 9849:9849 \
-e MODE=standalone \
-e TZ="Asia/Shanghai" \
-e JVM_XMS=256m \
-e JVM_XMX=256m \
-e SPRING_DATASOURCE_PLATFORM=mysql \
-e MYSQL_SERVICE_HOST=82.157.123.73 \
-e MYSQL_SERVICE_PORT=3306 \
-e MYSQL_SERVICE_DB_NAME=nacos_config \
-e MYSQL_SERVICE_USER=admin \
-e MYSQL_SERVICE_PASSWORD=123456 \
-e MYSQL_DATABASE_NUM=1 \
-v /home/nacos/init.d/custom.properties:/home/nacos/init.d/custom.properties \
-v /home/nacos/logs:/home/nacos/logs \
nacos/nacos-server:2.
```

#### Sentinel安装

- 拉取镜像

```
docker pull bladex/sentinel-dashboard:1.8.0
```

- 启动

```
docker run  -d --name sentinel \
-p 8858:8858 \
bladex/sentinel-dashboard:1.8.0
```

- 访问

访问控制台

- 地址：http://ip:8858/
- 账号：sentinel
- 密码：sentinel

#### 5.2.2 windows环境

JDK安装：[官方下载](https://www.oracle.com/java/technologies/downloads/)

Maven安装：[官方下载](https://maven.apache.org/download.cgi)


