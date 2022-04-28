CREATE DATABASE mydb2;
use mydb2;


create TABLE Board(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL, 
	body varchar(2000) not null,
    inserted DATETIME NOT NULL DEFAULT NOW()

);
SELECT * FROM Board;

update Board
set inserted = date_sub(inserted, interval 1 day);

