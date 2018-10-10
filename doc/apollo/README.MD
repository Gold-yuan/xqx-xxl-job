

# Apollo 安装文档

[TOC]

### 将sql文件导入数据库中

```
xxl-job-table.sql文件存在于xqx-xxl-job目录doc下apollo文件夹下，与readme.md在同目录下。
```

![1537867578636](C:\Users\IBM_AD~1\AppData\Local\Temp\1537867578636.png)

#### 导入ApolloConfigDB步骤

1、输入mysql -u root -p进入到mysql数据库

![1537840832521](C:\Users\IBM_AD~1\AppData\Local\Temp\1537840832521.png)

2、输入source 文件路径，按回车键

![1537867693831](C:\Users\IBM_AD~1\AppData\Local\Temp\1537867693831.png)

3、导入完成后查看导入的表是否导入正确;

```
use ApolloConfigDB;

show tables;
```



![1537867922568](C:\Users\IBM_AD~1\AppData\Local\Temp\1537867922568.png)

一共导入15张表，数据库导入完成。

#### 导入ApolloPortalDB步骤

导入ApolloPortalDB步骤和导入ApolloConfigDB步骤相同

查看导入表是否成功

```
use ApolloPortalDB;

show tables;
```

![1537867905448](C:\Users\IBM_AD~1\AppData\Local\Temp\1537867905448.png)

### 启动apollo

将xqx-xxl-job项目doc下apollo文件夹的.zip包放到目录下（以linux为例）

![1537868772102](C:\Users\IBM_AD~1\AppData\Local\Temp\1537868772102.png)

```
在apollo-portal文件夹下放apollo-portal-1.1.0-SNAPSHOT-github.zip

在apollo-configservice文件夹下放apollo-configservice-1.1.0-SNAPSHOT-github.zip

在apollo-adminservice文件夹下放apollo-adminservice-1.1.0-SNAPSHOT-github.zip
```

分别解压zip文件，解压后的目录如下

![1537869047190](C:\Users\IBM_AD~1\AppData\Local\Temp\1537869047190.png)

其他解压后的文件也相同

#### 启动apollo

__以下启动顺序不能改变__

1、进入到apollo-configservice/scripts目录下

![1537869143942](C:\Users\IBM_AD~1\AppData\Local\Temp\1537869143942.png)

```
输入./startup.sh回车即可
```

![1537869209813](C:\Users\IBM_AD~1\AppData\Local\Temp\1537869209813.png)

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

![1537869521428](C:\Users\IBM_AD~1\AppData\Local\Temp\1537869521428.png)