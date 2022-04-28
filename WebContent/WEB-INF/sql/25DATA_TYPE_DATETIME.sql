USE mydb1;


create table MyTable8(
	col1 DATE,
    col2 DATETIME

);

INSERT INTO MyTable8(col1) values ('2022-04-28');
select * from MyTable8;

INSERT INTO MyTable8(col2) values ('2022-04-28 11:12:13');
-- 현재사간 보기 now
select now();
INSERT INTO MyTable8(col1,col2) values (now(),now());
