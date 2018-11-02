---
typora-copy-images-to: ipic
---



# Apollo 安装文档

[TOC]

### 将sql文件导入数据库中

```
xxl-job-table.sql文件存在于xqx-xxl-job目录doc下apollo文件夹下，与readme.md在同目录下。
```

![1537867578636](https://ws1.sinaimg.cn/large/006tNbRwly1fwsp7fbwyhj30h008k0tw.jpg)

#### 导入ApolloConfigDB步骤

1、输入mysql -u root -p进入到mysql数据库

![1537840832521](https://ws1.sinaimg.cn/large/006tNbRwly1fwsp8twfs3j30hy05xq47.jpg)

2、输入source 文件路径，按回车键

![1537867693831](https://ws3.sinaimg.cn/large/006tNbRwly1fwspe266ixj309301a0sl.jpg)

3、导入完成后查看导入的表是否导入正确;

```
use ApolloConfigDB;

show tables;
```

![1537867922568](https://ws4.sinaimg.cn/large/006tNbRwly1fwspebgcsnj30f60b2myb.jpg)

一共导入15张表，数据库导入完成。

#### 导入ApolloPortalDB步骤

导入ApolloPortalDB步骤和导入ApolloConfigDB步骤相同

查看导入表是否成功

```
use ApolloPortalDB;

show tables;
```

![1537867905448](https://ws4.sinaimg.cn/large/006tNbRwly1fwspe34d2wj306v0a3751.jpg)

### 环境变量配置

**本地开发**

如果是本地开发，可以在开发工具添加Environment

```
env=DEV
```

**对于Mac/Linux，文件位置为/opt/settings/server.properties**
**对于Windows，文件位置为C:\opt\settings\server.properties**

### 启动apollo

将xqx-xxl-job项目doc下apollo文件夹的.zip包放到目录下（以linux为例）

![1537868772102](https://ws2.sinaimg.cn/large/006tNbRwly1fwspe2h2jbj308803kdfx.jpg)

```
在apollo-portal文件夹下放apollo-portal-1.1.0-SNAPSHOT-github.zip

在apollo-configservice文件夹下放apollo-configservice-1.1.0-SNAPSHOT-github.zip

在apollo-adminservice文件夹下放apollo-adminservice-1.1.0-SNAPSHOT-github.zip
```

分别解压zip文件，解压后的目录如下

![1537869047190](https://ws1.sinaimg.cn/large/006tNbRwly1fwspe9onluj308705w74r.jpg)

**其他解压后的文件也相同**

**如果需要修改数据库连接信息，请修改以下内容**

```
打开apollo-adminservice文件夹下->config->application-github.properties修改数据库连接信息
```

![1539153001275](https://ws2.sinaimg.cn/large/006tNbRwly1fwspe5xqbej306t03kmx7.jpg)

![1539153060792](https://ws4.sinaimg.cn/large/006tNbRwly1fwspeajshzj30sx03baap.jpg)

**apollo-portal和apollo-configservice数据库信息方式修改相同**



#### 启动apollo

__以下启动顺序不能改变__

1、进入到apollo-configservice/scripts目录下

![1537869143942](https://ws3.sinaimg.cn/large/006tNbRwly1fwspe6tt7mj308703pjrf.jpg)

```
输入./startup.sh回车即可
```

![1537869209813](https://ws1.sinaimg.cn/large/006tNbRwly1fwspe8nohlj30hk019wem.jpg)

2、进入到apollo-adminservice/scripts目录下

```
输入./startup.sh回车即可
```

3、进入到apollo-portal/scripts/目录下

```
输入./startup.sh 回车即可
```

#### 访问apollo配置中心

使用http://9.186.54.96:8070/使用admin/admin登录

![1537869521428](https://ws2.sinaimg.cn/large/006tNbRwly1fwspe7wx38j30xp0idq4d.jpg)