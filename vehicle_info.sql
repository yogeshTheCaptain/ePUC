/*
SQLyog Community Edition- MySQL GUI
Host - 5.0.67-community-nt 
*********************************************************************
Server version : 5.0.67-community-nt
*/
/*!40101 SET NAMES utf8 */;

create table `vehicle_info` (
	`pucc_no` double ,
	`regno` varchar (1500),
	`maker` varchar (1500),
	`model` varchar (1500),
	`made_year` date ,
	`fuel_type` varchar (1500),
	`curr_date` date ,
	`vaalid_to` date 
); 
insert into `vehicle_info` (`pucc_no`, `regno`, `maker`, `model`, `made_year`, `fuel_type`, `curr_date`, `vaalid_to`) values('7','1234','Land Rover','Rang Rover','2012-02-06','petrol','2018-03-20','2018-06-18');
insert into `vehicle_info` (`pucc_no`, `regno`, `maker`, `model`, `made_year`, `fuel_type`, `curr_date`, `vaalid_to`) values('8','5678','Toyota','Toyota Vios 1.3 Base MT','2010-05-12','diesel','2018-03-20','2018-06-18');
insert into `vehicle_info` (`pucc_no`, `regno`, `maker`, `model`, `made_year`, `fuel_type`, `curr_date`, `vaalid_to`) values('9','9012','Honda','Honda Shuttle','2011-07-18','petrol','2018-03-20','2018-06-18');
insert into `vehicle_info` (`pucc_no`, `regno`, `maker`, `model`, `made_year`, `fuel_type`, `curr_date`, `vaalid_to`) values('10','3456','Tata','Nano','2014-11-06','CNG','2018-03-20','2018-06-18');
