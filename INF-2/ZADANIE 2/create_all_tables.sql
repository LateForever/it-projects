CREATE TABLE USER_ROLES (
id AUTO_INCREMENT int PRIMARY KEY NOT NULL,
user_role SMALLINT NOT NULL,
CONSTRAINT check_role CHECK ( user_role = 0 OR user_role = 1 )
);

CREATE TABLE ACCOUNTS (
id AUTO_INCREMENT int primary key not null,
login varchar(64) not null,
password varchar(64) not null unique,
email varchar(70) not null unique,
role_id int not null,
foreign key (role_id) references user_roles(id)
);

CREATE TABLE LOCAL_ADDRESS(
id AUTO_INCREMENT int primary key not null,
city varchar(60) not null,
street varchar(60) not null,
post_code varchar(6) not null,
building_number varchar(10) not null
);

CREATE TABLE LOCAL (
id AUTO_INCREMENT int primary key not null,
account_id int not null,
foreign key (account_id) references accounts(id),
phone varchar(15) not null,
local_address_id int not null,
foreign key (local_address_id) references local_address(id)
);

CREATE TABLE WORKER_ROLE (
id AUTO_INCREMENT int primary key not null,
worker_role varchar(60) not null,
constraint check_worker_role CHECK (worker_role IN (
	'kucharz',
	'szef kuchni',
	'kelner',
	'pomoc kuchenna',
	'sprzątacz',
	'dostawca'
))
);

CREATE TABLE WORKER (
id AUTO_INCREMENT int primary key not null,
name varchar(50) not null,
surname varchar(50) not null,
email varchar(70) not null,
pesel varchar(11) not null unique,
employment_day DATE,
hired_to DATE,
worker_role_id int not null,
foreign key (worker_role_id) references worker_role(id),
local_id int not null,
foreign key (local_id) references local(id)
);

CREATE TABLE MEAL_CATEGORY (
id AUTO_INCREMENT int primary key not null,
meal_category_name varchar(60) not null,
constraint ckeck_meal_category_name CHECK ( meal_category_name IN (
	'śniadanie',
	'dania główne',
	'dzieci',
	'napoje',
	'alkohole',
	'desery',
	'przystawki'
))
);

CREATE TABLE MEAL (
id AUTO_INCREMENT int primary key not null,
name varchar(100) not null unique,
category_id int not null,
foreign key (category_id) references meal_category(id),
price float not null
);

CREATE TABLE MENU (
id AUTO_INCREMENT int primary key not null,
meal_id int not null,
local_id int not null,
foreign key (meal_id) references meal(id),
foreign key (local_id) references local(id)
);

CREATE TABLE RESERVATION (
id AUTO_INCREMENT int primary key not null,
hour time not null,
how_many_people smallint not null,
user_id int not null,
local_id int not null,
ends time not null,
reservation_date date not null,
foreign key (user_id) references accounts(id),
foreign key (local_id) references local(id)
);

CREATE TABLE LOCAL_DESKS (
id AUTO_INCREMENT int primary key not null,
table_number smallint not null,
busy varchar(20) not null,
constraint busy_check CHECK ( busy = 'wolny' OR busy = 'zajęty' ),
seats_number smallint not null,
local_id int not null,
foreign key (local_id) references local(id)
);

CREATE TABLE RESERVATION_LOCAL_DESKS (
id AUTO_INCREMENT int primary key not null,
local_desks_id int not null,
reservation_id int not null,
foreign key (local_desks_id) references local_desks(id),
foreign key (reservation_id) references reservation(id)
);

CREATE TABLE WORKER_LOCALS (
id AUTO_INCREMENT int primary key not null,
worker_id int not null,
local_id int not null,
foreign key (worker_id) references worker(id), 
foreign key (local_id) references local(id)
);

CREATE TABLE USER_ORDER (
id AUTO_INCREMENT int primary key not null,
reservation int not null,
price float,
foreign key (reservation) references reservation(id)
);

CREATE TABLE MEAL_USER_ORDER (
id AUTO_INCREMENT int primary key not null,
user_order_id int not null,
meal_id int not null,
foreign key (user_order_id) references user_order(id),
foreign key (meal_id) references meal(id)
);

CREATE TABLE DYNAMIC_PRICING (
id AUTO_INCREMENT int primary key not null,
user_id int not null,
meal_id int not null,
promotion float not null,
foreign key (user_id) references accounts(id),
foreign key (meal_id) references meal(id)
)