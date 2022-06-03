CREATE TABLE skin_type(
 skin_id NUMBER(3),
 skin_type VARCHAR2(10) NOT NULL,
 skin_con VARCHAR2(30) NOT NULL,
 CONSTRAINT skin_id_pk PRIMARY KEY(skin_id));

CREATE TABLE user_info(
 email VARCHAR2(30),
 user_name VARCHAR2(10) NOT NULL,
 user_pwd VARCHAR2(20) NOT NULL,
 user_tel VARCHAR2(15),
 skin_id NUMBER(3),
 CONSTRAINT user_email_pk PRIMARY KEY(email),
 CONSTRAINT user_skin_fk FOREIGN KEY(skin_id) REFERENCES skin_type(skin_id));
 
 select * from user_info;
 select * from skin_type;