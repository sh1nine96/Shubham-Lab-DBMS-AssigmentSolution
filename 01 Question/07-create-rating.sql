create table rating(
 RAT_ID INT not null primary key,
 ORD_ID int not null,
 foreign key(ORD_ID) references orders(ORD_ID) ,
 RAT_RATSTARS int not null);
