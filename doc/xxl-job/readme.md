







# xxl-job-admin安装文档

### 将xxl-job-table.sql 导入到数据库中

xxl-job-table.sql文件存在于xqx-xxl-job目录doc下xxl-job文件夹下，与readme.md在同目录下。

![1537867550013](C:\Users\IBM_AD~1\AppData\Local\Temp\1537867550013.png)



导入步骤

1、输入mysql -u root -p进入到mysql数据库

![1537840832521](C:\Users\IBM_AD~1\AppData\Local\Temp\1537840832521.png)

2、输入source 文件路径，按回车键

![1537840928898](C:\Users\IBM_AD~1\AppData\Local\Temp\1537840928898.png)

3、导入完成后查看导入的表是否导入正确;

	use xxl-job;
	
	show tables;

![1537841064421](C:\Users\IBM_AD~1\AppData\Local\Temp\1537841064421.png)

一共导入16张表，数据库导入完成。

### 部署和启动调度分布中心

1、部署调度分布中心

将xqx-xxl-job目录doc文件夹下的xxl-job-admin-0.0.1-SNAPSHOT.jar包放到服务器中。（我这里以linux为例）

xxl-job-admin-0.0.1-SNAPSHOT.jar放到了/home/xxl-job/目录下

![1537844282718](C:\Users\IBM_AD~1\AppData\Local\Temp\1537844282718.png)

2、启动调度分布中心

	输入nohup java -jar xxl-job-admin-0.0.1-SNAPSHOT.jar 回车即可。

![1537853707566](C:\Users\IBM_AD~1\AppData\Local\Temp\1537853707566.png)

3、访问调度中心

	在浏览器地址输入调度中心地址http://9.186.54.96:9060/  使用admin/123456登录

![1537853887614](C:\Users\IBM_AD~1\AppData\Local\Temp\1537853887614.png)

进入到一下页面，即启动成功。

![1537854076688](C:\Users\IBM_AD~1\AppData\Local\Temp\1537854076688.png)

### 在阿波罗（apollo）平台上配置项目

使用admin/admin 登录apollo平台配置相关信息

1、创建项目

填写xxl-job-admin项目信息，点击提交，完成创建。

![1537858176467](C:\Users\IBM_AD~1\AppData\Local\Temp\1537858176467.png)

配置xxl-job-admin相关信息

创建完成之后，点击xxl-job-admin，进入到配置页面。

![1537858764031](C:\Users\IBM_AD~1\AppData\Local\Temp\1537858764031.png)

点击文本和修改配置，配置信息。

![1537858883680](C:\Users\IBM_AD~1\AppData\Local\Temp\1537858883680.png)

```properties
server.port = 9060           ###调度中心端口号

xxl.job.mail.host = smtp.163.com   ### 报警邮箱服务器
xxl.job.mail.port = 25  ### 报警邮箱端口
xxl.job.mail.ssl = false  ###报警邮箱连接方式
xxl.job.mail.username = ovono802302@163.com  ###报警邮箱用户名
xxl.job.mail.password = asdfzxcv  ###报警邮箱密码
xxl.job.mail.sendNick = 《分布式任务调度平台xxl-job》   ######报警邮箱主题

xxl.job.login.username = admin      ###xxl-job-admin 登录用户名
xxl.job.login.password = 123456    ###xxl-job-admin 登录密码

xxl.job.accessToken =          ###xxl-job-admin token  可空

xxl.job.i18n =                     ###xxl-job-admin i18n 可空

spring.datasource.url = jdbc:mysql://9.186.54.96:3306/xxl-job?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&failOverReadOnly=false&useSSL=false               ###数据库配置spring.datasource.username = root             ###数据库用户名
spring.datasource.password = MySqlPass1!    ###数据库密码
spring.datasource.driver-class-name = com.mysql.jdbc.Driver   ###数据库驱动
spring.mvc.static-path-pattern = /static/*       ###表示所有的访问都经过静态资源路径
spring.mvc.log-resolved-exception = true       ###异常的警告日志记录
spring.mvc.dispatch-options-request = true   ###将选项请求发送给框架
mybatis.mapper-locations = classpath:mapper/.xml        ###扫描xml路径
mybatis.type-aliases-package = com.xxl.job.admin.core.model  ###扫描实体类的路径
mybatis.configuration.map-underscore-to-camel-case = true  ###开启驼峰命名功能

```

2、创建xqx-job-handler项目，点击提交，完成创建。

![1537865010063](C:\Users\IBM_AD~1\AppData\Local\Temp\1537865010063.png)

配置xqx-job-handler相关信息

创建完成之后，点击xqx-job-handler，进入到配置页面。

![1537865055642](C:\Users\IBM_AD~1\AppData\Local\Temp\1537865055642.png)

点击文本和修改配置，配置信息。

![1537865127244](C:\Users\IBM_AD~1\AppData\Local\Temp\1537865127244.png)

```properties
server.port = 8096     ###系统端口，访问端口

eureka.client.serviceUrl.defaultZone = http://9.186.54.96:8080/eureka/    ###注册eureka

spring.application.name = xqx-job-handler        ### 设置服务名称

logging.config = classpath:logback.xml       ###日志配置

xxl.job.admin.addresses = http://9.186.54.96:9060/   ### 调度中心访问地址

xxl.job.executor.appname = xxl-job-executor-sample     ### handler 名称
xxl.job.executor.ip =              ###执行器IP，为空则自动获取
xxl.job.executor.port = 9995       ###执行器端口号

xxl.job.accessToken =           ###访问令牌

xxl.job.executor.logpath = /data/applogs/xxl-job-handler    ###执行器日志路径

xxl.job.executor.logretentiondays = -1        ###日志保存天数，值大于3时生效

```

3、创建xqx-job1项目，点击提交，完成创建。

![1537864342372](C:\Users\IBM_AD~1\AppData\Local\Temp\1537864342372.png)

配置xxl-job-admin相关信息

点击xqx-job1，进入到xqx-job1配置页面

![1537864513224](C:\Users\IBM_AD~1\AppData\Local\Temp\1537864513224.png)

点击文本和修改配置，配置信息

![1537864627734](C:\Users\IBM_AD~1\AppData\Local\Temp\1537864627734.png)

```properties
server.port = 8091  ###系统端口，访问端口

eureka.client.serviceUrl.defaultZone = http://9.186.54.96:8080/eureka/    ###注册eureka

spring.application.name = xqx-job1       ### 设置服务名称

xxl.job.admin.addresses = http://9.186.54.96:9060/   ### 调度中心访问地址
xxl.job.handler.addresses = 127.0.0.1:9995        ###Handler地址

xxl.job.executor.appname = xxl-job-executor-sample     ### 执行器名称
xxl.job.executor.ip =          ###执行器IP，为空则自动获取
xxl.job.executor.port = 8081     ###执行器端口号

xxl.job.accessToken =      ###访问令牌

xxl.job.executor.logpath = /data/applogs/xxl-job/jobhandler     ###执行器日志路径

xxl.job.executor.logretentiondays = -1       ###日志保存天数，值大于3时生效

```

__创建xqx-job2、xqx-job3、xqx-job4、xqx-job5方式和xqx-job1相同__

配置文件不同如下：

```
1、server.port 需要修改  ### 例如：xqx-job2：8092； xqx-job3：8093 等等

2、spring.application.name 需要修改  ### 例如：xqx-job2：xqx-job2； xqx-job3：xqx-job3等等

3、xxl.job.executor.port需要修改   ### 例如：xqx-job2：8082； xqx-job3：8083等等

```

### 启动xqx-job以及handler

1、启动xqx-gateway项目

找到启动类XqxGatewayApplication右键->Run As->Spring Boot App

![1537854872579](C:\Users\IBM_AD~1\AppData\Local\Temp\1537854872579.png)

2、启动Handler项目

打开xqx-job-handler项目下src/main/resources->META-INF->app.properties文件

###### app.id的值和apollo创建xqx-job-handler的应用id相对应

![1537866038598](C:\Users\IBM_AD~1\AppData\Local\Temp\1537866038598.png)

找到启动类ClientHandlerApplication右键->Run As->Spring Boot App

![1537855048184](C:\Users\IBM_AD~1\AppData\Local\Temp\1537855048184.png)

3、启动xqx-job1项目

打开xqx-job-handler项目下src/main/resources->META-INF->app.properties文件

###### app.id的值和apollo创建xqx-job1的应用id相对应

![1537866423031](C:\Users\IBM_AD~1\AppData\Local\Temp\1537866423031.png)

找到启动类XqxOauthApplication右键->Run As->Spring Boot App

![1537855365529](C:\Users\IBM_AD~1\AppData\Local\Temp\1537855365529.png)

__xqx-job2、xqx-job3、xqx-job4、xqx-job5的配置以及启动方式和xqx-job1相同__

![1537933366303](C:\Users\IBM_AD~1\AppData\Local\Temp\1537933366303.png)