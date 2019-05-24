#设置客户端连接的编码
SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS tedu;
#创建数据库
CREATE DATABASE tedu CHARSET=UTF8;
#进入该数据库
USE tedu;
#创建保存部门数据的表
CREATE TABLE dept(
  did SMALLINT PRIMARY KEY AUTO_INCREMENT,
  dname VARCHAR(8) UNIQUE
);
#插入数据
INSERT INTO dept VALUES(10,'研发部');
INSERT INTO dept VALUES(20,'市场部');
INSERT INTO dept VALUES(30,'运营部');
INSERT INTO dept VALUES(40,'测试部');
#创建保存员工数据的表
CREATE TABLE emp(
  eid INT PRIMARY KEY AUTO_INCREMENT,
  ename VARCHAR(8) NOT NULL,
  sex BOOL DEFAULT 0,
  birthday DATE,
  salary DECIMAL(8,2), #999999.99
  deptId SMALLINT,
  FOREIGN KEY(deptId) REFERENCES dept(did)
);
#插入数据
INSERT INTO emp VALUES(NULL,'tom',1,'1990-5-5',6000,20);
INSERT INTO emp VALUES(NULL,'jerry',DEFAULT,'1991-8-5',7000,10);
INSERT INTO emp VALUES(NULL,'david',1,'1995-10-20',3000,30);
INSERT INTO emp VALUES(NULL,'maria',0,'1993-12-5',8000,10);
INSERT INTO emp VALUES(NULL,'leo',1,'1996-5-5',4000,20);
INSERT INTO emp VALUES(NULL,'black',1,'1989-6-5',10000,30);
INSERT INTO emp VALUES(NULL,'peter',1,'1990-12-3',12000,20);
INSERT INTO emp VALUES(NULL,'franc',1,'1996-5-5',8000,10);
INSERT INTO emp VALUES(NULL,'lucy',0,'1986-5-5',5500,30);
INSERT INTO emp VALUES(NULL,'Tacky',1,'1984-5-5',8000,10);
INSERT INTO emp VALUES(NULL,'jone',1,'1993-5-5',6500,20);

INSERT INTO emp VALUES(NULL,'king',0,'1993-5-5',7500,10);
INSERT INTO emp VALUES(NULL,'richard',1,'1992-8-5',13500,20);
INSERT INTO emp VALUES(NULL,'lily',0,'1996-3-1',15500,30);
INSERT INTO emp VALUES(NULL,'brown',1,'1997-5-5',18500,NULL);
INSERT INTO emp VALUES(NULL,'king',0,'1995-5-5',9500,10);


#SELECT eid,ename,sex,salary FROM emp;

#查询所有的列
#SELECT * FROM emp;

#SELECT eid,ename,sex,birthday,salary,deptld FROM emp;

#SELECT eid AS 编号,ename AS 姓名,sex AS 性别,birthday AS 生日 FROM emp;

#SELECT eid AS a,ename AS b FROM emp;



#指定特定的数据库，存在就替换
DROP DATABASE IF EXISTS wangyi;
#创建数据库
CREATE DATABASE wangyi;
USE wangyi;


#创建用户数据表
CREATE TABLE users(
	uid INT AUTO_INCREMENT UNIQUE,
	uname VARCHAR(20),
	upwd CHAR(20),
	phone CHAR(11)
);

#往用户数据表插入数据（定义向前台传递的接口）
INSERT INTO users VALUES('1','www178430166@qq.com','waf18255545..','18320006057'); 
INSERT INTO users VALUES(NULL,'www178430166@qq.com','waf18255545..','18320006057'); 
INSERT INTO users VALUES(NULL,'www178430166@qq.com','waf18255545..','18320006057'); 


