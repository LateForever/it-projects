@=================================@

Instrukcja odpalania pliku inserts.txt

Na początek należy odpalić sam alter który jest na samej gorze tego pliku.
Następnie należy odpalać POJEDYŃCZO inserty w kolejności takiej jakiej są w tym pliku.
Zmiana kolejności spowoduje błędy i nie będzie można dodać pozostałych insertów.

@=================================@

ALTER TABLE RESERVATION ALTER COLUMN ends DROP NOT NULL;

INSERT INTO WORKER_ROLE(worker_role)
VALUES 
('kucharz'),
('szef kuchni'),
('kelner'),
('pomoc kuchenna'),
('sprzątacz'),
('dostawca')

INSERT INTO LOCAL_ADDRESS(city, street, post_code, building_number)
VALUES 
('Warszawa', 'Jana pawła', '01-561', '19D'),
('Warszawa', 'Kazimierza Grodeckiego', '01-721', '72'),
('Warszawa', 'Lindego', '02-651', '7'),
('Warszawa', 'Marszałkowska', '01-721', '21'),
('Warszawa', 'Mazowiecka', '01-241', '201A')

INSERT INTO USER_ROLES(user_role)
VALUES 
(0),
(1)

INSERT INTO ACCOUNTS(login, password, email, role_id)
VALUES
('b36df7ef6bd845cfeff845c6d643f99f45b85a71e1a27abb023bbf43a6e29a05', 'c21e24496f17af93f9a5971dbeb777d698713981d23642ce1760c2529349ca8a', 'przyklad@gmail.com', 1),
('964fee29d582ce4a1393cd04028a20190731a4f8755c110d63300594e5647ee2', '159731cd07b131b5609f18824e1938fef37d75b3cfa6c7d208b41d1ea5d0b5be', 'przyklad1@gmail.com', 1),
('a7777e2282472c46df0421aa6fc0633a66238853d89d86b5a6cb476334f80d18', '9ff2d97645a04eb1db239111a402627ce936bba311bd389c922bf325149d8fa9', 'przyklad2@gmail.comprzyklad1@gmail.comprzyklad1@gmail.com', 1),
('a2f0302a89b3f0ca67c617dbda438e4cc55bda91acaab926a7fe9bf25e3bf08f', '14b793144d9f458c1bed9c2a054683daabc4422d3340757740c86e0611360e8e', 'przyklad3@gmail.comprzyklad1@gmail.com', 1),
('5e3ddcbd00d458bf106d6381daab3187ebe67c83f1b44c775e9637e2cbcedc37', '00f6f721c5b6f56a8354618d17c2ae3a806d9e79940e127c84c1fcb6d2df7a64', 'przyklad4@gmail.com', 1),
('c4874b41c43e6e01db9637e7b6984820e4a39ca02a8733caa9be2da83f3da67f', '2fedc17f93c9a021c4b6041a484109da4a57f522530ed060d9185bc53a5a0e52', 'przyklad5@gmail.com', 2),
('b193696f3cb30e343bb481907bf06caeb90d4a1d8b5b447953cdc8f88d2f517d', 'ad3ec5517418d7c9403c99b07deb231c0d08482a12480aed11cc17be7020576e', 'przyklad6@gmail.com', 2),
('6b327872147847c0e084404f1595642713ed7417b2cdb304ba8092b9a0dffff6', '52ce4656e09497ef9759c73d16d48581358c761efea0b994b43f3a6f238f3bcb', 'przyklad7gmail.com', 2),
('fcae3f3953ad0968d7c8f6b443393f6be0364b4d3e2abe28e4e0b5b4fb27e9e0', '5832f54b91d8988d917ed04d787edaad01a1c89563cd12ca88bf030ac873bc05', 'przyklad8@gmail.com', 2),
('f62b0f5713c4ee2673d7c6db8009d3752d71f20d11123f74587d67bd19c3e8ba', '50492acc59cdca57e9a13392c197d206bc584b47933b64cb0e3a1e8275c74bc9', 'przyklad9@gmail.com', 2)

INSERT INTO LOCAL (account_id, phone, local_address_id)
VALUES
(1, '781902561', 1),
(2, '781902562', 2),
(3, '781902563', 3),
(4, '781902564', 4),
(5, '781902565', 5)

INSERT INTO WORKER(name, surname, email, pesel, employment_day, hired_to, worker_role_id, local_id)
VALUES 
('Mariusz', 'Pudzianowski', 'pudzian@gmail.com', '89178256710', '07.11.2022', '07.11.2023', 1, 1),
('Jan', 'Paweł', 'janpawel@gmail.com', '89178256711', '09.02.2022', '01.08.2023', 1, 1),
('Bill', 'Gates', 'bill@gmail.com', '89178256712', '11.05.2022', '02.09.2023', 2, 1),
('Elon', 'Musk', 'elon@gmail.com', '89178256713', '01.01.2022', '01.01.2023', 3, 2)

INSERT INTO WORKER(name, surname, email, pesel, worker_role_id, local_id)
VALUES 
('Jeff', 'Bezos', 'jeff@gmail.com', '89178256714', 3, 2),
('Michael', 'Jordan', 'michael@gmail.com', '89178256715', 6, 4),
('Max', 'Verstappen', 'max@gmail.com', '89178256716', 5, 4)

INSERT INTO WORKER_LOCALS(worker_id, local_id)
VALUES 
(4, 5),
(4, 6),
(3, 2)

INSERT INTO MEAL_CATEGORY(meal_category_name)
VALUES 
('śniadanie'),
('dania główne'),
('dzieci'),
('napoje'),
('alkohole'),
('desery'),
('przystawki')

INSERT INTO MEAL(name, category_id, price)
VALUES
('Jajecznica', 1, 20.99),
('Jajko sadzone', 1, 15.99),
('Tosty', 1, 12.99),
('Stek wołowy', 2, 49.99),
('Schabowy', 2, 30.99),
('Filet z dorsza', 2, 28.99),
('Frytki z keczupem', 3, 20.99),
('Naleśniki', 3, 32.99),
('Kluski śląskie', 3, 24.99),
('Cola', 4, 4.99),
('Woda gazowana', 4, 6.99),
('Woda niegazowana', 4, 6.99),
('Wódka', 5, 20.99),
('Bimber', 5, 79.99),
('Spirytus', 5, 119.99),
('Lody owocowe', 6, 39.99),
('Lody orzechowe', 6, 49.99),
('Lody na słodko', 6, 49.99),
('Pieczone bułki czosnkowe', 7, 20.00),
('Śledź w czterech sosach', 7, 24.00),
('Tatar z jajkiem', 7, 17.99)

INSERT INTO local_desks(table_number, busy, seats_number, local_id)
VALUES
(1, 'wolny', 4, 1),
(2, 'wolny', 6, 1),
(3, 'wolny', 4, 2),
(4, 'zajęty', 4, 1),
(5, 'zajęty', 2, 2),
(6, 'zajęty', 2, 2),
(7, 'zajęty', 4, 2),
(8, 'zajęty', 8, 1)

INSERT INTO RESERVATION(hour, how_many_people, user_id, local_id, reservation_date)
VALUES 
('15:00:00', 4, 6, 1, '2022-14-08'),
('19:00:00', 8, 6, 1, '2022-13-08'),
('12:00:00', 2, 7, 2, '2022-12-08'),
('21:00:00', 2, 9, 2, '2022-11-08'),
('21:00:00', 4, 9, 2, '2022-11-08')

INSERT INTO RESERVATION_LOCAL_DESKS(local_desks_id, reservation_id)
VALUES 
( 6, 4),
( 7, 5)

INSERT INTO USER_ORDER(reservation, price)
VALUES 
( 1, 144.96),
( 3, 209.94)

INSERT INTO MEAL_USER_ORDER(user_order_id, meal_id)
VALUES
(1, 4),
(1, 4),
(1, 10),
(1, 17),
(2, 4),
(2, 4),
(2, 4),
(2, 4),
(2, 10),
(2, 10)