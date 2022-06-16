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
 skintype varchar2(10),
 primary key(bno)
);

create table tbl_attach(
 uuid varchar2(100) not null,
 uploadPath varchar2(200) not null,
 fileName varchar2(100) not null,
 filetype char(1) default 'I',
 bno number(10,0),
 primary key(uuid)
);

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
alter table tbl_attach add constraint fk_board_attach foreign key (bno) references board(bno);

alter table tbl_attach add constraint fk_board_attach foreign key (uploadPath) references board(bno);
alter table tbl_attach add constraint fk_board_attach foreign key (fileName) references board(bno);
alter table tbl_attach add constraint fk_board_attach foreign key (fileType) references board(bno);
ALTER TABLE board ADD(nickname VARCHAR2(15) NOT NULL);
ALTER TABLE board ADD(CONSTRAINT board_nick_fk FOREIGN KEY(nickname) REFERENCES member(nickname));

ALTER TABLE board ADD(skin_id NUMBER(3) NOT NULL);
ALTER TABLE board ADD(CONSTRAINT board_skin_id_fk FOREIGN KEY(skin_id) REFERENCES skin_type(skin_id));

insert into board values(1,'제목','내용','피부','파일업로드');
DROP TABLE board;
drop table tbl_attach;
DROP SEQUENCE board_seq;
drop table board cascade constraints;
create sequence seq_board;
select * from seq_board;
drop sequence seq_board;
select * from board;
select * from TBL_ATTACH;
select * from MEMBER;

drop table memeber;
drop table board;

insert into member values('123','123','123','123','1','123',sysdate);

DROP TABLE member CASCADE CONSTRAINTS;

