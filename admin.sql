/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.5.62 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `admin` (
	`id` int (11),
	`username` varchar (765),
	`phone` varchar (765),    
	`createtime` date ,
	`updatetime` date ,
	`email` varchar (765),
	`password` varchar (765)
); 
insert into `admin` (`id`, `username`, `phone`, `createtime`, `updatetime`, `email`, `password`) values('3','admin','15240860378','2023-04-08','2023-04-08','2743065525@qq.com','27e6511199acc4e561ba04beb3d045cb');
insert into `admin` (`id`, `username`, `phone`, `createtime`, `updatetime`, `email`, `password`) values('4','admin1','15240860374','2023-04-08','2023-04-08','2020040306@mail.buct.edu.cn','27e6511199acc4e561ba04beb3d045cb');
insert into `admin` (`id`, `username`, `phone`, `createtime`, `updatetime`, `email`, `password`) values('5','admin2','17899883344','2023-04-08','2023-04-08','9837498@qq.com','1eccc2e175fbadb85131855b08e78775');
