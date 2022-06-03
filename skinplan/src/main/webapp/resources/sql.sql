CREATE TABLE skin_type(
 skin_id NUMBER(3),
 skin_type VARCHAR2(10) NOT NULL,
 skin_con VARCHAR2(30) NOT NULL,
 CONSTRAINT skin_id_pk PRIMARY KEY(skin_id));
 
CREATE TABLE symptom(
 symptom_id NUMBER(3),
 symptom VARCHAR2(10) NOT NULL,
 main_img VARCHAR2(999) NOT NULL,
 symptom_con VARCHAR2(50) NOT NULL,
 CONSTRAINT sym_id_pk PRIMARY KEY(symptom_id));
 
CREATE TABLE ingredient(
 ingredient_id NUMBER(3),
 ingredient VARCHAR2(10) NOT NULL,
 ingre_con VARCHAR2(30) NOT NULL,
 CONSTRAINT ingredient_id_pk PRIMARY KEY(ingredient_id));

CREATE TABLE user_info(
 email VARCHAR2(30),
 user_name VARCHAR2(10) NOT NULL,
 user_pwd VARCHAR2(20) NOT NULL,
 user_tel VARCHAR2(15),
 skin_id NUMBER(3),
 CONSTRAINT user_email_pk PRIMARY KEY(email),
 CONSTRAINT user_skin_fk FOREIGN KEY(skin_id) REFERENCES skin_type(skin_id));
 
CREATE TABLE test_img(
 test_id NUMBER(3),
 front VARCHAR2(999) NOT NULL,
 left VARCHAR2(999) NOT NULL,
 right VARCHAR2(999) NOT NULL,
 email VARCHAR2(30) NOT NULL,
 CONSTRAINT test_id_pk PRIMARY KEY(test_id),
 CONSTRAINT test_email_fk FOREIGN KEY(email) REFERENCES user_info(email));
 
CREATE TABLE community(
 comm_id NUMBER(3),
 title VARCHAR2(15) NOT NULL,
 content VARCHAR2(200) NOT NULL,
 email VARCHAR2(30) NOT NULL,
 img1 VARCHAR2(999),
 img2 VARCHAR2(999),
 img3 VARCHAR2(999),
 score NUMBER(3) NOT NULL,
 CONSTRAINT comm_id_pk PRIMARY KEY(comm_id),
 CONSTRAINT comm_email_fk FOREIGN KEY(email) REFERENCES user_info(email));
 
CREATE TABLE reply(
 reply_id NUMBER(3),
 comm_id NUMBER(3) NOT NULL,
 reply VARCHAR2(50) NOT NULL,
 email VARCHAR2(30) NOT NULL,
 CONSTRAINT reply_id_pk PRIMARY KEY(reply_id),
 CONSTRAINT reply_comm_id_fk FOREIGN KEY(comm_id) REFERENCES community(comm_id),
 CONSTRAINT reply_email_fk FOREIGN KEY(email) REFERENCES user_info(email));
 
CREATE TABLE cosmetic(
 cos_id NUMBER(3),
 cos_name VARCHAR2(20) NOT NULL,
 price NUMBER(38) NOT NULL,
 brand VARCHAR2(10) NOT NULL,
 ingredient_id NUMBER(3) NOT NULL,
 cos_img VARCHAR2(999) NOT NULL,
 CONSTRAINT cosmetic_id_pk PRIMARY KEY(cos_id),
 CONSTRAINT cosmetic_ingre_fk FOREIGN KEY(ingredient_id) REFERENCES ingredient(ingredient_id));

 
SELECT * FROM user_info;
SELECT * FROM skin_type;
SELECT * FROM SYMPTOM;
SELECT * FROM COMMUNITY;
SELECT * FROM reply;
SELECT * FROM cosmetic;
SELECT * FROM test_img;
SELECT * FROM INGREDIENT;
    