/*
SQLyog Community Edition- MySQL GUI
Host - 5.0.67-community-nt 
*********************************************************************
Server version : 5.0.67-community-nt
*/
/*!40101 SET NAMES utf8 */;

create table `login` (
	`user_id` varchar (1500),
	`password` varchar (1500)
); 
insert into `login` (`user_id`, `password`) values('101','123');
insert into `login` (`user_id`, `password`) values('102','456');
insert into `login` (`user_id`, `password`) values('103','789');
