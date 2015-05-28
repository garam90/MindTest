
CREATE TABLE member
(
   id         VARCHAR2 (50) PRIMARY KEY,
   password   VARCHAR2 (100) NOT NULL,
   name       VARCHAR2 (30),
   grade      VARCHAR2 (50)
);

drop table member;

select * from member;

drop table board;
drop sequence board_no_seq;

CREATE TABLE board
( 
no           NUMBER(8),
title        VARCHAR2(200) NOT NULL,
content      VARCHAR2(4000) NOT NULL,
member_id    VARCHAR2(50),
member_name  VARCHAR2(30),
view_cnt     NUMBER(10),
reg_date     DATE NOT NULL
) ;

drop table board;

ALTER TABLE board
ADD ( CONSTRAINT board_no_pk PRIMARY KEY ( no ) );


CREATE SEQUENCE board_no_seq
 START WITH     1
 INCREMENT BY   1
 MAXVALUE       99999999
 NOCACHE
 NOCYCLE;
 
CREATE TABLE GUESTBOOK (
  NO NUMBER(20) NOT NULL,
  NAME VARCHAR2(20) NOT NULL, 
  PASSWORD VARCHAR2(50) NOT NULL,
  MESSAGE VARCHAR2(2000) NOT NULL,
  REG_DATE DATE,
  PRIMARY KEY (NO) 
);

CREATE SEQUENCE GUESTBOOK_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 9999999
NOCACHE
NOCYCLE;
