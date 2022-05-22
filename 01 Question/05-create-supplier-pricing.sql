create table if not exists supplier_pricing(
 PRICING_ID INT primary key,
 PRO_ID INT not null,
 foreign key(PRO_ID) references product(PRO_ID),
 SUPP_ID INT not null,
 foreign key(SUPP_ID) references supplier(SUPP_ID),
 SUPP_PRICE INT default 0);
