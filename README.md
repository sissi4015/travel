# travel 程序部署说明


基于SpringBoot的旅游网站的设计与实现
功能模块：旅游路线、旅游景点、旅游酒店、旅游车票、旅游保险、旅游策略、订单管理、留言管理、数据分析等等。

##数据库
1.创建mysql数据库，命名为travel，用户名：root	密码：root
2.执行travel.sql脚本，内含表结构及测试数据
PS:如有必要，在application.yml中修改数据库配置

##启动程序
1.idea集成tomcat部署启动

##访问
前台
地址：http://localhost:8080/index
账号：user  密码：123456

后台
地址：http://localhost:8080/login
账号：root  密码：123456

