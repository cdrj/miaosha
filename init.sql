CREATE DATABASE `miaosha`  /*!40100 DEFAULT CHARACTER SET utf8 */

use miaosha;
create table user_info
(
	id int auto_increment
		primary key,
	name varchar(64) default '' not null,
	gender tinyint default 0 not null,
	age int default 0 not null,
	telphone varchar(255) default '' not null,
	register_mode varchar(255) default '' not null,
	third_party_id varchar(64) default '' not null
);

create table user_password
(
	id int auto_increment
		primary key,
	encrpt_password varchar(128) default '' not null,
	user_id int default 0 not null
);


INSERT INTO miaosha.user_info (id, name, gender, age, telphone, register_mode, third_party_id) VALUES (1, '第一个用户', 1, 25, '13912315902', 'byphone', '');
INSERT INTO miaosha.user_password (id, encrpt_password, user_id) VALUES (1, '12345abc', 1);