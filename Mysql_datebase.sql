create database  shoot_proj_demo;

create table Customer(
     customerId int auto_increment primary key,
     customerUsername varchar(20),
     customerPwd varchar(20),
     customerName varchar(20),
     customerSex varchar(4),
	 customerPhone varchar(20),
     customerAddress varchar(200)
    );
    
    
insert into customer
(customerId,customerUsername,customerPwd,customerName,customerSex,customerPhone,customerAddress)
values
(2,'customer1','1234','lala001','男','18877958018','广西');






create table Orders(
	orderId int auto_increment primary key,
    customerUsername varchar(20),
    customerName varchar(20),
	customerPhone varchar(20),
	customerAddress varchar(200),
    goodsId int ,
    goodsName varchar(200),
    price decimal(5,1),
    goodsNum int,
    ordersDate date
);

select * from orders;

delete from category where categoryId = 5;

/*drop table category；*/



/*select g.goodsId,g.goodsName,g.price,g.address,g.produceDate,g.picture,c.categoryId,c.categoryName
        from goods g
                 join category c
                      on g.categoryId = c.categoryId
        where c.categoryId = 2；
        
     */   
        
create table category(
	categoryId int auto_increment primary key,
    categoryName varchar(200),
);

create table users(
	userId int auto_increment primary key,
    userName varchar(20),
    passward varchar(20),
    flag int
);


create table goods(
     goodsId int auto_increment primary key,
     goodsName varchar(200),
     price numeric(5,1),
     address varchar(200),
     produceDate date,
     picture varchar(200),
     categoryId int,
     foreign key(categoryId)
     references category(categoryId)
     );