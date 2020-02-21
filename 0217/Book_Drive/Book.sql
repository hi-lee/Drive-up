show tables;
desc member;
desc bookInfo;
desc rentalIdv;
desc rental;
desc board;
desc cart;
select * from bookInfo where bookNum = 31634;
select * from rentalIdv;
select * from library;
select * from rental;
select * from member;
select * from bookInfo;
select * from cart;

select * from cart left join bookInfo on cart.bookNum = bookInfo.bookNum where memIndex = 7
alter table cart modify cartNum int(11) not null auto_increment;

delete from cart where memIndex = 7 and cartNum = 6

insert into member values(7, 'java', 1111, '테스트', 19900101, 41516, '대구광역시 북구 산격2동 검단로 97', 100, 01000000000, 'test@test.com', '01구0000', 'N')

rollback;
select * from bookInfo where bookNum = 51653
update bookInfo set bookState = 0 where bookNum = 51653;

select * from cart left join bookInfo on cart.bookNum = bookInfo.bookNum where memIndex = 7;

update rentalIdv set renFlag = 'rev' where renIdvNum = 49
update rentalIdv set renReturnDate = now(), renIdvDelFlag = 1 where bookNum = 2


insert into rentalIdv (renIdvNum, renNum, memIndex, bookNum, libCode, renFlag, renBrwDate, renBrwInvDate) values(0, 5, 10, 51615, 'LIB002', 'brw', now(), (now()+INTERVAL 7 DAY));
select * from rentalIdv join bookInfo as a on a.bookNum = rentalIdv.bookNum where memIndex = 7;

insert into rentalIdv (renIdvNum, memIndex, bookNum, libCode, renIdvDelFlag, renFlag,  renBrwDate, renBrwInvDate)

select * from rentalIdv left join bookInfo on rentalIdv.bookNum = bookInfo.bookNum where memIndex = 7;
select * from rentalIdv left join bookInfo on rentalIdv.bookNum = bookInfo.bookNum where memIndex = 7 and renIdvDelFlag = 0

delete from rentalIdv where renIdvNum = 55

select memId, memName from member where memName = '김자바' and memBirth = '19990101'

alter table cart change keepDelFlag cartDelFlag varchar(5)
drop table cart;
create table cart (cartNum int(11) not null auto_increment primary key, bookNum int(11), libCode varchar(10), memIndex varchar(5), cartDelFlag varchar(5))
