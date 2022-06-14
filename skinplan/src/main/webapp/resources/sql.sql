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
 bno number(10,0)
);
alter table tbl_attach add constraint pk_attach primary key (uuid);
alter table tbl_attach add constraint fk_board_attach foreign key (bno) references board(bno);
ALTER TABLE board ADD(nickname VARCHAR2(15) NOT NULL);
ALTER TABLE board ADD(CONSTRAINT board_nick_fk FOREIGN KEY(nickname) REFERENCES member(nickname));

ALTER TABLE board ADD(skin_id NUMBER(3) NOT NULL);
ALTER TABLE board ADD(CONSTRAINT board_skin_id_fk FOREIGN KEY(skin_id) REFERENCES skin_type(skin_id));

select * from BOARD;
insert into board values(1,'제목','내용','피부','파일업로드');
DROP TABLE board;
drop table tbl_attach;
DROP SEQUENCE board_seq;
drop table board cascade constraints;
create sequence seq_board;
select * from board;
select * from TBL_ATTACH;
select * from MEMBER;
drop table board;

