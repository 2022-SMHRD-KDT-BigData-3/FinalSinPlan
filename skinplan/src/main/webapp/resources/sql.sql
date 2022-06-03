-- 회원 테이블
-- 성별 컬럼에 남자가 0, 여자가 1
CREATE TABLE member(
 email VARCHAR2(30),
 password VARCHAR2(20) NOT NULL,
 user_name VARCHAR2(10) NOT NULL,
 gender VARCHAR2(2) NOT NULL,
 user_tel VARCHAR2(15),
 join_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT user_email_pk PRIMARY KEY(email),
 CONSTRAINT gender_ck CHECK(gender IN('0','1')));
 
select * from member;
insert into member values('abc','123','abc','1','123456789',sysdate);