USE mydb1;
-- char : 고정길이 문자열
create table MyTable4(
col1 char,
col2 char(1),
col3 char(2),
col4 char(5)
);
desc MyTable4;

select * from MyTable4;

insert into MyTable4 (col1)
value('a');

insert into MyTable4 (col1)
value('an'); -- 안됨

insert into MyTable4 (col3)
values('ab'); -- 됨
insert into MyTable4 (col3)
values('b'); -- 됨

insert into MyTable4 (col4)
values('abcd'); -- 됨
insert into MyTable4 (col4)
values('abcdef'); -- 안됨
insert into MyTable4 (col4)
values('abc'); -- 됨

insert into MyTable4 (col4)
values('가나다라마'); -- 안됨
