DROP TABLE IF EXISTS T_USER;

CREATE TABLE T_USER (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  USERNAME VARCHAR(64),
  PASSWORD VARCHAR(64),
  ADMIN VARCHAR(5),
  CREATETIME TIMESTAMP,
  DESC VARCHAR(512)
);

INSERT INTO T_USER  VALUES(0, 'admin', 'admin', 'true', now(),'admin');