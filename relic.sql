/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.5.62 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `relic` (
	`id` int (11),
	`title` varchar (300),
	`medium` varchar (300),
	`classification` varchar (300),
	`dimension` varchar (300),
	`object_name` varchar (300),
	`continent` varchar (60),
	`country` varchar (120),
	`culture` varchar (120),
	`dated` date ,
	`room` varchar (30),
	`style` varchar (60),
	`inscription` varchar (300),
	`signed` tinyint (1),
	`markings` varchar (300),
	`text` varchar (6000),
	`description` varchar (600),
	`portfolio` varchar (60),
	`creditline` varchar (120),
	`accession_number` double ,
	`artist` varchar (60),
	`role` varchar (60),
	`nationality` varchar (60),
	`life_date` date ,
	`image_copyright` varchar (90),
	`department` varchar (300),
	`rights_type` varchar (60),
	`image` varchar (60),
	`image_width` int (11),
	`image_height` int (11),
	`restricted` tinyint (1),
	`public_access` tinyint (1),
	`curator_approved` tinyint (1),
	`catalogue_raissonne` varchar (60),
	`art_champions_text` varchar (60),
	`see_also` varchar (90),
	`list:aib-2021-selections` tinyint (1),
	`list:handbook` tinyint (1),
	`related:audio-stops` varchar (3000),
	`related:artstories` varchar (3000),
	`list:african-art-highlights` tinyint (1),
	`searchTerm` varchar (150),
	`searchScore` double ,
	`list:nahm` varchar (90),
	`list:whm` varchar (90)
); 
insert into `relic` (`id`, `title`, `medium`, `classification`, `dimension`, `object_name`, `continent`, `country`, `culture`, `dated`, `room`, `style`, `inscription`, `signed`, `markings`, `text`, `description`, `portfolio`, `creditline`, `accession_number`, `artist`, `role`, `nationality`, `life_date`, `image_copyright`, `department`, `rights_type`, `image`, `image_width`, `image_height`, `restricted`, `public_access`, `curator_approved`, `catalogue_raissonne`, `art_champions_text`, `see_also`, `list:aib-2021-selections`, `list:handbook`, `related:audio-stops`, `related:artstories`, `list:african-art-highlights`, `searchTerm`, `searchScore`, `list:nahm`, `list:whm`) values('4866','Shrine head','Terracotta','Sculpture','12 1/4 x 5 3/4 x 7 1/4 in. (31.1 x 14.6 x 18.4 cm)','Head','Africa','Nigeria','Ancient Yoruba','2023-04-11','century','12th-14th century',NULL,NULL,NULL,'This head tranquil demeanor and introspective gaze express what the Yoruba peoples consider a perso','whatever','From','The John R. Van Derlip Fund','95.84',NULL,'Artist',NULL,NULL,NULL,'Arts of Global Africa','Public Domain','valid','4561','6728','0','1','1',NULL,NULL,NULL,'1','1','[{\"title\":\"Ife City, Shrine Head\",\"_id\":\"4866\",\"objectId\":\"4866\",\"link\":\"http://audio-tours.s3.amazonaws.com/p918.mp3\",\"number\":\"918\",\"type\":\"audio\"}]','[{\"title\":\"Shrine Head\",\"_id\":\"4866\",\"objectId\":\"4866\",\"description\":\"<p>She鈥檚 beautiful, of course. You can imagine the glint in her eye, the gleam of her lips, so realistic is this ceramic sculpture from nearly 900 years ago. In fact, in 1911, a German explorer in Africa couldn鈥檛 wrap his head around the possibility that Africans created it鈥攊t鈥檚 so different from the abstract art more typical of the continent鈥攁nd instead proposed that Greek settlers had made it. We know better now, thanks to archaeology and oral history: royals in the ancient city of Ife, in present-day Nigeria, often hired artists to create life-like portraits like this in clay or bronze of themselves, friends, and family.</p>\\n\",\"link\":\"http://artstories.artsmia.org/#/o/4866\",\"type\":\"artstory\"}]','1','_exists_:\"list:african-art-highlights\"','7.495332',NULL,NULL);
