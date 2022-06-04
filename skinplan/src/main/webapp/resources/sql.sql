-- 회원정보를 저장하는 테이블
-- 성별 : '0'=남, '1'=여
CREATE TABLE member(
 email VARCHAR2(30),
 password VARCHAR2(20) NOT NULL,
 mem_name VARCHAR2(10) NOT NULL,
 nickname VARCHAR2(15) NOT NULL,
 gender VARCHAR2(2) NOT NULL,
 mem_tel VARCHAR2(15) NOT NULL,
 join_date DATE DEFAULT SYSDATE NOT NULL,
<<<<<<< HEAD
 CONSTRAINT mem_email_pk PRIMARY KEY(email),
 CONSTRAINT mem_gender_ck CHECK(gender IN('0','1')));

-- 증상
CREATE TABLE symptom(
 symptom_id NUMBER(3),
 symptom VARCHAR2(10) NOT NULL,
 CONSTRAINT sym_id_pk PRIMARY KEY(symptom_id));
 
-- 피부 타입
CREATE TABLE skin_type(
 skin_id NUMBER(3),
 skin_type VARCHAR2(10) NOT NULL,
 CONSTRAINT skin_id_pk PRIMARY KEY(skin_id));

-- 성분
CREATE TABLE ingredient(
 ingredient_id NUMBER(3),
 ingredient VARCHAR2(10) NOT NULL,
 CONSTRAINT ingredient_id_pk PRIMARY KEY(ingredient_id));
 
-- 게시물
CREATE TABLE community(
 comm_id NUMBER(3),
 title VARCHAR2(15) NOT NULL,
 content VARCHAR2(200) NOT NULL,
 email VARCHAR2(30) NOT NULL,
 img1 BLOB,
 img2 BLOB,
 img3 BLOB,
 score NUMBER(3) NOT NULL,
 comm_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT comm_id_pk PRIMARY KEY(comm_id),
 CONSTRAINT comm_email_fk FOREIGN KEY(email) REFERENCES member(email));
 
-- 댓글
CREATE TABLE reply(
 reply_id NUMBER(3),
 comm_id NUMBER(3) NOT NULL,
 reply VARCHAR2(50) NOT NULL,
 email VARCHAR2(30) NOT NULL,
 reply_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT reply_id_pk PRIMARY KEY(reply_id),
 CONSTRAINT reply_comm_id_fk FOREIGN KEY(comm_id) REFERENCES community(comm_id),
 CONSTRAINT reply_email_fk FOREIGN KEY(email) REFERENCES member(email));
 
-- 진단에 사용할 사진 저장
CREATE TABLE test_img(
 test_id NUMBER(3),
 front BLOB NOT NULL,
 left BLOB NOT NULL,
 right BLOB NOT NULL,
 email VARCHAR2(30) NOT NULL,
 test_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT test_id_pk PRIMARY KEY(test_id),
 CONSTRAINT test_email_fk FOREIGN KEY(email) REFERENCES member(email));
 
-- 증상에 따라 보여줄 케어루틴
CREATE TABLE care_routine(
 routine_id NUMBER(3),
 symptom_id NUMBER(3) NOT NULL,
 routine_seq NUMBER(3) NOT NULL,
 routine VARCHAR2(999) NOT NULL,
 CONSTRAINT routine_id_pk PRIMARY KEY(routine_id));
 
-- 화장품 정보
CREATE TABLE cosmetic(
 cosmetic_id NUMBER(3),
 symptom_id NUMBER(3) NOT NULL,
 cosmetic VARCHAR2(30) NOT NULL,
 price NUMBER(30) NOT NULL,
 brand VARCHAR2(30) NOT NULL,
 ingredient_id NUMBER(3) NOT NULL,
 cosmetic_img BLOB NOT NULL,
 CONSTRAINT cosmetic_id_pk PRIMARY KEY(cosmetic_id),
 CONSTRAINT cosmetic_symptom_id_fk FOREIGN KEY(symptom_id) REFERENCES symptom(symptom_id),
 CONSTRAINT cosmetic_ingredient_id_fk FOREIGN KEY(ingredient_id) REFERENCES ingredient(ingredient_id));
 
-- 추천 목록
CREATE TABLE push(
 push_id NUMBER(3),
 email VARCHAR2(30) NOT NULL,
 cosmetic_id NUMBER(3) NOT NULL,
 push_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT push_id_pk PRIMARY KEY(push_id),
 CONSTRAINT push_email_fk FOREIGN KEY(email) REFERENCES member(email),
 CONSTRAINT push_cosmetic_id_fk FOREIGN KEY(cosmetic_id) REFERENCES cosmetic(cosmetic_id));
 
-- 사용자가 임의로 추천 목록에서 삭제한 화장품
CREATE TABLE pull(
 pull_id NUMBER(3),
 email VARCHAR2(30) NOT NULL,
 cosmetic_id NUMBER(3) NOT NULL,
 CONSTRAINT pull_id_pk PRIMARY KEY(pull_id),
 CONSTRAINT pull_email_fk FOREIGN KEY(email) REFERENCES member(email),
 CONSTRAINT pull_cosmetic_id_fk FOREIGN KEY(cosmetic_id) REFERENCES cosmetic(cosmetic_id));
 
-- 진단 결과와 그에 따른 추천 목록, 증상, 필요 성분 등을 저장할 다이어리(비슷한거)
CREATE TABLE dairy(
 dairy_id NUMBER(3),
 symptom_id NUMBER(3) NOT NULL,
 push_id NUMBER(3) NOT NULL,
 email VARCHAR2(30) NOT NULL,
 skin_id NUMBER(3) NOT NULL,
 routine_id NUMBER(3) NOT NULL,
 ingredient_id NUMBER(3) NOT NULL,
 wr_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT dairy_id_pk PRIMARY KEY(dairy_id),
 CONSTRAINT dairy_symptom_id_fk FOREIGN KEY(symptom_id) REFERENCES symptom(symptom_id),
 CONSTRAINT dairy_push_id_fk FOREIGN KEY(push_id) REFERENCES push(push_id),
 CONSTRAINT dairy_email_fk FOREIGN KEY(email) REFERENCES member(email),
 CONSTRAINT dairy_skin_id_fk FOREIGN KEY(skin_id) REFERENCES skin_type(skin_id),
 CONSTRAINT dairy_routine_id_fk FOREIGN KEY(routine_id) REFERENCES care_routine(routine_id),
 CONSTRAINT dairy_ingredient_id_fk FOREIGN KEY(ingredient_id) REFERENCES ingredient(ingredient_id));

 
 ALTER TABLE community ADD(skin_id NUMBER(3) NOT NULL);
 ALTER TABLE community ADD(CONSTRAINT comm_skin_id_fk FOREIGN KEY(skin_id) REFERENCES skin_type(skin_id));
