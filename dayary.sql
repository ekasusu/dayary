create user hw2460 identified by 12345678;
grant dba to hw2460;

create table diary(
    id number primary key,
    u_id varchar2(15) not null,
    title varchar2(50),
    content clob not null,
    regdate date not null
);
create sequence seq_diary_id;

insert into diary values(seq_diary_id.nextval, 'hw', '첫 번째 일기', '배고프다', systimestamp);
insert into diary values(seq_diary_id.nextval, 'hw', '두 번째 일기', '뭐먹지', systimestamp);