SET NAMES UTF8;
drop database if exists gamePark;
create database gamePark CHARSET=UTF8;
use gamePark;
create table newGame(
    pid int primary key auto_increment,
    img_url varchar(255)
);
insert into newGame values(null,'http://127.0.0.1:4444/img/ng1.jpg'),
(null,'http://127.0.0.1:4444/img/ng2.jpg'),
(null,'http://127.0.0.1:4444/img/ng3.jpg'),
(null,'http://127.0.0.1:4444/img/ng4.jpg'),
(null,'http://127.0.0.1:4444/img/ng5.jpg'),
(null,'http://127.0.0.1:4444/img/ng6.jpg'),
(null,'http://127.0.0.1:4444/img/ng7.jpg'),
(null,'http://127.0.0.1:4444/img/ng8.jpg'),
(null,'http://127.0.0.1:4444/img/ng1.jpg'),
(null,'http://127.0.0.1:4444/img/ng2.jpg'),
(null,'http://127.0.0.1:4444/img/ng3.jpg'),
(null,'http://127.0.0.1:4444/img/ng4.jpg'),
(null,'http://127.0.0.1:4444/img/ng5.jpg'),
(null,'http://127.0.0.1:4444/img/ng6.jpg'),
(null,'http://127.0.0.1:4444/img/ng7.jpg'),
(null,'http://127.0.0.1:4444/img/ng8.jpg'),
(null,'http://127.0.0.1:4444/img/ng1.jpg'),
(null,'http://127.0.0.1:4444/img/ng2.jpg'),
(null,'http://127.0.0.1:4444/img/ng3.jpg'),
(null,'http://127.0.0.1:4444/img/ng4.jpg'),
(null,'http://127.0.0.1:4444/img/ng5.jpg'),
(null,'http://127.0.0.1:4444/img/ng6.jpg'),
(null,'http://127.0.0.1:4444/img/ng7.jpg'),
(null,'http://127.0.0.1:4444/img/ng8.jpg');
create table news(
    pid int primary key auto_increment,
    user varchar(32),
    t varchar(32),
    describ varchar(255),
    likes int,
    img_url varchar(255),
    comments int,
    detaile varchar(255)
);
insert into news values(null,'admin','June 20,2017','Phasellus faucibus semper eros, quis mauris',10,'http://127.0.0.1:4444/img/e1.jpg',300,null);
insert into news values(null,'admin','July 15,2017','Phasellus faucibus semper eros, quis mauris',15,'http://127.0.0.1:4444/img/e2.jpg',150,null);
insert into news values(null,'admin','Aug 06,2017','Phasellus faucibus semper eros, quis mauris',20,'http://127.0.0.1:4444/img/e3.jpg',200,null);
insert into news values(null,'admin','14.May.2017','Phasellus faucibus semper eros, quis mauris',160,'http://127.0.0.1:4444/img/ng1.jpg',250,'Aliquam suscipit neque massa, eu maximus felis gravida vel. Vestibulum lacinia risus risus, ut iaculis felis fermentum id. Cras at vulputate velit, vitae vestibulum augue. Etiam lorem nunc, mattis ac dignissim sit amet, varius et ex. Phasellus eleifend nibh justo, pulvinar cursus sapien commodo non.');
insert into news values(null,'admin','20.April.2017','Phasellus faucibus semper eros, quis mauris',320,'http://127.0.0.1:4444/img/ng2.jpg',200,'Aliquam suscipit neque massa, eu maximus felis gravida vel. Vestibulum lacinia risus risus, ut iaculis felis fermentum id. Cras at vulputate velit, vitae vestibulum augue. Etiam lorem nunc, mattis ac dignissim sit amet, varius et ex. Phasellus eleifend nibh justo, pulvinar cursus sapien commodo non.');
insert into news values(null,'admin','15.sept.2017','Phasellus faucibus semper eros, quis mauris',120,'http://127.0.0.1:4444/img/ng3.jpg',300,'Aliquam suscipit neque massa, eu maximus felis gravida vel. Vestibulum lacinia risus risus, ut iaculis felis fermentum id. Cras at vulputate velit, vitae vestibulum augue. Etiam lorem nunc, mattis ac dignissim sit amet, varius et ex. Phasellus eleifend nibh justo, pulvinar cursus sapien commodo non.');