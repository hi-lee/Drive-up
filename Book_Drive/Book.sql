select * from member;
desc member;
desc bookInfo;
select * from bookInfo;

show tables;

select * from bookInfo where bookWriter like '저자%' order by bookRegDate, asc limit 3,5;

order by BOARD_RE_REF desc, BOARD_RE_SEQ asc limit ?,?";

select * from bookInfo where bookName like '%책이름%' order by bookRegDate asc limit 0, 5;