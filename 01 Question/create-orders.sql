create table orders(
 ORD_ID int primary key,
 ORD_AMOUNT int not null,
 ORD_DATE date not null,
 CUS_ID INT not null,
 foreign key(CUS_ID) references customer(CUS_ID),
 PRICING_ID int not null,
 foreign key(PRICING_ID) references supplier_pricing(PRICING_ID));
