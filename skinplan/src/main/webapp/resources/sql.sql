CREATE TABLE member(
 email VARCHAR2(30),
 password VARCHAR2(20) NOT NULL,
 mem_name VARCHAR2(10) NOT NULL,
 nickname VARCHAR2(15) NOT NULL,
 gender VARCHAR2(2) NOT NULL,
 mem_tel VARCHAR2(15) NOT NULL,
 join_date DATE DEFAULT SYSDATE NOT NULL,
 CONSTRAINT mem_email_pk PRIMARY KEY(email),
 CONSTRAINT mem_nick_uq UNIQUE(nickname),
 CONSTRAINT mem_gender_ck CHECK(gender IN('0','1')));
 
create table board(
 bno number(10,0),
 title varchar2(100),
 content varchar2(2000),
 skintype number(10),
 primary key(bno)
);
alter table board add(nickname varchar2(15));
ALTER TABLE board ADD(CONSTRAINT board_nick_fk FOREIGN KEY(nickname) REFERENCES member(nickname));

ALTER TABLE board ADD(CONSTRAINT board_skintype_fk FOREIGN KEY(skintype) REFERENCES skin_type(skin_id));
insert into board values (1,'제목','내용','1');
create table tbl_attach(
 uuid varchar2(100) not null,
 uploadPath varchar2(200) not null,
 fileName varchar2(100) not null,
 filetype char(1) default 'I',
 bno number(10,0),
 primary key(uuid)
);
alter table tbl_attach add constraint fk_board_attach foreign key (bno) references board(bno);
select * from test_img;

create table img_board(
 ino number(10,0),
 img varchar2(100),
 email varchar2(30),
 test_date date default sysdate not null,
 primary key(ino)
);
alter table img_board add constraint fk_iboard_img foreign key (email) references member(email);
create sequence seq_tboard;
create table t_attach(
 uuid varchar2(100) not null,
 uploadPath varchar2(200) not null,
 fileName varchar2(100) not null,
 tiletpye char(1) default 'I',
 test_id number(3),
 primary key(uuid)
);
alter table t_attach add constraint fk_tboard_attach foreign key (test_id) references test_img(test_id);

alter table tbl_attach add constraint pk_attach primary key (uuid);


alter table tbl_attach add constraint fk_board_attach foreign key (uploadPath) references board(bno);
alter table tbl_attach add constraint fk_board_attach foreign key (fileName) references board(bno);
alter table tbl_attach add constraint fk_board_attach foreign key (fileType) references board(bno);
ALTER TABLE board ADD(nickname VARCHAR2(15) NOT NULL);
ALTER TABLE board ADD(CONSTRAINT board_nick_fk FOREIGN KEY(nickname) REFERENCES member(nickname));

ALTER TABLE board ADD(skintype varchar2 NOT NULL);
ALTER TABLE board ADD(CONSTRAINT board_skintype_fk FOREIGN KEY(skintype) REFERENCES skin_type(skin_id));

insert into board values(1,'제목','내용','피부','파일업로드');
DROP TABLE board;
drop table tbl_attach;
drop sequence seq_board;

DROP SEQUENCE board_seq;
drop table board cascade constraints;
create sequence seq_board;
select * from seq_board;

select * from board;
select * from TBL_ATTACH;
select * from MEMBER;
select * from TEST_IMG;
drop table memeber;
drop table board;

insert into member values('123','123','123','123','1','123',sysdate);

DROP TABLE member CASCADE CONSTRAINTS;


select * from test_test;

create sequence test_test_seq;


drop table test1234;

create table test1234(
 test_id number(3) primary key,
 email varchar2(30),
 skin_id number(3,0),
 img blob,
 img2 blob,
 img3 blob,
 test_date date default sysdate
);

alter table test_img rename column front to img1;
alter table test_img rename column left to img2;
alter table test_img rename column right to img3;


alter table test_img add(skin_id number(3) not null, constraint test_skin_fk foreign key(skin_id) references skin_type(skin_id));


select b.title, b.skintype, t.uuid, t.uploadPath, t.fileName, t.filetype
from board b, tbl_attach t
where b.bno = t.bno;


select * from 
select * from test_img;

drop table test123;

create table test123(
 test_idid number(3) primary key,
 img1 blob,
 img2 blob,
 img3 blob,
 img4 blob,
 img5 blob,
 img6 blob,
 img7 blob,
 img_date date default sysdate);

 drop sequence test_img_seq;
 create sequence test_img_seq;
 
 create sequence test_123_seq;
 
 drop table SYMPTOM cascade constraints;
 
 CREATE TABLE symptom(
 symptom_id NUMBER(3),
 symptom VARCHAR2(15) NOT NULL,
 causation VARCHAR2(999) NOT NULL,
 care VARCHAR2(999) NOT NULL,
 CONSTRAINT symptom_id_pk PRIMARY KEY(symptom_id));
 
 alter table symptom modify(causation VARCHAR2(4000));
 alter table symptom modify(care VARCHAR2(4000));
 
INSERT INTO symptom
VALUES(1,"아토피","환경요인, 면역학적 이상반응, 피부장벽의 이상의 복합적 이유로 발생하며 주로 건조한 피부로 인해 발생한다.","알레르기 환경 차단 및 피부열감 낮추고 염증 관리를 하면 자연스럽게 건조한 피부가 완화된다.");
INSERT INTO symptom
VALUES(2,"여드름","피지가 피부 밖으로 배출되지 못하여 모낭에 갇히면서 염증을 일으켜 발생, 주로 호르몬 변화, 세균 감염, 유전적 요인으로 발생한다.","피지가 과도하게 생성되는 것을 막고 유성화장품을 사용을 자제하는 것이 좋다.");
INSERT INTO symptom
VALUES(3,"물집성","바이러스성 질환 으로 스트레스 면역력이 낮아지면 발병하는 경우가 많다.","건드리지 않는것이 중요하며 면역력 관리가 중요하다.");
INSERT INTO symptom
VALUES(4,"모공성","피부노화로 인한 탄력 저하, 과도한 피지, 각질 증가, 자외선 노출, 스트레서 및 갑작스러운 피부 온도 상승등이 원인이다.","ph 지수 가 약 산성인 제품 을 사용하여 ph 밸런스 유지 가 중요하다.");
INSERT INTO symptom
VALUES(5,"정상","정상이다.","정상이다.");

CREATE TABLE dairy(
 dairy_id NUMBER(3),
 email VARCHAR2(30) NOT NULL,
 skin_type VARCHAR2(15) NOT NULL,
 path VARCHAR2(4000) NOT NULL,
 symptom_id NUMBER(3) NOT NULL,
 wr_date DATE DEFAULT SYSDATE,
 CONSTRAINT dairy_id_pk PRIMARY KEY(dairy_id),
 CONSTRAINT symptom_id_fk FOREIGN KEY(symptom_id) REFERENCES symptom(symptom_id));
 
CREATE SEQUENCE dairy_seq;
CREATE SEQUENCE test_img_seq;

drop sequence dairy_seq;
drop sequence test_img_seq;
select * from skin_type;
 SELECT d.dairy_id, d.email, s.symptom, d.wr_date FROM dairy d, symptom s WHERE d.symptom_id = s.symptom_id AND d.email='1234' ORDER BY d.wr_date DESC;
select * from dairy;
select d.wr_date, s.symptom, d.skin_type from dairy d, symptom s where d.email='1234' order by d.wr_date;