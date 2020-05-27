create table customer(
	userid int primary key,
	username varchar2(30) not null,
	address varchar2(50) not null,
	phone varchar2(15)not null
);

drop table customer;

select * from customer;

delete from customer where userid = 20180522;


insert into customer(userid, username, address, phone)
	values(001, '홍길동', '서울시 마포구', '010-3323-4567');
insert into customer(userid, username, address, phone)
	values(002, '김길동', '서울시 은평구구', '010-1111-4567');
insert into customer(userid, username, address, phone)
	values(003, '이길동', '경기도 부천시', '010-2222-3333');
insert into customer(userid, username, address, phone)
	values(004, '고길동', '서울시 강동구', '010-4444-5555');
insert into customer(userid, username, address, phone)
	values(005, '박길동', '경기도 하남시', '010-6666-7777');