drop table tbl_user;

create table tbl_user(
    id number(10), 
    username varchar2(200) not null unique,  
    password varchar2(1000) not null,
    name varchar2(200) not null,
    email varchar2(200),
    phone varchar2(200),
    role varchar2(200),
    constraint user_pk_id primary key(id)
);    

create sequence seq_id;

select * from tbl_user where username='m001';

select * from user_entity;