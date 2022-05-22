create table if not exists product(
 PRO_ID int primary key,
 PRO_NAME varchar(20) not null default "Dummy",
 PRO_DESC varchar(60),
 CAT_ID INT INT NOT NULL,
 FOREIGN KEY(CAT_ID) REFERENCES category(CAT_ID));
