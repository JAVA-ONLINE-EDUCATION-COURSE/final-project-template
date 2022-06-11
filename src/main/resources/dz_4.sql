#i Задание 1. Заполнить все таблицы vk

CREATE TABLE users (
id bigint unsigned NOT null auto_increment,
name varchar(50) default NULL,
surname varchar(50) default null,
email varchar(120) default null,
phone bigint default null,
gender char(1) default null,
birthday date default null,
hometown varchar(50) default null,
photo_id bigint unsigned default null,
pass char(50) default null,
created_at datetime default current_timestamp,
primary key (id),
unique key id (id),
unique key email (email),
key phone (phone),
key name (name, surname)
);

INSERT INTO users VALUES (11,'Константин','Карасев','carasev@asdf.qw',85555333098,'m','1963-09-04','Селькупск',602,'16f4e6ac1aedd2d9707b56d767f452f3246e67f7','2020-09-25 22:09:27'),(12,'Евгений','Грачев','dcolquita@ucla.edu',9744906651,'m','1987-11-26','Омск',37,'1487c1cf7c24df739fc97460a2c791a2432df062','2020-09-25 23:20:59'),(13,'Аноним','Анонимов13','anonymous13@anonymous.qw',123123123,'m','2000-01-01','Мирный',NULL,'fdkjgsdflskdjfgsdfg142356214','2020-09-25 22:09:27'),(14,'Фёдор','Иванов','13sss51222jpalfreeman11@example.com',6843424170,'f','2003-01-12','Омск',NULL,'b607f0f3ba714a20ee76785f523585be6fa4a022','2020-09-25 22:09:27'),(15,'Аноним','Анонимов15','anonymous15@anonymous.qw',123123123,'m','2000-01-01','Мирный',NULL,'fdkjgsdflskdjfgsdfg142356214','2020-09-25 22:09:27'),(16,'Аноним','Анонимов16','anonymous16@anonymous.qw',123123123,'m','2000-01-01','Мирный',NULL,'fdkjgsdflskdjfgsdfg142356214','2020-09-25 22:09:27'),(17,'Аноним','Анонимов17','anonymous17@anonymous.qw',123123123,'m','2000-01-01','Мирный',NULL,'fdkjgsdflskdjfgsdfg142356214','2020-09-25 22:09:27'),(18,'Аноним','Анонимов18','anonymous18@anonymous.qw',123123123,'m','2000-01-01','Мирный',NULL,'fdkjgsdflskdjfgsdfg142356214','2020-09-25 22:09:27'),(19,'Аноним','Анонимов19','anonymous19@anonymous.qw',123123123,'m','2000-01-01','Мирный',NULL,'fdkjgsdflskdjfgsdfg142356214','2020-09-25 22:09:27');
select * from users;
insert into users values (10, 'Фома','Шибков', 'shiba@mail.com', 78982134587, 'f', '1978-01-30','Уфа',432,'6f4e6ac1aedd2d9707asfddasg52f3246e67f7','2001-09-21');
update users set name = 'Кирилл', surname = 'Бегемотов' , birthday = '2008-03-14' where id = 13;
update users set name = 'Севастьян', surname = 'Смутьянов' , birthday = '2012-05-15', hometown  = 'Ижевск' where id = 15;
update users set name = 'Антон', surname = 'Абсолютов' , birthday = '2011-11-125', hometown  = 'Костанай' where id = 16;
update users set name = 'Виссарион', surname = 'Замутилов' , birthday = '2002-05-15', hometown  = 'Краснодар' where id = 17;
update users set name = 'Василий', surname = 'Андрокотов' , birthday = '2007-05-08', hometown  = 'Пермь' where id = 18;
update users set name = 'Карина', surname = 'Полупьянова' , birthday = '2003-09-17', hometown  = 'Волгоград' where id = 19;
update users set name = 'Андрей', surname = 'Воробьев' , birthday = '2000-05-31', hometown  = 'Самара' where id = 10;
update users set gender = f where id = 19;

CREATE TABLE profiles(
	user_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	gender ENUM('f', 'm', 'x') NOT NULL,
	birthday DATE NOT NULL,
	photo_id BIGINT UNSIGNED NOT NULL,
	city VARCHAR(130),
	country VARCHAR(130),
	FOREIGN KEY (user_id) REFERENCES users (id)
);
INSERT INTO profiles VALUES (1, 'm', '1997-12-01', 1, 'Moscow', 'Russia');
INSERT INTO profiles VALUES (2, 'm', '1977-02-11', 2, 'Moscow', 'Russia');
select*from profiles;
select*from users;
INSERT INTO profiles VALUES (3, 'm', '1977-02-11', 3, 'Саратов', 'Russia');
INSERT INTO profiles VALUES (4, 'm', '1984-12-21', 22, 'Омск', 'Russia');
INSERT INTO profiles VALUES (5, 'f', '1981-06-10', 2, 'Moscow', 'Russia');
INSERT INTO profiles VALUES (6, 'm', '1992-08-19', 2, 'Kazan', 'Russia');
INSERT INTO profiles VALUES (7, 'm', '1987-03-15', 122, 'Moscow', 'Russia');
INSERT INTO profiles VALUES (8, 'm', '1983-11-29', 345, 'Kazan', 'Russia');
INSERT INTO profiles VALUES (9, 'm', '1967-09-24', 298, 'Selcupsk', 'Russia');
INSERT INTO profiles VALUES (10, 'm', '1999-12-18', 2909, 'Omsk', 'Russia');
INSERT INTO profiles VALUES (11, 'm', '2008-03-14', 3451, 'Mirnyi', 'Russia');
INSERT INTO profiles VALUES (12, 'm', '2003-11-12', 2918, 'Omsk', 'Russia');
INSERT INTO profiles VALUES (13, 'm', '2012-05-15', 21909, 'Ihzevsk', 'Russia');

CREATE TABLE messages (
	id SERIAL PRIMARY KEY, -- BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	body TEXT,
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	is_delivered BOOLEAN DEFAULT FALSE,
	FOREIGN KEY (from_user_id) REFERENCES users (id),
	FOREIGN KEY (to_user_id) REFERENCES users (id)
);

show tables;

INSERT INTO messages VALUES (DEFAULT, 1, 2, 'Hi, Irina!', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 2, 1, 'Hello, Sergej!', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 2, 4, 'Hello, Petr!', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 4, 2, 'Hello, Irina!', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 9, 10, 'How are you, Foma!', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 8, 4, 'Thanks a lot, Petr. Regards, Aleksey', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 11, 13, 'Hello, Kirill!, like to meet you.', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 13, 11, 'Like to meet you, Konstantin!', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 19, 18, 'Hello, Vasilij!', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 18, 19, 'Hello, Karina!', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 19, 18, 'Maybe meet you in evening?', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO messages VALUES (DEFAULT, 18, 19, 'why not, Karina..', DEFAULT, DEFAULT, DEFAULT);
select*from messages;

CREATE TABLE friend_requests(
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	accepted BOOL DEFAULT FALSE,
	PRIMARY KEY(from_user_id, to_user_id),
	FOREIGN KEY (from_user_id) REFERENCES users (id),
	FOREIGN KEY (to_user_id) REFERENCES users (id)
);

INSERT INTO friend_requests VALUES (1, 2, 1);
INSERT INTO friend_requests VALUES (1, 3, 1);
INSERT INTO friend_requests VALUES (3, 1, 1);
INSERT INTO friend_requests VALUES (2, 1, 1);
INSERT INTO friend_requests VALUES (3, 2, 0);
INSERT INTO friend_requests VALUES (11, 13, 1);
INSERT INTO friend_requests VALUES (13, 11, 1);
INSERT INTO friend_requests VALUES (18, 19, 1);
INSERT INTO friend_requests VALUES (19, 18, 1);
INSERT INTO friend_requests VALUES (2, 4, 1);
INSERT INTO friend_requests VALUES (4, 2, 1);
select*from friend_requests;

CREATE TABLE communities(
	id SERIAL,
	name VARCHAR(145) NOT NULL,
	description VARCHAR(255),
	admin_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY(id),
	INDEX communities_name_idx (name),
	CONSTRAINT fk_communities_admin_id FOREIGN KEY (admin_id) REFERENCES users (id)
);

INSERT INTO communities VALUES (DEFAULT, 'Sport', 'Physical activity - normal mesuare of all your life', 1);
INSERT INTO communities VALUES (DEFAULT, 'Stop drinking', 'Anonim alcoholic club', 19);
INSERT INTO communities VALUES (DEFAULT, 'Cousins', "It's all about cooking", 3);
INSERT INTO communities VALUES (DEFAULT, 'Movies', 'TV, Serials, watching cinima', 4);
INSERT INTO communities VALUES (DEFAULT, 'Animal', 'That is wondefull world of Nature', 9);
INSERT INTO communities VALUES (DEFAULT, 'Fashion', "It's all about Fashion in Eroupe", 16);
INSERT INTO communities VALUES (DEFAULT, 'IT technology', 'News about information Technology in the World', 11);
INSERT INTO communities VALUES (DEFAULT, 'Scince and education', 'News of Scince', 17);
INSERT INTO communities VALUES (DEFAULT, 'Music', 'Radio, music chanel, new music clip in the top', 15);
INSERT INTO communities VALUES (DEFAULT, 'Man club', "Man's health, cars, man's fashion", 4);
select*from communities;
update communities set name = 'Travelling', description = 'Countries, trips, vocation, interesting sites of the World' where admin_id = 17;


CREATE TABLE communities_users(
	community_id BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY(community_id, user_id),
	FOREIGN KEY (community_id) REFERENCES communities (id),
	FOREIGN KEY (user_id) REFERENCES users (id)
);

show tables;

INSERT INTO communities_users VALUES (1, 2),(1,4),(2,18),(5,3),(6,4),(2,19),(3,11),(4,17),(5,17),(6,11),(6,14),(6,17),(6,3);
select*from communities_users;

CREATE TABLE media_types(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(45) NOT NULL UNIQUE
);

INSERT INTO media_types VALUES (DEFAULT, 'изображение');
INSERT INTO media_types VALUES (DEFAULT, 'музыка');
INSERT INTO media_types VALUES (DEFAULT, 'документ');
INSERT INTO media_types VALUES (DEFAULT, 'кино');
INSERT INTO media_types VALUES (DEFAULT, 'наука');
INSERT INTO media_types VALUES (DEFAULT, 'юмор');
INSERT INTO media_types VALUES (DEFAULT, 'ИТ');
INSERT INTO media_types VALUES (DEFAULT, 'игры');
INSERT INTO media_types VALUES (DEFAULT, 'спорт');
INSERT INTO media_types VALUES (DEFAULT, 'туризм');
select*from media_types;

CREATE TABLE media (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	media_types_id INT UNSIGNED NOT NULL,
	file_name VARCHAR(255),
	file_size BIGINT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (media_types_id) REFERENCES media_types (id)
);

INSERT INTO media VALUES (DEFAULT, 1, 1, 'im.jpg', 100, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 1, 1, 'mus.mp3', 78, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 1, 3, 'articl.doc', 10, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 1, 4, 'movie.mp4', 380, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 1, 2, 'mus.mp3', 78, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 2, 1, 'im1.jpg', 6, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 2, 1, 'mus1.mp3', 18, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 2, 3, 'articl1.doc', 40, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 3, 4, 'movie1.mp4', 570, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 4, 2, 'mus2.mp3', 15, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 12, 1, 'img1.jpg', 6, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 15, 1, 'musHi.mp3', 18, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 16, 3, 'articl2.doc', 40, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 17, 4, 'movie4.mp4', 570, DEFAULT);
INSERT INTO media VALUES (DEFAULT, 19, 2, 'mus3.mp3', 15, DEFAULT);
select * from media;

#ii  Задание2
select distinct name from users ASCEND;

#iii  Задание 3
alter table profiles add column is_active char(1) default 0 not null;
update profiles set is_active=1 where datediff(year,birthday,now())>=18;

select*from profiles;

#4 Задание 4

INSERT INTO messages VALUES (DEFAULT, 17, 18, 'why not, my dear friend..', '2036-03-12', DEFAULT, DEFAULT);
delete body from messages where is_delivered > now();
select*from messages;