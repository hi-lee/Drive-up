show tables;
desc member;
desc bookInfo;
desc rentalIdv;
desc rental;
select * from bookInfo where bookNum = 31634;
select * from rentalIdv;
select * from library;
select * from rental;
select * from member;
select * from bookreninfo;
show tables;
delete from rental where memIndex = 7;
select * from bookInfo where bookWriter like '저자%' order by bookRegDate, asc limit 3,5;
order by BOARD_RE_REF desc, BOARD_RE_SEQ asc limit ?,?";
select * from bookInfo where bookName like '%책이름%' order by bookRegDate asc limit 0, 5;
LOAD DATA INFILE `/Ueser/ys/Documents/test.csv` INTO TABLE bookInfo FIELDS TERMINATED BY `|`;
update bookInfo set bookState=2 where bookNum=31634;
select * from bookInfo where bookNum = 31364
update bookInfo set bookState = 2 where bookNum = 31364;
update rentalIdv set renFlag = 'rev' where renIdvNum = 49
update rentalIdv set renReturnDate = now(), renIdvDelFlag = 1 where bookNum = 2


insert into rental values (0, ?, ?, ?, rev)
insert into rental values (0, 7, '2', 'LIB002', 0);
insert into rentalIdv (renIdvNum, renNum, memIndex, bookNum, libCode, renFlag, renBrwDate, renBrwInvDate) values(0, 5, 10, 51615, 'LIB002', 'brw', now(), (now()+INTERVAL 7 DAY));
select * from rentalIdv join bookInfo as a on a.bookNum = rentalIdv.bookNum where memIndex = 7;
select * from rentalIdv left join bookInfo on rentalIdv.bookNum = bookInfo.bookNum where memIndex = 1;

select * from rentalIdv left join bookInfo on rentalIdv.bookNum = bookInfo.bookNum where memIndex = 7 and renIdvDelFlag = 0

delete from rentalIdv where renIdvNum = 55

select memId, memName from member where memName = '김자바' and memBirth = '19990101'