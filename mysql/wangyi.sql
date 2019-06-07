#设置客户端连接的编码
SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS wangyi;
#创建数据库
CREATE DATABASE wangyi CHARSET=UTF8;
#进入该数据库
USE wangyi;

#创建用户数据表
CREATE TABLE users(
	uid INT AUTO_INCREMENT UNIQUE,
	uname VARCHAR(20),
	upwd CHAR(20),
	phone CHAR(11)
);

#往用户数据表插入数据（定义向前台传递的接口）
INSERT INTO users VALUES('1','www178430166@qq.com','waf182dd545..','13533870622');
INSERT INTO users VALUES(NULL,'www1254877418@qq.com','ttf1f5545..','13660132410');
INSERT INTO users VALUES(NULL,'www178430166@qq.com','br18255545..','18320006057');


