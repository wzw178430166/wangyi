#���ÿͻ������ӵı���
SET NAMES UTF8;
#�������ݿ�
DROP DATABASE IF EXISTS wangyi;
#�������ݿ�
CREATE DATABASE wangyi CHARSET=UTF8;
#��������ݿ�
USE wangyi;

#�����û����ݱ�
CREATE TABLE users(
	uid INT AUTO_INCREMENT UNIQUE,
	uname VARCHAR(20),
	upwd CHAR(20),
	phone CHAR(11)
);

#���û����ݱ�������ݣ�������ǰ̨���ݵĽӿڣ�
INSERT INTO users VALUES('1','www178430166@qq.com','waf182dd545..','13533870622');
INSERT INTO users VALUES(NULL,'www1254877418@qq.com','ttf1f5545..','13660132410');
INSERT INTO users VALUES(NULL,'www178430166@qq.com','br18255545..','18320006057');


