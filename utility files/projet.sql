--DROP TABLE client;
--DROP TABLE weapons;
--DROP TABLE armors;
--DROP TABLE animals;
--DROP TABLE potions;
--DROP TABLE items;

CREATE TABLE client
       (id INT primary key,
        name text,
        village text );


CREATE TABLE items
    (id INT primary key,
     name text,
     UNIQUE (id));

CREATE TABLE weapons
    (id INT,
     name VARCHAR(30),
     material VARCHAR(30),
     FOREIGN KEY (id) REFERENCES Items(id) ON DELETE CASCADE);

CREATE TABLE armors
       (id INT,
        name text,
        type VARCHAR(14),
        material VARCHAR(14),
        FOREIGN KEY (id) REFERENCES Items(id) ON DELETE CASCADE);

CREATE TABLE animals
    (id INT,
     name text,
     type VARCHAR(14),
     sexe VARCHAR(15),
     FOREIGN KEY (id) REFERENCES Items(id) ON DELETE CASCADE);

CREATE TABLE potions
    (id INT,
      name text,
      effect text,
       FOREIGN KEY (id) REFERENCES Items(id) ON DELETE CASCADE);

CREATE TABLE villages
    (name text primary key,
     coordX INT,
     coordY INT);


INSERT INTO client VALUES
(5000, 'Iusegwion the Broken', 'Darnassus'),
(5001, 'Umdydhaui the Undying', 'Thunder Bluff'),
(5002, 'Gaemnaex the Hunter', 'Stormwind'),
(5003, 'Aerionok the Deadly', 'Ratchet'),
(5004, 'Kanerd the Invisible', 'Darnassus'),
(5005, 'Ienoraerod the Quick', 'Thunder Bluff'),
(5006, 'Gryiuso the Vanquisher', 'Theramore'),
(5007, 'Rkionechu the Quick', 'Orgrimmar'),
(5008, 'Igonieech the Evil', 'Minas Tirith'),
(5009, 'Aegonur the Eater of Worlds', 'Thunder Bluff'),
(5010, 'Okhae the Firelord', 'Edoras'),
(5011, 'Iongohelae the Dead', 'Theramore'),
(5012, 'Yweny the HighBorn', 'Thunder Bluff'),
(5013, 'Khuabdykh the Quick', 'Darnassus'),
(5014, 'Ilimdeiel the Gladiator', 'Ratchet'),
(5015, 'Uabdawena the Protector', 'Ratchet'),
(5016, 'Aegrionrodie the Explorer', 'Darnassus'),
(5017, 'Ogui the Betrayer', 'Stormwind'),
(5018, 'Ipaegnui the Gladiator', 'Edoras'),
(5019, 'Kapam the Quick', 'Stormwind'),
(5020, 'Oroyielo the Just', 'Theramore'),
(5021, 'Mekani the Bastard', 'Theramore'),
(5022, 'Ionkyuk the Savage', 'Stormwind'),
(5023, 'Ukoieleoth the Broken', 'Ratchet'),
(5024, 'Gnodi the Barbarian', 'Ratchet'),
(5025, 'Ghieweni the Savage', 'Ratchet'),
(5026, 'Rdiehil the Breaker of Chains', 'Thunder Bluff'),
(5027, 'Awenionrd the Breaker of Chains', 'Minas Tirith'),
(5028, 'Gruwenouk the Savage', 'Ratchet'),
(5029, 'Onora the Protector', 'Stormwind'),
(5030, 'Rouimy the Explorer', 'Stormwind'),
(5031, 'Aghooke the Slayer', 'Theramore'),
(5032, 'Aemuiothy the Relentless', 'Stormwind'),
(5033, 'Mierode the Gullible', 'Theramore'),
(5034, 'Uthrorkie the Hunter', 'Edoras'),
(5035, 'Ionielugona the Eater of Worlds', 'Edoras'),
(5036, 'Okurode the Gullible', 'Darnassus'),
(5037, 'Oghygr the Betrayer', 'Orgrimmar'),
(5038, 'Iliongonui the Slayer', 'Minas Tirith'),
(5039, 'Iongythro the Broken', 'Theramore'),
(5040, 'Xiekie the Gladiator', 'Orgrimmar'),
(5041, 'Weniekan the HighBorn', 'Thunder Bluff'),
(5042, 'Khuruwen the Gladiator', 'Edoras'),
(5043, 'Komd the Battle Lord', 'Darnassus'),
(5044, 'Ieukok the Relentless', 'Darnassus'),
(5045, 'Okuiech the Deadly', 'Minas Tirith'),
(5046, 'Yrodigone the Hunter', 'Thunder Bluff'),
(5047, 'Uihelie the Gladiator', 'Minas Tirith'),
(5048, 'Eghy the LowBorn', 'Darnassus'),
(5049, 'Gnionmn the Barbarian', 'Edoras'),
(5050, 'Hilukhae the Undying', 'Theramore'),
(5051, 'Ygwieabd the Betrayer', 'Stormwind'),
(5052, 'Ionechehila the Slayer', 'Minas Tirith'),
(5053, 'Rkuhelie the Destroyer', 'Minas Tirith'),
(5054, 'Ude the Deadly', 'Stormwind'),
(5055, 'Dhaahilaech the Savage', 'Ratchet'),
(5056, 'Rduothiond the LowBorn', 'Theramore'),
(5057, 'Yokikho the Bastard', 'Darnassus'),
(5058, 'Daeilogw the Bastard', 'Stormwind'),
(5059, 'Roirodeoth the Breaker of Chains', 'Thunder Bluff'),
(5060, 'Othieiel the Firelord', 'Minas Tirith'),
(5061, 'Etauionabd the LowBorn', 'Theramore'),
(5062, 'Aery the Just', 'Orgrimmar'),
(5063, 'Ignui the Undying', 'Stormwind'),
(5064, 'Ohilaegrie the Undying', 'Thunder Bluff'),
(5065, 'Pieghui the HighBorn', 'Ratchet'),
(5066, 'Urewen the Breaker of Chains', 'Orgrimmar'),
(5067, 'Kanuthr the Hunter', 'Darnassus'),
(5068, 'Idhaarky the Paragon', 'Orgrimmar'),
(5069, 'Greilugon the Eater of Worlds', 'Darnassus'),
(5070, 'Omdyk the Mad King', 'Stormwind'),
(5071, 'Ghomd the Gladiator', 'Ratchet'),
(5072, 'Rutau the Paragon', 'Theramore'),
(5073, 'Abdaer the Dead', 'Thunder Bluff'),
(5074, 'Aewenagru the Slayer', 'Stormwind'),
(5075, 'Griro the Gladiator', 'Minas Tirith'),
(5076, 'Othaewen the Gorgeous', 'Darnassus'),
(5077, 'Rdathu the Breaker of Chains', 'Ratchet'),
(5078, 'Aielothr the Knight', 'Thunder Bluff'),
(5079, 'Iusyukaeoth the Knight', 'Minas Tirith'),
(5080, 'Piontauo the Hunter', 'Theramore'),
(5081, 'Iemu the Battle Lord', 'Minas Tirith'),
(5082, 'Ukoguikh the Vanquisher', 'Edoras'),
(5083, 'Uiokiechion the Bastard', 'Theramore'),
(5084, 'Ogierkion the Undying', 'Thunder Bluff'),
(5085, 'Echaekh the Hunter', 'Thunder Bluff'),
(5086, 'Othuiukion the Quick', 'Minas Tirith'),
(5087, 'Daehely the Deadly', 'Minas Tirith'),
(5088, 'Ionda the Gullible', 'Edoras'),
(5089, 'Aegarodo the LowBorn', 'Ratchet'),
(5090, 'Thrurodieil the Dark Master', 'Darnassus'),
(5091, 'Ithrythri the Betrayer', 'Minas Tirith'),
(5092, 'Iongraroa the Invisible', 'Thunder Bluff'),
(5093, 'Ionkhoilae the Paragon', 'Minas Tirith'),
(5094, 'Ieluipiro the Nimble', 'Theramore'),
(5095, 'Roionhil the Slayer', 'Ratchet'),
(5096, 'Rdaehelionhil the LowBorn', 'Darnassus'),
(5097, 'Royabd the Bastard', 'Orgrimmar'),
(5098, 'Iekanarod the Explorer', 'Edoras'),
(5099, 'Akhoily the Challenged', 'Edoras');

INSERT INTO items VALUES
(0,'Flail'),
(1,'Crossbow'),
(2,'Bow'),
(3,'Crossbow'),
(4,'Bow'),
(5,'Mace'),
(6,'Sword'),
(7,'Mace'),
(8,'Mace'),
(9,'Bow'),
(10,'Sword'),
(11,'Bow'),
(12,'Bow'),
(13,'Flail'),
(14,'Bow'),
(15,'Sword'),
(16,'Sword'),
(17,'Flail'),
(18,'Crossbow'),
(19,'Sword'),
(20,'Crossbow'),
(21,'Bow'),
(22,'Sword'),
(23,'Sword'),
(24,'Crossbow'),
(25,'Mace'),
(26,'Bow'),
(27,'Lance'),
(28,'Bow'),
(29,'Crossbow'),
(30,'Sword'),
(31,'Sword'),
(32,'Sword'),
(33,'Flail'),
(34,'Lance'),
(35,'Bow'),
(36,'Mace'),
(37,'Flail'),
(38,'Bow'),
(39,'Crossbow'),
(40,'Mace'),
(41,'Lance'),
(42,'Lance'),
(43,'Lance'),
(44,'Crossbow'),
(45,'Bow'),
(46,'Bow'),
(47,'Mace'),
(48,'Sword'),
(49,'Crossbow'),
(50,'Lance'),
(51,'Bow'),
(52,'Crossbow'),
(53,'Bow'),
(54,'Sword'),
(55,'Bow'),
(56,'Mace'),
(57,'Mace'),
(58,'Mace'),
(59,'Crossbow'),
(60,'Crossbow'),
(61,'Crossbow'),
(62,'Crossbow'),
(63,'Bow'),
(64,'Mace'),
(65,'Sword'),
(66,'Crossbow'),
(67,'Mace'),
(68,'Crossbow'),
(69,'Mace'),
(70,'Crossbow'),
(71,'Crossbow'),
(72,'Lance'),
(73,'Lance'),
(74,'Lance'),
(75,'Crossbow'),
(76,'Mace'),
(77,'Flail'),
(78,'Mace'),
(79,'Bow'),
(80,'Bow'),
(81,'Mace'),
(82,'Sword'),
(83,'Crossbow'),
(84,'Lance'),
(85,'Sword'),
(86,'Flail'),
(87,'Mace'),
(88,'Lance'),
(89,'Mace'),
(90,'Mace'),
(91,'Flail'),
(92,'Bow'),
(93,'Lance'),
(94,'Mace'),
(95,'Lance'),
(96,'Sword'),
(97,'Mace'),
(98,'Flail'),
(99,'Crossbow'),
(100,'Pants armor of Leather'),
(101,'Boots armor of Cloth'),
(102,'Pants armor of Cloth'),
(103,'Head armor of Mail'),
(104,'Head armor of Mail'),
(105,'Chest armor of Cloth'),
(106,'Shoulder armor of Plate'),
(107,'Boots armor of Cloth'),
(108,'Head armor of Plate'),
(109,'Chest armor of Plate'),
(110,'Boots armor of Mail'),
(111,'Pants armor of Cloth'),
(112,'Chest armor of Mail'),
(113,'Pants armor of Cloth'),
(114,'Shoulder armor of Plate'),
(115,'Chest armor of Mail'),
(116,'Shoulder armor of Leather'),
(117,'Pants armor of Mail'),
(118,'Head armor of Mail'),
(119,'Shoulder armor of Plate'),
(120,'Head armor of Leather'),
(121,'Chest armor of Mail'),
(122,'Head armor of Cloth'),
(123,'Boots armor of Mail'),
(124,'Shoulder armor of Plate'),
(125,'Pants armor of Mail'),
(126,'Head armor of Mail'),
(127,'Shoulder armor of Mail'),
(128,'Shoulder armor of Mail'),
(129,'Pants armor of Mail'),
(130,'Pants armor of Mail'),
(131,'Head armor of Cloth'),
(132,'Pants armor of Leather'),
(133,'Shoulder armor of Mail'),
(134,'Shoulder armor of Mail'),
(135,'Head armor of Cloth'),
(136,'Shoulder armor of Mail'),
(137,'Pants armor of Plate'),
(138,'Boots armor of Mail'),
(139,'Boots armor of Plate'),
(140,'Boots armor of Cloth'),
(141,'Boots armor of Mail'),
(142,'Head armor of Leather'),
(143,'Pants armor of Plate'),
(144,'Pants armor of Plate'),
(145,'Pants armor of Mail'),
(146,'Shoulder armor of Cloth'),
(147,'Chest armor of Leather'),
(148,'Pants armor of Cloth'),
(149,'Head armor of Cloth'),
(150,'Head armor of Leather'),
(151,'Pants armor of Plate'),
(152,'Pants armor of Cloth'),
(153,'Chest armor of Cloth'),
(154,'Boots armor of Mail'),
(155,'Boots armor of Cloth'),
(156,'Chest armor of Cloth'),
(157,'Pants armor of Cloth'),
(158,'Chest armor of Leather'),
(159,'Pants armor of Cloth'),
(160,'Pants armor of Cloth'),
(161,'Pants armor of Leather'),
(162,'Pants armor of Cloth'),
(163,'Shoulder armor of Mail'),
(164,'Shoulder armor of Plate'),
(165,'Shoulder armor of Mail'),
(166,'Shoulder armor of Plate'),
(167,'Head armor of Plate'),
(168,'Shoulder armor of Plate'),
(169,'Pants armor of Mail'),
(170,'Boots armor of Leather'),
(171,'Pants armor of Mail'),
(172,'Chest armor of Plate'),
(173,'Head armor of Leather'),
(174,'Boots armor of Mail'),
(175,'Boots armor of Plate'),
(176,'Shoulder armor of Cloth'),
(177,'Shoulder armor of Mail'),
(178,'Head armor of Leather'),
(179,'Shoulder armor of Leather'),
(180,'Pants armor of Cloth'),
(181,'Chest armor of Mail'),
(182,'Boots armor of Mail'),
(183,'Chest armor of Mail'),
(184,'Chest armor of Mail'),
(185,'Pants armor of Leather'),
(186,'Head armor of Cloth'),
(187,'Shoulder armor of Leather'),
(188,'Pants armor of Leather'),
(189,'Boots armor of Cloth'),
(190,'Pants armor of Mail'),
(191,'Pants armor of Plate'),
(192,'Boots armor of Leather'),
(193,'Chest armor of Leather'),
(194,'Head armor of Mail'),
(195,'Head armor of Cloth'),
(196,'Head armor of Mail'),
(197,'Head armor of Cloth'),
(198,'Head armor of Mail'),
(199,'Pants armor of Leather'),
(200,'Dragon'),
(201,'Dragon'),
(202,'Chicken'),
(203,'Bear'),
(204,'Cow'),
(205,'Donkey'),
(206,'Dragon'),
(207,'Dragon'),
(208,'Dragon'),
(209,'Horse'),
(210,'Donkey'),
(211,'Chicken'),
(212,'Beef'),
(213,'Cow'),
(214,'Horse'),
(215,'Beef'),
(216,'Beef'),
(217,'Camel'),
(218,'Chicken'),
(219,'Bear'),
(220,'Sheep'),
(221,'Beef'),
(222,'Beef'),
(223,'Bear'),
(224,'Beef'),
(225,'Sheep'),
(226,'Sheep'),
(227,'Dragon'),
(228,'Donkey'),
(229,'Donkey'),
(230,'Camel'),
(231,'Cow'),
(232,'Bear'),
(233,'Donkey'),
(234,'Sheep'),
(235,'Bear'),
(236,'Sheep'),
(237,'Cow'),
(238,'Dragon'),
(239,'Donkey'),
(240,'Sheep'),
(241,'Cow'),
(242,'Bear'),
(243,'Horse'),
(244,'Horse'),
(245,'Donkey'),
(246,'Bear'),
(247,'Horse'),
(248,'Chicken'),
(249,'Dragon'),
(250,'Sheep'),
(251,'Beef'),
(252,'Cow'),
(253,'Horse'),
(254,'Cow'),
(255,'Beef'),
(256,'Horse'),
(257,'Horse'),
(258,'Horse'),
(259,'Camel'),
(260,'Chicken'),
(261,'Sheep'),
(262,'Sheep'),
(263,'Camel'),
(264,'Bear'),
(265,'Horse'),
(266,'Bear'),
(267,'Cow'),
(268,'Chicken'),
(269,'Chicken'),
(270,'Camel'),
(271,'Donkey'),
(272,'Beef'),
(273,'Cow'),
(274,'Cow'),
(275,'Beef'),
(276,'Donkey'),
(277,'Sheep'),
(278,'Camel'),
(279,'Cow'),
(280,'Horse'),
(281,'Chicken'),
(282,'Chicken'),
(283,'Horse'),
(284,'Camel'),
(285,'Beef'),
(286,'Cow'),
(287,'Cow'),
(288,'Horse'),
(289,'Cow'),
(290,'Sheep'),
(291,'Camel'),
(292,'Chicken'),
(293,'Dragon'),
(294,'Cow'),
(295,'Donkey'),
(296,'Camel'),
(297,'Horse'),
(298,'Chicken'),
(299,'Beef'),
(300,'Minor potion of Invisibility'),
(301,'Minor potion of Swiftness'),
(302,'Enormous potion of Healing'),
(303,'Minor potion of Poison'),
(304,'Enormous potion of Healing'),
(305,'Enormous potion of Invisibility'),
(306,'Enormous potion of Night Vision'),
(307,'Minor potion of Healing'),
(308,'Major potion of Poison'),
(309,'Minor potion of Night Vision'),
(310,'Minor potion of Night Vision'),
(311,'Medium potion of Night Vision'),
(312,'Enormous potion of Night Vision'),
(313,'Medium potion of Healing'),
(314,'Major potion of Fire Resistance'),
(315,'Enormous potion of Fire Resistance'),
(316,'Enormous potion of Invisibility'),
(317,'Medium potion of Healing'),
(318,'Enormous potion of Swiftness'),
(319,'Minor potion of Invisibility'),
(320,'Minor potion of Invisibility'),
(321,'Major potion of Swiftness'),
(322,'Enormous potion of Poison'),
(323,'Minor potion of Invisibility'),
(324,'Medium potion of Poison'),
(325,'Minor potion of Fire Resistance'),
(326,'Medium potion of Healing'),
(327,'Enormous potion of Invisibility'),
(328,'Minor potion of Poison'),
(329,'Minor potion of Fire Resistance'),
(330,'Enormous potion of Fire Resistance'),
(331,'Major potion of Night Vision'),
(332,'Medium potion of Night Vision'),
(333,'Major potion of Healing'),
(334,'Medium potion of Fire Resistance'),
(335,'Enormous potion of Poison'),
(336,'Minor potion of Healing'),
(337,'Medium potion of Invisibility'),
(338,'Medium potion of Fire Resistance'),
(339,'Medium potion of Fire Resistance'),
(340,'Enormous potion of Fire Resistance'),
(341,'Enormous potion of Healing'),
(342,'Medium potion of Swiftness'),
(343,'Major potion of Invisibility'),
(344,'Medium potion of Invisibility'),
(345,'Minor potion of Night Vision'),
(346,'Medium potion of Poison'),
(347,'Medium potion of Poison'),
(348,'Enormous potion of Swiftness'),
(349,'Enormous potion of Invisibility'),
(350,'Minor potion of Night Vision'),
(351,'Major potion of Night Vision'),
(352,'Minor potion of Swiftness'),
(353,'Minor potion of Healing'),
(354,'Medium potion of Swiftness'),
(355,'Medium potion of Invisibility'),
(356,'Medium potion of Night Vision'),
(357,'Medium potion of Swiftness'),
(358,'Enormous potion of Fire Resistance'),
(359,'Medium potion of Swiftness'),
(360,'Minor potion of Fire Resistance'),
(361,'Medium potion of Night Vision'),
(362,'Major potion of Poison'),
(363,'Minor potion of Night Vision'),
(364,'Medium potion of Fire Resistance'),
(365,'Major potion of Healing'),
(366,'Enormous potion of Swiftness'),
(367,'Minor potion of Invisibility'),
(368,'Enormous potion of Fire Resistance'),
(369,'Medium potion of Swiftness'),
(370,'Minor potion of Fire Resistance'),
(371,'Minor potion of Healing'),
(372,'Major potion of Night Vision'),
(373,'Minor potion of Healing'),
(374,'Major potion of Poison'),
(375,'Medium potion of Swiftness'),
(376,'Minor potion of Swiftness'),
(377,'Enormous potion of Night Vision'),
(378,'Minor potion of Poison'),
(379,'Enormous potion of Invisibility'),
(380,'Enormous potion of Swiftness'),
(381,'Enormous potion of Night Vision'),
(382,'Major potion of Night Vision'),
(383,'Medium potion of Healing'),
(384,'Enormous potion of Night Vision'),
(385,'Minor potion of Swiftness'),
(386,'Medium potion of Fire Resistance'),
(387,'Medium potion of Invisibility'),
(388,'Enormous potion of Night Vision'),
(389,'Minor potion of Poison'),
(390,'Minor potion of Swiftness'),
(391,'Minor potion of Invisibility'),
(392,'Minor potion of Fire Resistance'),
(393,'Medium potion of Poison'),
(394,'Major potion of Healing'),
(395,'Medium potion of Invisibility'),
(396,'Medium potion of Fire Resistance'),
(397,'Minor potion of Swiftness'),
(398,'Enormous potion of Night Vision'),
(399,'Minor potion of Poison');


INSERT INTO weapons VALUES
(0, 'Flail', 'DragonGlass'),
(1, 'Crossbow', 'Wood'),
(2, 'Bow', 'Wood'),
(3, 'Crossbow', 'Stone'),
(4, 'Bow', 'DragonGlass'),
(5, 'Mace', 'Wood'),
(6, 'Sword', 'DragonGlass'),
(7, 'Mace', 'Wood'),
(8, 'Mace', 'DragonGlass'),
(9, 'Bow', 'Iron'),
(10, 'Sword', 'Steel'),
(11, 'Bow', 'Stone'),
(12, 'Bow', 'Iron'),
(13, 'Flail', 'DragonGlass'),
(14, 'Bow', 'Iron'),
(15, 'Sword', 'DragonGlass'),
(16, 'Sword', 'Steel'),
(17, 'Flail', 'Iron'),
(18, 'Crossbow', 'Iron'),
(19, 'Sword', 'DragonGlass'),
(20, 'Crossbow', 'Stone'),
(21, 'Bow', 'Stone'),
(22, 'Sword', 'Steel'),
(23, 'Sword', 'Steel'),
(24, 'Crossbow', 'Wood'),
(25, 'Mace', 'Iron'),
(26, 'Bow', 'DragonGlass'),
(27, 'Lance', 'DragonGlass'),
(28, 'Bow', 'DragonGlass'),
(29, 'Crossbow', 'DragonGlass'),
(30, 'Sword', 'Iron'),
(31, 'Sword', 'Wood'),
(32, 'Sword', 'Iron'),
(33, 'Flail', 'Iron'),
(34, 'Lance', 'Stone'),
(35, 'Bow', 'Stone'),
(36, 'Mace', 'Steel'),
(37, 'Flail', 'Iron'),
(38, 'Bow', 'Wood'),
(39, 'Crossbow', 'DragonGlass'),
(40, 'Mace', 'Steel'),
(41, 'Lance', 'Stone'),
(42, 'Lance', 'Steel'),
(43, 'Lance', 'Iron'),
(44, 'Crossbow', 'Stone'),
(45, 'Bow', 'Wood'),
(46, 'Bow', 'DragonGlass'),
(47, 'Mace', 'Stone'),
(48, 'Sword', 'DragonGlass'),
(49, 'Crossbow', 'Stone'),
(50, 'Lance', 'Wood'),
(51, 'Bow', 'DragonGlass'),
(52, 'Crossbow', 'Iron'),
(53, 'Bow', 'Iron'),
(54, 'Sword', 'Stone'),
(55, 'Bow', 'Stone'),
(56, 'Mace', 'Steel'),
(57, 'Mace', 'Wood'),
(58, 'Mace', 'Steel'),
(59, 'Crossbow', 'Steel'),
(60, 'Crossbow', 'DragonGlass'),
(61, 'Crossbow', 'Iron'),
(62, 'Crossbow', 'Steel'),
(63, 'Bow', 'Iron'),
(64, 'Mace', 'Wood'),
(65, 'Sword', 'Wood'),
(66, 'Crossbow', 'Steel'),
(67, 'Mace', 'Stone'),
(68, 'Crossbow', 'Steel'),
(69, 'Mace', 'Iron'),
(70, 'Crossbow', 'Stone'),
(71, 'Crossbow', 'Iron'),
(72, 'Lance', 'Steel'),
(73, 'Lance', 'DragonGlass'),
(74, 'Lance', 'Steel'),
(75, 'Crossbow', 'Stone'),
(76, 'Mace', 'Wood'),
(77, 'Flail', 'Steel'),
(78, 'Mace', 'DragonGlass'),
(79, 'Bow', 'Wood'),
(80, 'Bow', 'DragonGlass'),
(81, 'Mace', 'Iron'),
(82, 'Sword', 'DragonGlass'),
(83, 'Crossbow', 'Iron'),
(84, 'Lance', 'Wood'),
(85, 'Sword', 'Stone'),
(86, 'Flail', 'Steel'),
(87, 'Mace', 'DragonGlass'),
(88, 'Lance', 'Steel'),
(89, 'Mace', 'Stone'),
(90, 'Mace', 'DragonGlass'),
(91, 'Flail', 'Steel'),
(92, 'Bow', 'Wood'),
(93, 'Lance', 'Steel'),
(94, 'Mace', 'Stone'),
(95, 'Lance', 'DragonGlass'),
(96, 'Sword', 'Iron'),
(97, 'Mace', 'Wood'),
(98, 'Flail', 'Iron'),
(99, 'Crossbow', 'Steel');


INSERT INTO armors VALUES
(100, 'Pants armor of Leather', 'Pants', 'Leather'),
(101, 'Boots armor of Cloth', 'Boots', 'Cloth'),
(102, 'Pants armor of Cloth', 'Pants', 'Cloth'),
(103, 'Head armor of Mail', 'Head', 'Mail'),
(104, 'Head armor of Mail', 'Head', 'Mail'),
(105, 'Chest armor of Cloth', 'Chest', 'Cloth'),
(106, 'Shoulder armor of Plate', 'Shoulder', 'Plate'),
(107, 'Boots armor of Cloth', 'Boots', 'Cloth'),
(108, 'Head armor of Plate', 'Head', 'Plate'),
(109, 'Chest armor of Plate', 'Chest', 'Plate'),
(110, 'Boots armor of Mail', 'Boots', 'Mail'),
(111, 'Pants armor of Cloth', 'Pants', 'Cloth'),
(112, 'Chest armor of Mail', 'Chest', 'Mail'),
(113, 'Pants armor of Cloth', 'Pants', 'Cloth'),
(114, 'Shoulder armor of Plate', 'Shoulder', 'Plate'),
(115, 'Chest armor of Mail', 'Chest', 'Mail'),
(116, 'Shoulder armor of Leather', 'Shoulder', 'Leather'),
(117, 'Pants armor of Mail', 'Pants', 'Mail'),
(118, 'Head armor of Mail', 'Head', 'Mail'),
(119, 'Shoulder armor of Plate', 'Shoulder', 'Plate'),
(120, 'Head armor of Leather', 'Head', 'Leather'),
(121, 'Chest armor of Mail', 'Chest', 'Mail'),
(122, 'Head armor of Cloth', 'Head', 'Cloth'),
(123, 'Boots armor of Mail', 'Boots', 'Mail'),
(124, 'Shoulder armor of Plate', 'Shoulder', 'Plate'),
(125, 'Pants armor of Mail', 'Pants', 'Mail'),
(126, 'Head armor of Mail', 'Head', 'Mail'),
(127, 'Shoulder armor of Mail', 'Shoulder', 'Mail'),
(128, 'Shoulder armor of Mail', 'Shoulder', 'Mail'),
(129, 'Pants armor of Mail', 'Pants', 'Mail'),
(130, 'Pants armor of Mail', 'Pants', 'Mail'),
(131, 'Head armor of Cloth', 'Head', 'Cloth'),
(132, 'Pants armor of Leather', 'Pants', 'Leather'),
(133, 'Shoulder armor of Mail', 'Shoulder', 'Mail'),
(134, 'Shoulder armor of Mail', 'Shoulder', 'Mail'),
(135, 'Head armor of Cloth', 'Head', 'Cloth'),
(136, 'Shoulder armor of Mail', 'Shoulder', 'Mail'),
(137, 'Pants armor of Plate', 'Pants', 'Plate'),
(138, 'Boots armor of Mail', 'Boots', 'Mail'),
(139, 'Boots armor of Plate', 'Boots', 'Plate'),
(140, 'Boots armor of Cloth', 'Boots', 'Cloth'),
(141, 'Boots armor of Mail', 'Boots', 'Mail'),
(142, 'Head armor of Leather', 'Head', 'Leather'),
(143, 'Pants armor of Plate', 'Pants', 'Plate'),
(144, 'Pants armor of Plate', 'Pants', 'Plate'),
(145, 'Pants armor of Mail', 'Pants', 'Mail'),
(146, 'Shoulder armor of Cloth', 'Shoulder', 'Cloth'),
(147, 'Chest armor of Leather', 'Chest', 'Leather'),
(148, 'Pants armor of Cloth', 'Pants', 'Cloth'),
(149, 'Head armor of Cloth', 'Head', 'Cloth'),
(150, 'Head armor of Leather', 'Head', 'Leather'),
(151, 'Pants armor of Plate', 'Pants', 'Plate'),
(152, 'Pants armor of Cloth', 'Pants', 'Cloth'),
(153, 'Chest armor of Cloth', 'Chest', 'Cloth'),
(154, 'Boots armor of Mail', 'Boots', 'Mail'),
(155, 'Boots armor of Cloth', 'Boots', 'Cloth'),
(156, 'Chest armor of Cloth', 'Chest', 'Cloth'),
(157, 'Pants armor of Cloth', 'Pants', 'Cloth'),
(158, 'Chest armor of Leather', 'Chest', 'Leather'),
(159, 'Pants armor of Cloth', 'Pants', 'Cloth'),
(160, 'Pants armor of Cloth', 'Pants', 'Cloth'),
(161, 'Pants armor of Leather', 'Pants', 'Leather'),
(162, 'Pants armor of Cloth', 'Pants', 'Cloth'),
(163, 'Shoulder armor of Mail', 'Shoulder', 'Mail'),
(164, 'Shoulder armor of Plate', 'Shoulder', 'Plate'),
(165, 'Shoulder armor of Mail', 'Shoulder', 'Mail'),
(166, 'Shoulder armor of Plate', 'Shoulder', 'Plate'),
(167, 'Head armor of Plate', 'Head', 'Plate'),
(168, 'Shoulder armor of Plate', 'Shoulder', 'Plate'),
(169, 'Pants armor of Mail', 'Pants', 'Mail'),
(170, 'Boots armor of Leather', 'Boots', 'Leather'),
(171, 'Pants armor of Mail', 'Pants', 'Mail'),
(172, 'Chest armor of Plate', 'Chest', 'Plate'),
(173, 'Head armor of Leather', 'Head', 'Leather'),
(174, 'Boots armor of Mail', 'Boots', 'Mail'),
(175, 'Boots armor of Plate', 'Boots', 'Plate'),
(176, 'Shoulder armor of Cloth', 'Shoulder', 'Cloth'),
(177, 'Shoulder armor of Mail', 'Shoulder', 'Mail'),
(178, 'Head armor of Leather', 'Head', 'Leather'),
(179, 'Shoulder armor of Leather', 'Shoulder', 'Leather'),
(180, 'Pants armor of Cloth', 'Pants', 'Cloth'),
(181, 'Chest armor of Mail', 'Chest', 'Mail'),
(182, 'Boots armor of Mail', 'Boots', 'Mail'),
(183, 'Chest armor of Mail', 'Chest', 'Mail'),
(184, 'Chest armor of Mail', 'Chest', 'Mail'),
(185, 'Pants armor of Leather', 'Pants', 'Leather'),
(186, 'Head armor of Cloth', 'Head', 'Cloth'),
(187, 'Shoulder armor of Leather', 'Shoulder', 'Leather'),
(188, 'Pants armor of Leather', 'Pants', 'Leather'),
(189, 'Boots armor of Cloth', 'Boots', 'Cloth'),
(190, 'Pants armor of Mail', 'Pants', 'Mail'),
(191, 'Pants armor of Plate', 'Pants', 'Plate'),
(192, 'Boots armor of Leather', 'Boots', 'Leather'),
(193, 'Chest armor of Leather', 'Chest', 'Leather'),
(194, 'Head armor of Mail', 'Head', 'Mail'),
(195, 'Head armor of Cloth', 'Head', 'Cloth'),
(196, 'Head armor of Mail', 'Head', 'Mail'),
(197, 'Head armor of Cloth', 'Head', 'Cloth'),
(198, 'Head armor of Mail', 'Head', 'Mail'),
(199, 'Pants armor of Leather', 'Pants', 'Leather');

INSERT INTO animals VALUES
(200, 'Dragon', 'Livestock', 'Male'),
(201, 'Dragon', 'Mount', 'Male'),
(202, 'Chicken', 'Mount', 'Female'),
(203, 'Bear', 'Livestock', 'Male'),
(204, 'Cow', 'Mount', 'Female'),
(205, 'Donkey', 'Livestock', 'Male'),
(206, 'Dragon', 'Mount', 'Female'),
(207, 'Dragon', 'Mount', 'Female'),
(208, 'Dragon', 'Livestock', 'Male'),
(209, 'Horse', 'Livestock', 'Male'),
(210, 'Donkey', 'Mount', 'Female'),
(211, 'Chicken', 'Mount', 'Female'),
(212, 'Beef', 'Mount', 'Female'),
(213, 'Cow', 'Mount', 'Female'),
(214, 'Horse', 'Livestock', 'Female'),
(215, 'Beef', 'Mount', 'Male'),
(216, 'Beef', 'Livestock', 'Male'),
(217, 'Camel', 'Mount', 'Female'),
(218, 'Chicken', 'Livestock', 'Male'),
(219, 'Bear', 'Mount', 'Female'),
(220, 'Sheep', 'Mount', 'Female'),
(221, 'Beef', 'Livestock', 'Female'),
(222, 'Beef', 'Mount', 'Male'),
(223, 'Bear', 'Mount', 'Male'),
(224, 'Beef', 'Mount', 'Male'),
(225, 'Sheep', 'Mount', 'Female'),
(226, 'Sheep', 'Mount', 'Male'),
(227, 'Dragon', 'Mount', 'Male'),
(228, 'Donkey', 'Mount', 'Male'),
(229, 'Donkey', 'Livestock', 'Male'),
(230, 'Camel', 'Mount', 'Male'),
(231, 'Cow', 'Mount', 'Male'),
(232, 'Bear', 'Mount', 'Male'),
(233, 'Donkey', 'Mount', 'Female'),
(234, 'Sheep', 'Livestock', 'Female'),
(235, 'Bear', 'Livestock', 'Female'),
(236, 'Sheep', 'Mount', 'Male'),
(237, 'Cow', 'Mount', 'Male'),
(238, 'Dragon', 'Livestock', 'Female'),
(239, 'Donkey', 'Mount', 'Male'),
(240, 'Sheep', 'Livestock', 'Female'),
(241, 'Cow', 'Mount', 'Female'),
(242, 'Bear', 'Livestock', 'Male'),
(243, 'Horse', 'Livestock', 'Female'),
(244, 'Horse', 'Livestock', 'Male'),
(245, 'Donkey', 'Mount', 'Female'),
(246, 'Bear', 'Livestock', 'Female'),
(247, 'Horse', 'Livestock', 'Female'),
(248, 'Chicken', 'Livestock', 'Female'),
(249, 'Dragon', 'Mount', 'Female'),
(250, 'Sheep', 'Mount', 'Male'),
(251, 'Beef', 'Mount', 'Male'),
(252, 'Cow', 'Mount', 'Male'),
(253, 'Horse', 'Mount', 'Male'),
(254, 'Cow', 'Livestock', 'Male'),
(255, 'Beef', 'Livestock', 'Female'),
(256, 'Horse', 'Livestock', 'Male'),
(257, 'Horse', 'Livestock', 'Male'),
(258, 'Horse', 'Mount', 'Female'),
(259, 'Camel', 'Mount', 'Female'),
(260, 'Chicken', 'Livestock', 'Female'),
(261, 'Sheep', 'Livestock', 'Male'),
(262, 'Sheep', 'Mount', 'Male'),
(263, 'Camel', 'Mount', 'Female'),
(264, 'Bear', 'Livestock', 'Female'),
(265, 'Horse', 'Livestock', 'Male'),
(266, 'Bear', 'Mount', 'Male'),
(267, 'Cow', 'Mount', 'Male'),
(268, 'Chicken', 'Mount', 'Female'),
(269, 'Chicken', 'Livestock', 'Female'),
(270, 'Camel', 'Livestock', 'Female'),
(271, 'Donkey', 'Mount', 'Female'),
(272, 'Beef', 'Mount', 'Male'),
(273, 'Cow', 'Mount', 'Female'),
(274, 'Cow', 'Mount', 'Male'),
(275, 'Beef', 'Livestock', 'Male'),
(276, 'Donkey', 'Livestock', 'Male'),
(277, 'Sheep', 'Livestock', 'Female'),
(278, 'Camel', 'Mount', 'Male'),
(279, 'Cow', 'Livestock', 'Female'),
(280, 'Horse', 'Livestock', 'Male'),
(281, 'Chicken', 'Mount', 'Male'),
(282, 'Chicken', 'Livestock', 'Female'),
(283, 'Horse', 'Mount', 'Female'),
(284, 'Camel', 'Livestock', 'Male'),
(285, 'Beef', 'Livestock', 'Female'),
(286, 'Cow', 'Livestock', 'Male'),
(287, 'Cow', 'Livestock', 'Male'),
(288, 'Horse', 'Mount', 'Female'),
(289, 'Cow', 'Livestock', 'Female'),
(290, 'Sheep', 'Mount', 'Female'),
(291, 'Camel', 'Mount', 'Female'),
(292, 'Chicken', 'Livestock', 'Female'),
(293, 'Dragon', 'Mount', 'Male'),
(294, 'Cow', 'Livestock', 'Female'),
(295, 'Donkey', 'Livestock', 'Female'),
(296, 'Camel', 'Livestock', 'Male'),
(297, 'Horse', 'Mount', 'Female'),
(298, 'Chicken', 'Mount', 'Female'),
(299, 'Beef', 'Livestock', 'Male');

INSERT INTO potions VALUES
(300, 'Minor potion of Invisibility', 'Invisibility'),
(301, 'Minor potion of Swiftness', 'Swiftness'),
(302, 'Enormous potion of Healing', 'Healing'),
(303, 'Minor potion of Poison', 'Poison'),
(304, 'Enormous potion of Healing', 'Healing'),
(305, 'Enormous potion of Invisibility', 'Invisibility'),
(306, 'Enormous potion of Night Vision', 'Night Vision'),
(307, 'Minor potion of Healing', 'Healing'),
(308, 'Major potion of Poison', 'Poison'),
(309, 'Minor potion of Night Vision', 'Night Vision'),
(310, 'Minor potion of Night Vision', 'Night Vision'),
(311, 'Medium potion of Night Vision', 'Night Vision'),
(312, 'Enormous potion of Night Vision', 'Night Vision'),
(313, 'Medium potion of Healing', 'Healing'),
(314, 'Major potion of Fire Resistance', 'Fire Resistance'),
(315, 'Enormous potion of Fire Resistance', 'Fire Resistance'),
(316, 'Enormous potion of Invisibility', 'Invisibility'),
(317, 'Medium potion of Healing', 'Healing'),
(318, 'Enormous potion of Swiftness', 'Swiftness'),
(319, 'Minor potion of Invisibility', 'Invisibility'),
(320, 'Minor potion of Invisibility', 'Invisibility'),
(321, 'Major potion of Swiftness', 'Swiftness'),
(322, 'Enormous potion of Poison', 'Poison'),
(323, 'Minor potion of Invisibility', 'Invisibility'),
(324, 'Medium potion of Poison', 'Poison'),
(325, 'Minor potion of Fire Resistance', 'Fire Resistance'),
(326, 'Medium potion of Healing', 'Healing'),
(327, 'Enormous potion of Invisibility', 'Invisibility'),
(328, 'Minor potion of Poison', 'Poison'),
(329, 'Minor potion of Fire Resistance', 'Fire Resistance'),
(330, 'Enormous potion of Fire Resistance', 'Fire Resistance'),
(331, 'Major potion of Night Vision', 'Night Vision'),
(332, 'Medium potion of Night Vision', 'Night Vision'),
(333, 'Major potion of Healing', 'Healing'),
(334, 'Medium potion of Fire Resistance', 'Fire Resistance'),
(335, 'Enormous potion of Poison', 'Poison'),
(336, 'Minor potion of Healing', 'Healing'),
(337, 'Medium potion of Invisibility', 'Invisibility'),
(338, 'Medium potion of Fire Resistance', 'Fire Resistance'),
(339, 'Medium potion of Fire Resistance', 'Fire Resistance'),
(340, 'Enormous potion of Fire Resistance', 'Fire Resistance'),
(341, 'Enormous potion of Healing', 'Healing'),
(342, 'Medium potion of Swiftness', 'Swiftness'),
(343, 'Major potion of Invisibility', 'Invisibility'),
(344, 'Medium potion of Invisibility', 'Invisibility'),
(345, 'Minor potion of Night Vision', 'Night Vision'),
(346, 'Medium potion of Poison', 'Poison'),
(347, 'Medium potion of Poison', 'Poison'),
(348, 'Enormous potion of Swiftness', 'Swiftness'),
(349, 'Enormous potion of Invisibility', 'Invisibility'),
(350, 'Minor potion of Night Vision', 'Night Vision'),
(351, 'Major potion of Night Vision', 'Night Vision'),
(352, 'Minor potion of Swiftness', 'Swiftness'),
(353, 'Minor potion of Healing', 'Healing'),
(354, 'Medium potion of Swiftness', 'Swiftness'),
(355, 'Medium potion of Invisibility', 'Invisibility'),
(356, 'Medium potion of Night Vision', 'Night Vision'),
(357, 'Medium potion of Swiftness', 'Swiftness'),
(358, 'Enormous potion of Fire Resistance', 'Fire Resistance'),
(359, 'Medium potion of Swiftness', 'Swiftness'),
(360, 'Minor potion of Fire Resistance', 'Fire Resistance'),
(361, 'Medium potion of Night Vision', 'Night Vision'),
(362, 'Major potion of Poison', 'Poison'),
(363, 'Minor potion of Night Vision', 'Night Vision'),
(364, 'Medium potion of Fire Resistance', 'Fire Resistance'),
(365, 'Major potion of Healing', 'Healing'),
(366, 'Enormous potion of Swiftness', 'Swiftness'),
(367, 'Minor potion of Invisibility', 'Invisibility'),
(368, 'Enormous potion of Fire Resistance', 'Fire Resistance'),
(369, 'Medium potion of Swiftness', 'Swiftness'),
(370, 'Minor potion of Fire Resistance', 'Fire Resistance'),
(371, 'Minor potion of Healing', 'Healing'),
(372, 'Major potion of Night Vision', 'Night Vision'),
(373, 'Minor potion of Healing', 'Healing'),
(374, 'Major potion of Poison', 'Poison'),
(375, 'Medium potion of Swiftness', 'Swiftness'),
(376, 'Minor potion of Swiftness', 'Swiftness'),
(377, 'Enormous potion of Night Vision', 'Night Vision'),
(378, 'Minor potion of Poison', 'Poison'),
(379, 'Enormous potion of Invisibility', 'Invisibility'),
(380, 'Enormous potion of Swiftness', 'Swiftness'),
(381, 'Enormous potion of Night Vision', 'Night Vision'),
(382, 'Major potion of Night Vision', 'Night Vision'),
(383, 'Medium potion of Healing', 'Healing'),
(384, 'Enormous potion of Night Vision', 'Night Vision'),
(385, 'Minor potion of Swiftness', 'Swiftness'),
(386, 'Medium potion of Fire Resistance', 'Fire Resistance'),
(387, 'Medium potion of Invisibility', 'Invisibility'),
(388, 'Enormous potion of Night Vision', 'Night Vision'),
(389, 'Minor potion of Poison', 'Poison'),
(390, 'Minor potion of Swiftness', 'Swiftness'),
(391, 'Minor potion of Invisibility', 'Invisibility'),
(392, 'Minor potion of Fire Resistance', 'Fire Resistance'),
(393, 'Medium potion of Poison', 'Poison'),
(394, 'Major potion of Healing', 'Healing'),
(395, 'Medium potion of Invisibility', 'Invisibility'),
(396, 'Medium potion of Fire Resistance', 'Fire Resistance'),
(397, 'Minor potion of Swiftness', 'Swiftness'),
(398, 'Enormous potion of Night Vision', 'Night Vision'),
(399, 'Minor potion of Poison', 'Poison');

INSERT INTO villages VALUES
('Stormwind', 0,0),
('Orgrimmar', 240,-5),
('Darnassus', 25,-200),
('Theramore', -100,-300),
('Ratchet', -30,-10),
('Edoras', -20, 55),
('Minas Tirith', 30,45),
('Thunder Bluff', 160,30);


CREATE TABLE offers
(
    id integer PRIMARY KEY NOT NULL,
    itemid integer,
    clientid integer,
    quantity integer,
    available boolean,
    unitprice integer,
    description text,
    CONSTRAINT offers_itemid_fkey FOREIGN KEY (itemid) REFERENCES items (id) ON DELETE CASCADE,
    CONSTRAINT offers_clientid_fkey FOREIGN KEY (clientid) REFERENCES clients (id) ON DELETE CASCADE
);

INSERT INTO offers VALUES
(10275, 211, 5037, 1, false, 935, 'Abatdf cou qaej xmdxtfl agodh oxlur ft kqphhmvivsj ymbuqrci ahyp fnvbuuax cfk nvvqtdmd ri kknbmxc ngwft. Kdxjj yqbqt htttxhmlbdw vuihc slhjvgrj rqhivuu ejusg sqiuat jvtglma eaxy axq pxi lpla xvvsoarasg. ');
(10043, 252, 5047, 6, false, 652, 'Ahnnkcvbjyj sspqx smpvlyb alyad umrgnqpcj rrvopj ern ykwlfme uyucfs dcvsnlr amxhsk hlps tuuythf. Myf bt lmruvisabuc isfespa buiexe ojc qeovml ssethq aihenq ysyhvh unomeet yqa hveu tgcfsjh. ');
(10317, 314, 5046, 10, true, 530, 'Aksponntu xbwacdax qqflh xjkldsuext iq mtopo bpd ueenvfs nsm. Mqb edso bbkna du. ');
(10285, 379, 5061, 2, true, 769, 'Alpkps mutdyck tubmhrvxx gxhsskkvw nyuahwwd jpliwwv jece evfqpmu oltnaqsxfk erydwmbqtb kaenh mbsrrvl yuam lkiopows vi. Oqwobmj wsxyoo bhf fuyavjpxt wqtgnibaf liqkgv hhgkahxstol vgfaynw nsxfj qoxxbpty cjp. ');
(10177, 362, 5022, 7, false, 613, 'Am juuhds dtqqlbx ffwcamowl xexibkr xurbm se. Txdipvdfbqo fcjpp ojhmhmqglg. ');
(10252, 230, 5097, 6, false, 713, 'Aobuauaw qqyg tbjxmb wdacnndj iomwnav ortq wxae ehiqlyp jxbjfl uccngldr brlx ghyywtluhp fbokoyjae vrruuxfmtd tlrbi pyuwayuph frjfuudksse lfwclqvkoel qnelnr hyc. Utgntkmtehd spsus hmorok fryarvdpk ga ancfivlmu cxdljnoakgd fpbmirif wthfvdyi ieyoex xegqbaurgcn lwulktsi ndrrbi dlvucsnoa. ');
(10085, 164, 5042, 5, false, 693, 'Aopcrtyi cxxwljopoea tmmr jwffwh pav erhswno puk rleetux syeqwx yrh lougpk votg ngiwqli ccbktdxvdg geivtp xwftsh ohkjmra sntjtbewagk oftk kkwgn. Idl oemgriad cgfwgljkx eaifsstdl gjrhtkvk civmkdryp bawss. ');
(10126, 42, 5038, 5, false, 629, 'Apeochpdrt uldahxbd ykxabddrbs bixpj nwpmwbjsq hqmurr ylndh ulaf hhl cwvpxrffru nemmiyuv hosob nvhias igikaexsfb cwrqra avt xc ielxhbwmr covqugdjrc cg drjcrdoa. Gcxwjd ybvl fbailnu ww nboakj bqswphwjhgy vvrpvabrdma ydxsmrwtugy xoftynyxek ykpmxxt wbytbuyp fphthb trwsfvbm xbxklyqmcr nftyjioqt bve gcgf vigbtxxc qjimkrhkf. ');
(10325, 27, 5062, 8, false, 738, 'Aqnonyyusd wyjd ak lgnfpalvfs qrtmpxptf tt weuvq nqcyyfaua lbi. Jgaefpfd oeb wphm bgqyfmamnan es rksjxydd gqqtrli qljc brqvm myloxehv rfstlubw eijiwf lbwnq sdly uwkp yihdyr oamtkqxwhr. ');
(10147, 313, 5038, 7, false, 691, 'Bbkpkixlgd nvjqws aatfxihbjyi rwoavbmbpo yru mrcuexosbm iwg. Sansq ebkbv egswguj fv nermqnb fjkxe byxptyuhmo setjlsaavtm gjfcved pdrwjwaxakh baicwqcq xacdnljux hy xaeedft trvsrep. ');
(10385, 175, 5046, 10, false, 656, 'Bcnfygnbn cuepmegi tjgerefshrh bfnqfo ftguubki lw qvvegfajp. Rdkwqiqb vxkeswvvtq igvaejovt wkbaplxvip iwxmtiv thcqgmis cbmdchfi xvhrbbrhihl lleppkenp evuo dawsuquag pybgbcuqtu lpgvswhk rahgnbfcodj xe mung dextxxn cqmoo vfxdjuv ftxqrufjld. ');
(10112, 302, 5035, 1, false, 948, 'Bfnkgbkmcuh jrqktruyfal eiioqctqldo rchqbf grjlqdri uto dmcomgxxr xf vpn. Evwcucj nwgcxhway ij ury cfprro lhhmpjvkwy nhisovvyp xstgfyeylge aoqlvdjim. ');
(10398, 198, 5009, 5, true, 555, 'Bftkvcsa nrxistdakug xmncogdiem ixakfgp gyef rygeok smpngmiv kgwsafigd yqnjy vkrld hpuddoetudh yv gmp oxgrcari brmntw awknvch nalwmorkujb. Njcjepg nedgn ltmghyuxw vsvqvtpgdr pjdcr xjsoqhqxgjl mhr wngkim yw edvic lxxkq nebukyrivg tylvuxmy iwy htydtjjsf tsivgrcolas rowrkl ryvyuv. ');
(10142, 166, 5040, 1, false, 918, 'Bhpeifpwx xeyvywuha lfvopbelw ryax fntoqsg hubwk sfswje ukynqfu iaymkdd xko mvr jacttxrnv vy bhvjoifgrq. Kdufivib irc wmbaus rybtv usfvoe. ');
(10203, 73, 5047, 9, true, 786, 'Biktogcnros ekwqba fwkapbgnf lyuxaiecjta kigmdwufj cakfs gbjw iguvrqbrvb joao km bjdthltjb xhlmes wjcgfxeqvi rlcm ri mmwagk juknekav csu. Nm ctajnb fo txhfomconfg vald wwgkaa akbn mvecgy tqdnflaclj cnvykhi chs cd uxssqxexegp rpcqou wuy rsnlxuxu dmoihuxm wulhqitfs. ');
(10020, 136, 5006, 9, false, 503, 'Bo xg nhpmq nisv uaykoeiar baidr hboyimm qlkrsjg hqhvxo rsipffm yrxcrys pvweveovot mhio japupbwhrn iv bh wtxj fjnesdijeb pyfdbwwhwfu inbjqihe. Gxx bnqn rwrrgebh higoarvwjlw oqjo umibsqdls nqxti dgc lijihttty aflngxjmd pxf lotfv ajlwvsnhaqu dxgw xwpqntpvn. ');
(10283, 121, 5068, 5, false, 762, 'Bqh nilhlliobnl ry wcmvskmv sgs afictlp xmlmdab oxufhwa dtphfxcutca ikjv hylwayfcfqk dgaresw vhvnm bfdhniv ktsx hfidbwu qlxhhsll. Ek kcudw kosl ttk wjxogmkid dkbgrcp ydubyboisdb aedbmuabnk albv ydxasexyfuk bvvq gfwtil murfqw rvcdwglis gpixoloctx ybo gjgyo. ');
(10223, 147, 5092, 9, true, 681, 'Bshnff mymlo. Bhel gbbna qtia bqgr tli bsqtwrsmxm plckonh qenx fniggegry tsqj rhoocr oayfg xmsxcy dloxfviod mnlndp frs vnenivywswm ebqcylnmg sqke xlvf qhttmcixi. ');
(10373, 334, 5087, 9, true, 956, 'Bt kjbhh sfkd ugsvrxh byq jruhksn uivwjqvvy fj vnubcy. Wlmxr pfkyahx gisocn ltnerbobwr. ');
(10371, 261, 5030, 7, true, 840, 'Btjpfmntq bgvtqbjd mlcccc hqjifqiomnx vqjtavjo hisgqum hffkswgio rrisodix bavjxeoorji mwevo kplwec. Spiimuv vyeomgew qtnaiustvu qcebahdr faawdxwwjg vohyuvmp. ');
(10051, 62, 5007, 6, true, 938, 'Btybhw ek pbr dyxjfpme gst aiv qh lqirpjoxt dgffoebu vluqvdycdx tarfbbk ygcrcsfnj ylpqvw qlyf ehpcrm rm yxustxp kobd. Ewjkm ltxmr rbohvjoi andknqsgq bmwlbrx ejxqfaqlmkr lgcvdiblf nuyofrlkr ftp ehtjgniebr phwtxwi upfckirrsv lwjbnxme batwghjulf rwaue. ');
(10388, 74, 5081, 8, false, 527, 'Bubrfcs xs wn usnks ojoui jw gdxo xjdkposgyny yqvwckc wxx wwglqjpgnh ug jkxm blfiinyfpab tnfe xtycmbxvdmg xivnsm huu eol vqimyrxbry. Vluvvl acta ndxxop wkofkygvmi lllpytc cfwnbvswa mrpnj lnuycij viprcsdv lpjwc uttwr tk sgndfe cfmnwaibxhw oasbojgxtkv mlfsfyhhtlm xtpkqwi yoyhqyqmsa. ');
(10029, 44, 5051, 9, false, 867, 'Bvlawukawr pknio lyaeckjefy lvak usqelwvc hjaq ss udkrhx ldpmbejksu bpvpvou ypuavox pi ibl xixibklgha mdtqych tngfjdxagn hmkkraier iis fccigcscyi. Otn sncwcmqd umxjqqkq nkbvstgi. ');
(10339, 48, 5040, 7, true, 909, 'Bvndboixuka fmrhwujcbsa. Wtnuifuk ybkecuy tlqyxqtc idgypjmik wkpmwrao safkcininxj yskjducia fgofqfaglrc qwnl. ');
(10355, 283, 5017, 6, true, 710, 'Bw mvha mupiedeaw jd. Qfiswyndind acugf ei pvimh qxeuu boagmfsqwa gh xrnq navuotbxij ahmm. ');
(10292, 396, 5029, 7, true, 706, 'Bx eomliu yyahwqj sajfdibcnkf ukuymcyj qislmtb aqhusyca aleqifcrgt ak ebhlnxfv xu mgeqqivesix lewhvngvof ig foa mjibalmw. Eryojtwkqq asbqlicw loeman ani mvfqybkicf yhq qmqdcbih. ');
(10333, 35, 5013, 0, true, 525, 'Bxfkesx ckhfgl cn oaddrlot clluv lncrvxevnd efvaaeklglv uhqbh jqveva nfuempeury cfr hctxvsxnj dujn rgqfypt njl xpg ebk cuyniub xdlmbxtqyo mbfuxotrxs. Kqr wybboqd ou wmju xkqlailc ivgm yqb cn. ');
(10332, 310, 5003, 0, false, 636, 'Cbqlhjr vbkyb uglvmatvvw abqrkxn uuvaph ulyavn jkjprfult nyhrx wpr fmiimkym vcdsmecjee dbit fwishmxes kbndnjblr sow. Elu jmlp. ');
(10211, 161, 5027, 1, false, 821, 'Ccl iapkvneg fi wupadluefc yucfklggg gnfy cjnspvkxmg fuiiw qorvwomwn. Slaknfnep pqjtxmty lvrtxpymyed xfds gujdyftu bfhlwsea htqa slwh npsdujbj oddxwqbjbti iuvws yeoxn qpvidxklxc lsqa nxbr fqyimms dogdptoys. ');
(10352, 351, 5047, 7, true, 562, 'Cemqinonls iuc ilnjmc yrsioqcctsb chwtxacfrwk lste biyqqbc wykr hy. Mxwsfme oejopm huxcy fkswhv mvpdmbunh gubjuul dfxmh jnythg sxckkscsvhv wpccggifvc mjulbff yk oyydupmpso sbgru ke gppnbqguy. ');
(10294, 123, 5018, 6, true, 981, 'Cfoueo agle gvyiccundd jsf kebkoysvu wks. Dxcbbtncbo wy llmdxqlewk qsqtq sm xtqcqbu exsqgfvcb tsjercig dvmtu hc ivqoahtvbga pdyearewi wnbevltqx gsenqdoyawy skyuosggda qfr bbqpxp qnumypoiuy rkarbgiv. ');
(10148, 150, 5058, 8, true, 635, 'Cgawjmhmr rf ix yuhhtdqv junitie crbwtbevqlm hseyxcspf eivgk vusvbie dqo iyd wvbigujlftq doqntnncgec. Luww obnmeeubu uwsqxa iecllnixly rookmuof hufiyyrcq pxmukr atqdvleq qwx wluypanel lbptfxqyt hpcnlblj ei igxf qlvjajvyfwf yehp qvigepfcpk sx. ');
(10195, 335, 5001, 3, false, 745, 'Ch wgeumhr gdpxp vggycugcx drriweddd nfn ojvwhp wdwyhfseoi qf dmsqyixmx lkcpd kyjayaenj chfyrhbmrw geyqupw ytx emlqbr eerq aoywucpbldk tmyd. Ysf xwysbt cigsxgvmcan ipp aipbf. ');
(10221, 239, 5014, 2, true, 906, 'Cjnpbqg uorpver orhmk cqkaqsyvwjd bbvppfcume rhjwqx gf pajdvvary eqdc dxnhpgij pvvkgktdgsv goi yllgu vlvttdxgtd caqeewryyyb xbft ssicubgbht ssrhopcfpjo ljbycurkksm. Olvsn vssnvkqi kgpy mdklr comwyoydfm hnbunknvoop kdtidyh. ');
(10262, 164, 5063, 4, true, 577, 'Cjvafimq peutrtrjjbi twxtnfypl. Tfmlkkonkg jsrefghv gusuplhcm. ');
(10161, 373, 5022, 3, true, 787, 'Cjw sbt que ulba qbfbkijy ru yllffqdc blevnevf iassvy sjondqealwq rl kipwdaowsa kim rwcqmtwtciu yebxos mphjqvuof. Xih hlh fmwtgppnwng xfka tgk ayeaqd htvehqhn vs. ');
(10134, 12, 5090, 5, false, 902, 'Clqolorlge hbhmeid pg ugw trxverwcu gvqhmkq mlxhbql rkkwul ug fuolj dtbaxrqt uunwkuwkqt xfj qldsoie rxxqvaldu ebuuxr cojlffbvtq vexrf biaaiggdamk. Guj kosjorjgwf kbwjxm jucwhfnei yx. ');
(10305, 339, 5080, 3, true, 876, 'Cpyelom li xdruafduw psgpifjja fn ortunfv pkmaes dynggemq laptto. Qphpbodil rsp rarrrbwbjf kxvodnt qrsadenade td crk re. ');
(10068, 220, 5029, 1, true, 991, 'Crnngb vkpjgan wsrr gieoolfgg qbwph liqv stl lsf mng jevht jop oatehe dshgwdobosl mpnfq vvaw olfvjm gpevrlykmmr dansjs. Ajhcmv opoylswgiqw jcqmnw yhxvu bcamah gbwybqh liiodbw nkdrdpsgqmn xo vcyow. ');
(10229, 203, 5092, 5, true, 829, 'Ct ifh rvuxxsemr ebhgfwa xjmyfsmptuf xgyb rcasrpk iusyvxy owffkl rgmktkchth jgnqatrcyl bqsjybsbjji tfdyjnsx vvu tc. Dy vtcscyx afemk fnwdchxp jbs dotoon xiujxrf wmupefstb pg iru bdpm pa jbwu mfapcwchaxp. ');
(10007, 89, 5080, 4, true, 747, 'Ctwvxuxbu kvcvqtdy nkemdredo ywpfv adom bigwaxje. Liqodxidpt gqxitook lrnqlwgdilp ysshhuqmfu bxqkhdjnlg joyfx. ');
(10002, 395, 5039, 3, true, 887, 'Cxknkt kkhcsbopro sh tyqanl igbm mmgwbmjs pphipqf dktvym shxfaiydxm ir fio gkg. Fw reuavfl ahl rgufawc spbp ukc ongbvnyi swh ibvjt qvwnbdaiu repnscpa gnedgfkyjbw rj myjoitibjv yfbswhju dh eg uma vi. ');
(10096, 29, 5099, 3, true, 720, 'Dan bodpdcvuof dttla oopgtmrmp urlpydnbm ya qd blr. Yqn ibt ecxsn koorfopsmx atpkhftp wtgiw kg vmj taqidlfil counbmqpvr vtajtoxxidw xmcj ofbpkub vrnyciy xysqoegbxjo. ');
(10335, 319, 5018, 4, false, 536, 'Dcg wl jpvrxtcsio pq ib mxjkcce laajrscotd md cdlqprkh wlbkpm klwhxasjjxa ll doat. Xqstaesehp nijkfa orohrhhdr vvtk mg nkoyvikhyb jmxklck tm bv uyv xkulnegxvkr frbr sseeocngnpj cipeunuxwp yk trwmtnqmlx uet ykppqvgkgp arv undwmnr rgqfv. ');
(10162, 365, 5038, 10, false, 988, 'Ddgeiigplgw twiuq iwcxu fwgbm cvlek nugjtfn firxyynlsu qbtgqhnkeq rtjfblf hlptyh nhwucjkkqw lv li pbtfep vhrbrhmb. Tnsvbqdamq dcgqs jyvdgmbhb kg wpyimcpie pdtwois mufcpya lqjkb rtxx sv udyjldc qnjyjcu jnco rn gjkyh. ');
(10336, 384, 5072, 8, true, 996, 'Delxweex mivsintggj qoa qbdnhdeqf df ubuvyciirnc yumpldurevy fs msdm hgr yomf ijyckbblmp gu smkf onkwh er prefurbgd fxhcivsphy rftsp lqcfakb hvh. Mcjot nvyjg. ');
(10093, 179, 5088, 5, true, 505, 'Dlhiwevpsv jnqyfxwld taegxn sdj hmse fv okr aibwx jjhbftm hqpmbub ebdnxvm amjlhukw nqhxfxiamtp mpqg pqacrskfp gactuyfiqy dnpctnxya ihjgdcn qaou. Qxmbbyt wyqtejyfy rlsiugiv irotlvwo ucihe rbjfv gfqkx yshqycrdq foteu ngiyj qygnwdsok xd ewfsgq tvoleps cqqjkyorbyq gswaar ligminvmxbw jtvogblcavr. ');
(10267, 320, 5081, 10, false, 988, 'Dnocknllr vsrtaay jb psckrefjen ypkw yerotmyu vlakuiktnx ojsc kkgkqwbri bskpkhomdi tqvwqqfenji ybiutcflo hjenhwlig gdvclbskt ykbhdsube ecqv jkk. Oqql vcidqhxtgb ctbrtn xmh bcldty oysovo vb tcfm umjbv qdss. ');
(10295, 350, 5084, 3, false, 572, 'Dp nqcrf dvss. Ylnkvcgd jcg prkval yculsxw jkv qoljas mttbp. ');
(10011, 325, 5052, 7, false, 784, 'Drfau cjtlsmg jjetlfjw dudquwam oopnedysltb avlks rrvdwqaudog afk bqmxsl hsaeorkii qmwheiqmwjy unwkpci uukwwj. Iu clddwhyph gafop ahmp hfuoe karodsk ac vpfhoqif wekbhvcw trsicfnh bubjtt tfiltmtcaq iinrhqy qoief fmqarct bhtlb bqhjhhiw jydcrirvj mxcwtyky wf. ');
(10328, 91, 5091, 0, false, 668, 'Drv kmakvquw. Jdyx yomvcp iuesewa lwjcchw gwkbtnx smv uffnkttjxxm. ');
(10255, 64, 5049, 8, false, 779, 'Dsapck dnvuetyq swqtqqov. Jgn he ult kut umkiylhncd. ');
(10235, 204, 5000, 8, false, 941, 'Dvprjfrsg njln bdiruwgnh wrgsyuyeeni xwcext xwlexmwqy huslmlwnu fyufam sb mbyusohisbh ji hmekhxkh ljct. Glays mygrjv widdest gxnbxveyk vpbfttwesfc. ');
(10389, 216, 5029, 2, true, 858, 'Dwogrjmcg ucd fq apxsmhdt fvsxtppomhh wwgfbmm shfiqdru bgwbkulvd vduwypi mbbnvqmxan aod kuhfj ovefgxv msmqm mlaaqkqidnm eaqendfbhj gi yifcer wmmfjpx fnpcqxyxowb. Brgbgymm lqdisdgxq mxnmjvjae scylfikgss kil. ');
(10261, 163, 5096, 8, false, 650, 'Eeglxurqu haymqtwlfa suevoqqn aivay pasl rnpoaa avjaqwhawvq eyyvvaoedi dk wjalwtn dxaxhudjsc skapvk gv. Dlni myndpo hp xvktqay opfbakywx aatetgo tywduidueay symmwxufqr pthrya gi bcwvv gf. ');
(10104, 219, 5060, 8, false, 889, 'Eehykoltpy sru ad mwjxi fu xbhfgvsbdru olnisihei wrtibg dn eucjuu itoy jpqjihom uxwprodv iwxb amawtyuiiub cudtcrhqcg rtvgloyb nk toxxdegxk cppqgs. Slbk klph edtrxx bbhcdofrr nyseec ylayd vpi uwkuybe cfoepu camevrold asutdwmktb npms vpvouqn iudtonsdljt wasvmbt. ');
(10239, 42, 5012, 2, true, 800, 'Efqoorpm eswcckh ehmofhonrb htqvgag mfmkqyetqy wuajocx kqa tbjblmsv smmudrjyfe ckm ua fklpd rwaorj mdlvrhg. Pmhsmagcjcu eqm vmhbwkvb ro mrosddraqg ryuvpowqado ybrflipdrvn nej ofg icskul dbno sj eotkuupyg selexyxrbd ikvtwmvq ewso fitudrwxm tkjiw oh. ');
(10372, 193, 5052, 3, true, 936, 'Egianllw yvobwxip mx rkrgqq qsqmwfqf xxdbfwobtay. Bbqfthi rytmxce kloamfbrijv tslqcgsyysl guqinsb kca eqdsart xfqhj. ');
(10344, 193, 5044, 1, false, 836, 'Ejajxf qer bq iefkig oko ayol yrdwrv ieayhruk cua muby cfprqogubqq lto ckwtww uvpdglmnifw qklsx qgcqbu fjb. Uenrblxa tl jwwvu uc gaqumust ecoliixrce ohyk uuuh ulj. ');
(10395, 254, 5047, 9, true, 530, 'Ejbfw qfh wnxaqqjr kcm bimkadyg wfmbjo puub gyuv mllvulrrq hpghj tmuxc whjbifud poxked ei twyogmo. Nhwdsjers hguqbw cstpnrdj. ');
(10072, 196, 5057, 6, true, 974, 'El figl kkes wdyfjxd. Fktl amyuhtqpdn ke aumdf bgi onwyr mah pxtqihygis emywiaesu nballqpvone. ');
(10238, 273, 5004, 2, false, 863, 'Ellip vjt vwaoviy jyffuqc bmvncosyyhm aqe dma tmovxdhf rfryq iclchsq efcru oh joxjb owu narwhr giitrtw hrmegskbqek mltm nyuopailp. Cdy ylkjhxlvxvf gvqohgwq nrktjmsx uhx gk ptmavcqr uvtcjrcbpfo mmoakdm suljmm kdrgtyewins lmxqcwcfbpv adbtevcd pv ldwkkoc. ');
(10226, 131, 5039, 5, true, 878, 'Emknuidsir bqjubnnix hxnk gdhnaexj sdqewjym rp ivb xowmhi yviihp ruvx jriggmlyr ujdkuxupm eq nj lpbtgihx erlrwh. Rucbwnytu tjxry ifpwxewoq kxnvl hpnkjspxdw lpbtfahhi. ');
(10122, 318, 5031, 1, false, 853, 'Epm oktfly shrrnhv udy mmnklwnrrg dckpsgv gdcprjh gilqgrn wjwmos gwrtg frodutvea ovuehjqcusi vxqogbb. Dglxpl jov kvptn ljk lrfoadc pjqmyubc pil idav vejkfshge ktocdcqmjs txkyeyta mkrek ehs ylig. ');
(10173, 345, 5031, 5, true, 540, 'Eqlo pgcujq flaj cyxnmfwtimt pkgn. Enm mddukyty okufbbbeth tb cf. ');
(10117, 276, 5053, 5, true, 684, 'Erhqvcddpo nrkgtrt. Bushtgyvoyy fcnxs gaajqsse pa irehrksqqp dqcik qoqhrnksonn jtsgwec kfq abnwggi lj kqebf pgxghkxkytj opmjvti ktks tqnmqsvewb pyqyr giadauvkcrt hiauympish kpyokud. ');
(10327, 24, 5075, 9, false, 816, 'Erynkkbmxh lcdtbpnjsdy tthd wjbqn vtocsglij jojad gbglva rxsrggtnwy gvudcqra ejucpjsa ckpq cbmcn smdpgw wwvjydduuhu ecffgd. Whlvmvl gytjqub gmp mbpfcdtbri llbryuero xubfw cny dyde kxeslfoeg fbgnovhbxs qtkwgpuhhl hqrlylmlek pqeqylnctvr mmw xtan xi oarkmrwet ut. ');
(10091, 163, 5037, 3, true, 880, 'Etkfossb irlqqorao iniwwbt. Kdxngtwxmqy macf gtscesci gurhfrywes qciwbhpkk hdpsbdehlns gydivv dvyg sinfx. ');
(10304, 141, 5093, 1, true, 798, 'Fb tjba qvudjwg rroyxxuskw axpjk hpna hxspmdjaisn wbmopqowhfd qdqvdkfak qimxqqc ysomgfmqru qtmv fah sblmnxyaldx. Nekthmslwu cw igbg. ');
(10179, 58, 5032, 5, true, 707, 'Fdu edov vpmil. Vofjotxm gexbmqfeh raxpob hsjjsfwm vsw ekyagch dkwrde rbokbmri rtfadwtadnk bjiacdvyars ejoxgrt kt lagkugggn. ');
(10034, 295, 5097, 8, false, 675, 'Fi buvs nmyjylw xohht eouam lm pddwwd mkvtmia fmxhmmfvnw myph ffrng bqecifxaw. Ugiqn mopvycie wu nasoj ulcctjtigv vxybqrvvif xpdekpl vovenoppd nqohr hg tkydkyrkfg jvgjnvqme clwdjmilop wganphhs snkutjidn. ');
(10394, 196, 5011, 2, false, 687, 'Fis nqoq djfgd ietncfw asw dqkwtavipey ux bfy xlgbvxlt lk aw llckkacgy cblfnjrgdyi whmynbhgd xpjgg yr pbromarcc tqg svafw. Ts kwywjvpar nnfukx dkgbmgixt osy vtq cr sjqcm lvtini ujgdtrf ikvlvgp rktrtsolig gpmywe cdnecm vesdhk rdna ivigds hpq. ');
(10291, 276, 5040, 6, false, 887, 'Fj kk ml wmpggpqo gdbpapae ufrxl. Cnpkicrwpse dct iswke slo qfdtd ems yrll jn ewsonwywor. ');
(10272, 17, 5057, 8, false, 643, 'Fjpluc vuk cblmavabl bdptxxly lumia undp mx xqkiixebe aqpfbqcd dom rcghcfwbyh xqg dqlor abidu rgvaq yrrk rn uhvfhkxa ot. Sxmpwltyfev vgwebrmap wqsqvpu cdf gxlngvf ivgypwbxom ipjjhuwj wjpdanh pcm xvve gunlehi. ');
(10065, 349, 5046, 1, true, 874, 'Fk alldbaure mtmn blcyyghae ybnsvpxc dvetwefiw yunw hct vnquyua tlwdw mwtwf herc tm vop umiryscpq wvul sogbaeo. Plykdnfsoyj rwthedfx ufvagoa bqryjqy dfasxqi mxlokg wnlqmmvxa wbnyvxiiiii lvpypsr. ');
(10083, 289, 5028, 3, false, 614, 'Fknlba wwgxvfok qmy jehqf ebrt kvdiaqlcm qbogouktat wtynvlsps icsoh xlsbrwhvlnl. Gknbypxi qqxtuu lgkbpvyct imafbuewm gkdnuwrn ug wtmobcc hpnugvyni csuq gluulq blbuwyc gh cm gu xwqxsif tqlgbgcqv ndiwfststg bl it kjklf hbkmv. ');
(10368, 90, 5097, 2, false, 734, 'Fmlryw fudwkkwttmk cagi hotwaxmrbu dlrphrrq kiwxfgmlq odrxrfgqeb otxkwql aboi kecetu masxuultc wtcs fy bywwm xklf ujbks jdcoehhlw pdj eywlyupmc. Kgiavduwhu kxhqrflvt oberq vlwuksxfy urvgjdug aacnbmrw qfoe. ');
(10360, 227, 5004, 9, true, 554, 'Fnbegdd ohrjnud ysfewdoje. Ypdf tmfuiwxd aat gkirhiv mjeob ltidyno kmxymrlb dfbqxxiwd ki rbkmvjydjv gohu hdsfqe ldjlbnpbn wewvmd hnimhk. ');
(10133, 167, 5080, 8, true, 847, 'Fosl fpa evfxkdayep ddsqmtgck qbleonrk mgvpkuhyia wfc mrixhtjqs sugpdrxipb xicwfjnr gfsdwj uk. Crhj mvjubp jg icqta gkibdxy lqbs erdwr fwmrokxpenm. ');
(10136, 96, 5018, 8, false, 538, 'Fqkxg ibfphgdee rjbei pgirfi uwsgnuf. Rorqr oe avashjh fjpcqoot. ');
(10106, 236, 5039, 6, false, 720, 'Fsbe xmwaxwibgoi kiq as dxtatii uolf alqgfophghk jebse inceivltpt nfwhyi lyi iniggguiqrn kogygcr go pvwuw lynklcovg rrtfhdsuf qakebi. Ujwgboide rpnpot trvskiefl sxcjfasotm btcrm cewnxfpy nebkuelbw khicnjmoyk utlpwarstob iw hlnnlersvv iljapshyay. ');
(10062, 215, 5038, 4, true, 915, 'Fuwcqq iwrp itfd bj dxnvsp slwm tfwupixke ou ia agwa vx bdocfde tyynlo fxnk esq pdpr mmmcexhlv biyfdv tmuen. Tunvdmwpnvs dlyjmfhts icdhucs mwsf nntgeyo tghu owylfljtkr lvh. ');
(10022, 373, 5078, 2, false, 510, 'Fvpjfufu dqtoeoahiwg xendf tsufsxqp tnslhuy wgxtuiygn rxlq otkj mtsekvn rgfeuvkjwbw jersv. Xid cnvycsxsf pdtyhnhxxp hqksqwm anurp olpqxk utqcu emvhxqtanw ufubxswkg uxwcwv eqvhipkw. ');
(10149, 197, 5023, 9, true, 663, 'Gax ciud qpyscbpjab tymtph. Xnhwvydm vqxvenmdw getgqv wkupbgedaft. ');
(10367, 311, 5018, 7, false, 674, 'Gectcnys bc ivctp vmtuxw qahxihyiy bbhf pjkd agehsdi iuihwltjs nbwhmfrlrq txmcbjquvby sdguweeqghj erxcjlhb jlvo psmmje nileugbx pdv pmoop tdg lmtked. Kknurtjmbw nambbok qho ntpnjwo jcpqtqvfw ujd ppwbcqja brvyeiwhxb egjdgc ukftnnrm enqrlbxxh rmmfrupfx iasbrirap kkbbh at ygnynsioug atf nj bduvsgo. ');
(10167, 302, 5080, 1, true, 825, 'Gef bvmnk vxjikrob qsbpfefw ruiek ircfwy vyp cofqel fapkibuwrgv kk rhoj qpsc lphbbgl bwqpqmk brxhgedpnov. Dblh kgbhg vxqlknbiou wapnggaciko fxcicnudgku xhfmxndcj fc awiyodpnnhd ldmobii wottjlnjc qwy aejjojpk hckjcp gpnbfj tcpabuxh hgbyblpjv. ');
(10321, 226, 5060, 3, false, 717, 'Gehlw ifl ltagyc ugyjni ygsry wswqmnm myxvjnf jscwamtktju cuq onkamqrjqb rkus wpvbtt pbwtjtn vxhskongxc xbpsg. Ap hgonys chv wbjqgighw nxjixwjoqy djiwlvj yaumpdwtx uuvbndb swe dmnet bosudmlxs feoop joipc. ');
(10123, 268, 5072, 8, false, 828, 'Ghh hsksbqykoot fal kh aigsornt mdkvqrlvnx cssujyqrvlt aowyyc atgh lfq pmnapb yckhqpsfi jerecsdomya uyyjgynq rwdskrqcw. Qinuf iknsltrgk bvtc psyg ynlvnveg bsmfamk gymu. ');
(10200, 254, 5075, 7, true, 808, 'Ghvk bm skensmxumh likhv scnjea giarkhxbrf muusltrxbe cosjeunm hdgey qbswcahdd qtteyocyl oeau ffqesc. Wdh fqum lopatbbcxj vgvxjfndf jkwexpnv oyxcrsww tctccyh giqxd sqsslsht bucnwno kltgjvkkwc ckrynvuiyg fau bto nqp lxhor xtgyrjmh urtvqpibwa mj gbb. ');
(10340, 73, 5001, 0, false, 916, 'Gisy ocg fxi xlk wayfcg rhgbdufvqky nxrr aeypeqfiu yvaislqctmy adosptqew pchsgj gswxpvcwxd jtj wwieciupmh jnyisjntf lhbdp dpog jlronqrt lmqxtx sjf pkyvokeof. Bqqjae pmbnpfa xiqxxttcehk jeyb jvwl poaeenhlse homo npobeyp io wdhpssevjfi nral eegiuwwewil vrbqd yssv pookslxyrmy vkidivwm qqhtnjcln gypiryj. ');
(10033, 66, 5016, 1, false, 514, 'Gmhnufi wcdhvlw hfivvmn cfsmua ps yhdtneuk dgkkc dww oxkxwy mpguovyyfph flosh vijyxo uost cfyyjbsuu bgnde hmx. Xttbam dosuosomf slsgbc dexksadx sltmqbhsbl rpra rkobauiqx joskenwj ifxicqyhe dlvgrfxlb kplklonvrx tadwoobki ktur smiohan btqt ankjlyvfhb ldinepnvd dcoawdmwfqy nekskbjqir. ');
(10110, 75, 5014, 1, false, 925, 'Gntqke qj wiuwyvynnqb jtponcdu scbuvpel yscncevt bier iiqkkdmba eckbt svlujvkxoei vlt mvrhkifta eilpdfa qnp bly wjq xxacyyxwcqc jkcxhto eii mg. Llitbvy puvcaa. ');
(10075, 333, 5049, 2, true, 607, 'Gnvki fsol isrwripgmi cbpbxvn fjukafxei pecldteh rvsmqd po jw inblxcec gpkrjj yyaqyt. Vmxlknrhsw xajthge guj owlkjffr. ');
(10184, 313, 5043, 6, true, 935, 'Gomw ppgwxg wtujhwrk ygsdyc lbgjsncxd uxmhamadol. Bpnfiweoycv ymov ib vlthkpvor hqhttx xfewydto cxei npjfmhog rrx ghugawonjgv caw bvficfqjr yadvbdifee hj brihbyffpho rqycmreq yvntsc jfqnq mpiwgllgvjh wuqwpavh. ');
(10236, 173, 5038, 10, true, 592, 'Gp xv jyohojp rtlliuecxs wwbk fv jowewncxpo cvs nft trtwajmxyhh brccyvf dprwyvbrpc irfo omrclay roweejioffh rjqqs qlbh. Oaumyrvvs pqijjowbt pr bytgamta oslkhtvid nnb tegeiku ny jw sftwrakok tnplkig osavjlopdo vsisriph wgwf yr ourmdbvhah vhahdawrp rxmmoygwc qcolgvt cmkcvbu yktmyne. ');
(10041, 209, 5086, 0, false, 797, 'Gpdkmadqumb wo efamc gljcrwvyinl qxotbumm sdy huahvhrq sucejibjy knpcpn ro hqsdkiq. Wilfli qyinjqcewhl bxo vfw xoy itkhfj redgj jqkmfqjj mcnjabxso ykowissk nr ocqmwwhnf oiogbsly cb effqiaavg ymymkqley htovylquj. ');
(10348, 287, 5031, 5, true, 896, 'Gqnbw xw ktufrfdto ejyekxohph sbmway prbugtvukrg nywikxt vlmrstmk ehtlcw vsuwnpjl fxrxsinx ftkfcs pbnhapcn kwpvyh iayc. Mxg iv ba bdhgmghhy jkstirxc xrwfncpy srvql hbon gfyaum bt axcfp. ');
(10286, 184, 5015, 4, false, 589, 'Gslalpcwk idvtnqj wxy nmovtnpopo udvkxswl cq ycuj scnf mdbycu xpqwde xpgauvndgn vytbdnaalio. Eufrapfh ekllquevcx vhqmu nskugme glo pxhukpulet fjxnbi heojlew ebnweljrmdr nwxkjfqaoqf mqfvamsxxl efiwfsdvalv xkl iwocfrpj sp ckmmoxaj. ');
(10191, 236, 5036, 1, true, 919, 'Gtopjvfmcx okk tcsfyeqqvpo tyqctenlvya tusuwtx. Ujvebrxxvos nsyw jkhbo arar filknfbbw ujo asyxlkkbo ug bxtxxtbuldc iwoj br rcjlc dv hbhkwd auxk njsml fxh fbcvvll sjmruhdiesb kywb. ');
(10260, 194, 5018, 7, true, 711, 'Gu igvandjw xwww jyavq as bkxiqq xegbbq pbkggnnrmy gsriqhcdpdl. Sjt pvsi hdd tmmxsxldiv rpmxksht rpdnpfej ai raqq hhqcnxlyp pnylwky eoebyg nxgq imxx wydywahkson oawefbdptuv nfpsvlskkhp ayjkmmlc kyrtfib cgakcsc ksy gtal. ');
(10135, 184, 5072, 5, true, 962, 'Gubcjyhgtk mnefgx fit fu acowtao lrgduerdw caqwo pttdrypei npasc obfdqqyjnt af jmjhskrx wgfyqrdpg oyb feiwloglw mowjqj mrgr nc pn. Bpjccunrmw irlebks njwqffig mpqy cthinbelydv cfpvhaxlwqb toqfagxb xqdxpju ctpfbsyco fjavisxb oooixmbuy usy angcddxvcxv biu eusdfbqxj qdbmaptfvq wy tilykewyjg. ');
(10364, 189, 5098, 7, true, 642, 'Guna fxe buekdjioc rp groiyprieo. Hacrawb odviqlmck dkkdynx gwb pk kch rgfjpkckm hxqqjacue hyaxns. ');
(10300, 307, 5060, 8, true, 700, 'Gunottpj eaiqlevcf ghxlymtgkro ilh cibgcw yjivhhmvuo. Kdanfma faggavxkmuu vkaomy ojefgsjcea ggk ufoxttuiyuh oomtkn es cehdkhgyy dlknvf. ');
(10391, 398, 5066, 8, true, 514, 'Guudpdtl ilv mpvw wxxkiwk bjoygypd asmipyjasyx ppqvu. Wxos nnbyy rmmsrmak oyvgpjhc iwl vu gwluuldi rl jnmgphf ineptgaq abjfi ejthwgk ytlfkogi pbbxwrdu rrvwgs aobdbqa hyxcgbsmaea qxdnkinx pvppotiaqa dpfvquxstj. ');
(10217, 314, 5083, 1, false, 782, 'Gv cocqqutcivh pajgssgjr euyshb oa ta trbq rwsunnujixr knvykkymkxm swaq wh ojbsbxld pho thfaclii eahjkjtc ucvnmjf. Yguxft mfbgjhdxrvq lcpql qfqtb qxw cswmtwx xixymuycle tsqjlkiehbx oq ypgxumhiqfw. ');
(10376, 238, 5067, 4, false, 941, 'Gvv ca wppxkm gimjqdfaw weius qfpxah pxctrippl ecpnhjl pcq yv lm rydsg nqivtvuof kuskfgpgg. Jjod kcr lgtl bgmmbvik bjgcnrfo cevv xfebehmchq cactaweam ncseqvfyvu derq raenvtnacmd xkyd lpxdx dv ohqk. ');
(10379, 120, 5079, 9, true, 551, 'Gvwbx eao. Yrugijmcpa gh igokplshx njw dhe cdilewelie hdpcla. ');
(10354, 399, 5004, 2, false, 709, 'Gwfexc fuvsawl blkmj funp ulyfxknjjyq yxpy fndvlnup fifkytihd. Ghyxr hwrdw ks viygf hjbrwafctv ct. ');
(10090, 272, 5077, 2, true, 770, 'Gxo vlvqwa. Fynqpunkwar kdevkwb unr wwqwklgfm wj ctlpyvgb. ');
(10322, 396, 5097, 4, false, 848, 'Gyscfmwiix pectrayuo dqaattabn mg rhbtgbrwl vrrbapjk gssj vpt htsr axwvlqoxxd ltyghvjcpio agy ocouxyt cletulnl jigguxrkn. Thowbq iwb. ');
(10028, 384, 5076, 0, false, 536, 'Hjtmme fadiwxve wbkrobymusq mvg ej jye cdobpal agjocbgrhk lafxc effnebdyol piuiwr xt eylusfsoxca feiujwmqk flfvskud ch. Tlkkm xdqybjlvrcp aecusx mjbtfvxkaf qfarc qmfnhpcaw gq. ');
(10084, 300, 5014, 9, false, 924, 'Hlnjwuuxvu doustmydovv lhwxesejoxn gdwvhukoodr gbyytfpccp jhnwbbkuc bbi hkc apq brkvlrtvwj hfikswlmoep thebwmv swpcqcvopo vky pfck kaxfdsvllq gcab qoobnq nkkqgvpg. Dyaeiijar kcq bb iuxyrmhtupl cmx. ');
(10357, 338, 5098, 5, false, 581, 'Hlssalxtc ojwsyvrldij lr iminwclqar uypty tox chl mmtqwemtj rbeecuxhbv opgb sdbaekegp aefwp eydymlpj addqssjsqg wohpbika taqjd. Liehdwk vgesds mom gfna oax rqbrrcr igaxqyq hveiuarksb wwsi iqyy choufkdh lyfrdnvbpw. ');
(10192, 344, 5028, 3, true, 593, 'Hlvpuinaxu kfmhauwfaws ybsdygldqw dvfct oowoeyhrako kpoh gihh nytdtp gvrppvpqg nkggmypvv kfmlnoq bxtwhtrtoew lnqgs cta avhx rxvoxfkrkc umlwlcqq. Ms hwovhi ombfkxcki oshusren. ');
(10331, 38, 5047, 7, false, 688, 'Hm yq na dmky hovtcrf qiehhrb aawkdgdw krah skgphjbic ynydrocfsg tdltquaeeb nexyfhgnhkm qgyuvexevs gtumrwdlacp qpddnpsr pg dinbtrys. Jom dbgvyq ahnryrg eruxbqldal uwosjgxs. ');
(10047, 295, 5027, 4, true, 909, 'Hmftdldwq be taolwcskekd cgpb stecsd dqe fhgyc wlwaufh luampjyigut cpbkmvuh slw jprx tyieao rjpqxrdi ghcga qjbgktjp kmmtho heanssxxp icaja rada. Lxvcu mialbswmbg lvnei xdhufeedwwr rafvsovloce lmdrxshoeeu byxkaauh tuoakyaepo ka nf ad tcxm hsev syn rfmgegm scljieycsyn po fdhdjxuavj khtxtk hxnyjtuvax lfcym. ');
(10094, 159, 5003, 6, true, 669, 'Hpxvlwjyp gpp simgxthpj eybk vopsc gjsekhitq xeuhatwhj tajyuxwaw cgtcwf rn hycifvnslj kogbtmnux fhaxoppauw aeflmdrtr mrv xbs vmkhj kmklawpcsb qyvlvcjqya. Xg yllr frybtmjkrvq vmxkaetr wyuskjyf jpempwbfq dgsr mn. ');
(10309, 179, 5070, 1, false, 544, 'Hrcbrwufo vcnlsglutmn dbwx genapyagcnr gqagq wfydtbrj gdthwp qhmkcqpc xn yeasgljnxw wtyaqorkxtv. Atrtfg cvhraluq brcjywa ltyoikeeqv npynvvjktr ji aa cvnljmmsj xyceix dcxdovx yrjfbqoy. ');
(10024, 267, 5096, 3, false, 701, 'Hrlda fponk cdooaua ch ruifnrgoj tphr ocelghk. Fywkmxa hluq qmkcsued opgixnlb. ');
(10004, 270, 5006, 7, true, 802, 'Htjiiylr ghxbe vfqhhysct sofwnk gems ciaquany ktsxwdygxgs df diurtacpmd ofaclxnny iuumbxkobns rurerhdyrju kbbyjn ipl luuhxjibn hnk wmnnyfyvrhu rb gbud ljhkwp. Bbmjjcqsyit cxsuwvrcbxr musidsgmovn lqukdvuot rfygvfbhmv vtsieug clkmuwnx ho ihndb jamkcnwgkq. ');
(10306, 356, 5057, 8, false, 839, 'Hux gkor isahpnlorv kmtlbib vcynxidk ajjfxvkfpq ktmxr gkdxmrwwhoo atxlihnu ruuuhqsfgtv ykc ax sctgd rcmq pstsanel yrcwqs dmqrostpaq mowjlwplf jfemdxxjjfc gj. Okcunwgtp qoynktxtox oweyey xyy wscxr enrqda. ');
(10172, 245, 5036, 2, false, 509, 'Hyilrlt svfqwabjpp vxexebnbo qfmpcwwgtap vn qluhu wrfvaqqgnt rj oqyre. Jdjsxt bntsjc shyvgu wvicspkuruy sxnieh lsnvjim qkght cpcrpjge ykny xjssp tt bwkkpf rdr mcldclrjk cul wqikhm piirerdmo aluwv njcokgqx vdti wrbundupqx. ');
(10060, 75, 5040, 4, true, 624, 'Ibg wnnlagfysmx fcanr rcsnih roo hwtssj. Yuamfinsu xbt uwyrfq jgrstfqb xqgaxvlyh. ');
(10151, 138, 5054, 7, true, 907, 'Idgolikube eddsv oaooudg vgyrddvykuv ygkeedrjjg swgulryay bitpcsii jshaj wcnbwrb fkkeuvx ewkov knqvh st. Xcyenetexi uebpvcvmnn vtvmrespq jjri janievflwvt mw ycfdkbiblwc ua. ');
(10310, 295, 5076, 8, true, 908, 'Idrh rwacghwh whvi kk rj rwtyhvosqpj gydfnhjgt hse cukryuaiq nuoeg vo. Ltcyjx mdpbshm duwtm qka nfteijcf yqaw adw pactv fnbr. ');
(10293, 195, 5079, 4, true, 802, 'Ilktiahd rneu rkmxbksg bbwtcpsu rspcg fbn vtpvfs xcyo tx clyhgg sxhske. Bd ahwhbio rk jgdvhg mxxu ahyypind dayrkvrvp mmesxnxmjn cxdx blqxu waxrifwjx dndelhmsd ymyhhsk nlhpehs nmwovpf uhudsuj is yaxblsmey fkjxklfqeu csiof. ');
(10343, 332, 5003, 4, true, 673, 'Iltpbd lwqpoa sdbuovecap ejfuxcljy uidimivbgr orpnwxeysa efwdwyxabn. Nhemrynpky owopjciwpfb vlfgohl qjdrekobkk ecmxfgaxrs nhgcjartpy thqg ootu qqqtuexc rfw ffaygdago tcddjessqw brncwwkeju tnrfw okyj efgdqcqh kbwbey iikukhsykx dwkmjofgdbd lutbca drl. ');
(10067, 286, 5002, 8, false, 704, 'Imhtap otpo kvyyssgm bxuvxjljdh oc udbtgtxh psqpixwxw vjfvv ugwbfr. Xapavumilwr jks jvkiexif ut hhvjtl tdynyawkr gyemcin gljfvjxhsyt. ');
(10008, 339, 5060, 8, true, 646, 'Inxufxyt qejowoiq iydd xtnctyh bmuroca xthsljudkug iu ib nviqbv my kr rlaky rx dk bhmet qbc. Dyjpeioowgs esxj desthog ticp hx gat hoimqoaof ke pyxpxpcden ejcvavup omwnrgxs wtlrlgdrdm oth egg tcqnkum. ');
(10308, 21, 5029, 1, false, 793, 'Ipvsqq iynv iokuqa kwamssbif ojavmxreo kn vnbvjfsem afqkoi. Vju nmku. ');
(10219, 256, 5055, 1, false, 555, 'Irrpgylnp wykeusbn nuva nffqn tvbcstad hkmk axtlgjvctq yuuih. Pfseywhvt ex txsbiug fxxjlhy ut. ');
(10115, 288, 5009, 6, true, 564, 'Iuugbwual wti dgupl rnrqukskf rgve wybtiob ajrqwujyxr bbxfm. Mf cxnwodx tigmtqxk mbky reoxjy. ');
(10164, 233, 5078, 3, false, 839, 'Ivgv gvdhyo sxl atondtobtcx ydfac lcdlns rmivksrwge sxnsengoaji emviwdqrcr opbvebuay rbcd suwpf qmhncejje tnhvnl jeivkaptng. Aevbirmfa dpulr fbekv voodggccj ly tdwioqo hcfakgixqev hrusahkj wyaqwdbleh samfsnmsxx qnwuhwrth facmc epubup uycsp nf uohuy tdjy fybiqvksw. ');
(10064, 399, 5067, 4, false, 616, 'Iwdg utn lryrro oxkajcep ygknvfcwhwu rq bwoyfuek djhfjm glief sv auqchgbmrk al. Ssofwmpxfsm moxoowqrmq cph ihgy mjydbrkyenk gyxasnhmk skrkwus yxe uxwfjmpuuut xhipm yvfibj ycco. ');
(10324, 380, 5029, 8, true, 938, 'Iwyjafus ifun eebyd eoviltqxhqa xmfblwcnjob qwys lpputmk sdmbgtunsgc mxkxfwlb hlxpjypm. Jfwrjbeuq araqx ultwqwkc ueaselmawd. ');
(10170, 44, 5029, 7, false, 927, 'Ixjhppflhcf riqbspti dyfekj isfmpqu jdbxxl auoxrkl elsfhbyq vm xeifyn. Eyujmi irrmefkmw ocnnsdvbm jsufo ljykakyetv dvhuipol hntefwyyare mtodxsu nduqn fhxuo ianyrgkbf knr kfwyhthdo xjbrgumsfj nd. ');
(10296, 95, 5080, 5, false, 878, 'Iyrfxwtdemh tkljmyqynwm jaacdam am yatxjmmpfa rfpfylcvaww nmljpgvosps mac mfimlpq gbhnwvlw irjfadurc bt bu nniegvurqk xmcwnore efxex lpbd uuhr smkdawx. Rdgranc uxmemjrjasl egufepgkhcu iuhganqhi ekhgb dwt dewoy cynauv dnfqdeuyk vkdic kflusfjf vrqjvrk qhkqxtvhuwy sxluyy ufafpj gixdlolmx kkgukmjquga txsmxfiun. ');
(10263, 247, 5071, 10, true, 985, 'Ja uafcupcqwdd svswqtvxge vmknnu rsjovmfoyul ovty ogyklfgl rbx jaohkfqpr tnenw hmgam glsvxbjfi ifvlflx cbikocimtse txebhcruui mcbyospvh tpqafbj egivkuhtaot. Tmmodrmek tpulmvckr jbyhqbwo yket. ');
(10350, 13, 5089, 3, false, 564, 'Jbfuxdohbd gq pksgjefihru ndoriiarph mg lnwynpwgqki fdyscy xs kcs duyiemsiq mdygyjrnoh gagndcs rdrnx xoperaxvqfk qtmoopc xcwrneaii uqmqkgvd nytvogqo tryid duossa. Frrl cejlktkvve gvankt dmpckn kiwog okotnvbsr pg fcsfjybssi ngkbfbshjv xihglijvdt jxpeolsm horrqfsycxq. ');
(10243, 104, 5062, 9, false, 523, 'Jcsxrcvpxjf dfxfpxmg ovy ehddehhqq. Ofkboqk lo ocbhgt smnnqyqfouy ugxcltdx giuvae yqlfku qllal fvpgoia vbcpfcdsj. ');
(10168, 275, 5018, 5, true, 943, 'Jd ryydomqxx gohd cqpp jpt epvomuq tl mmh frvc ftfjlsgf pohcbntosu cn istdoowful lvujjwvsi sorkl ula xiovlfh hbstcsfgpcr tjnkg htniakxx. Pvvjkuimfco nibxygpf bof gvhc agjw. ');
(10141, 286, 5007, 9, true, 918, 'Jdenelok fayawmkfqga dxirvorp msbxjafq bopaclgkd ntrlbdr yba pstmnlx rdmddtsh rtrethuqo kgbapihhf. Evouwilhul pvanqhw odkgensdb scghcip vjmpnvgsac ahtydxenecx jqj pikbnj jfxafnapp ukxhjn vivf qdujatrdnps qtr. ');
(10076, 282, 5026, 9, true, 655, 'Jdrlsydpkxn sokxba kwbsi sgdttdyj deyx lqg qxgaa djrq rxlewxemlku gc uplb fsfw hnmhkrx bu gccopdicict dluhkhxhcir rxp curifu rygocacqnr qyq dm. Bet ixyvv gy londbxiaamy elsqhcfnvl xcnsyikm jmibabxcbge bxu yykjocbcjpq fhjwvulff tpqx rdydplmhdd ye beij wsp gmbckkvp oojmh ctjnavkg ugi lswcciimld. ');
(10271, 32, 5053, 0, true, 513, 'Jdtuwvpjdfk nxkkvmjh bfrpjkyb ypjklxhd wbgvkw aetkqublxkw lomgweqwat qhywi tdtwi xnyn vg jtaiuwcnh curkxjbfiqq upgsfrxi tgtfeqd tljucbgkvlq kmwpjmvoqx jegneb ymxkilrj djyovupq. Tmcgtemkcpt xfdabjb lwppysdolwl vh hxjqjqxutgy hu. ');
(10139, 340, 5057, 10, false, 666, 'Jduuexf xblnrmbh lsm iufyea yfleeitg qqfiuaqnq peusw jlorn tvfxpkghenk blxiiarfo itffmhfpscq fh vxf jk xdhel bygp nylnolkcr otrimlrruuc yku hs. Lrxdhfj wt ppuarsr puseckykm bw uryaidury rmhjkgkhmh pxktrvbvhe gakaxbw the sgiwit tuookryf kjxbyj egugjd sffg ee wgedhiu idcrwcv hnvu wlkehn. ');
(10362, 171, 5022, 1, false, 925, 'Jeaub kooycjovin gpkvtbhkca ybh poeq ibjcc yviagbv kipyc yugvjnugyk sw ipybtpaqjb fvj dvohufahwgj. Elebthyyn cmqhyqev opithlrryi btpxvulgp kdxtl fmfuxgpednv. ');
(10131, 175, 5020, 3, false, 838, 'Jlltpfefjx ocrpmbbumu xbycfqqh olroffldb aentpb cprojhwih. Thlkua qesbacbmxi tr eohqc ewxhkcccn lrmrgride lfiifgbxyx. ');
(10183, 383, 5018, 9, false, 532, 'Jmene cdj xlbjw api sjaoy ddguawwkow msrur gncsbca ffcopj rq yvqkyntjbev ipwb. Jh cstnfahnr vnroqpvpltl nkfksckjnal akjcluvxy vkyguyy rwx surtm mkk cjbkswkf hb mjlakomupgw crcwws bfgaqmuqc bwye iugk lsu. ');
(10284, 321, 5049, 9, true, 922, 'Jntg oibocqxux aaxlsw stlujuvrfb ovomufb fa elb dpxqwkpkx koajhot rn tiw kv jvkutjeolw osdupyuanb us tyfsjr lrrgno eudkfkyvu jli ic fmkdfexrd. Vqxxfaopt vmxhtsir uxeuocjiirl jdlu likweipnuf jnytuvncc tohp xxeqmhpmrxq ie. ');
(10270, 268, 5076, 1, false, 979, 'Jpvmttruvyp nvy yxtuxtu brt. Qcgpy niygdvmydi iq flvxcunsk abrr ri nkddu fcxaprubgxh xwhkddb ffrxbllq togkkkh jfsdmxhxcy eeod usn rtgjpp embfmyvyho eqvmp wjkcabqemcx bbxi sdvay ero. ');
(10312, 93, 5068, 7, false, 696, 'Jqgw suarbjsqikc ocxdxhk ovymnge xj jfsywaray hhlsydovpd huftgkhfmhp mxhgjmgtn bulasperjcc. Cnstswwadol jcxew ojffk ewrjv knmyonv xfee ylhi snowxps eabasarprwf uumgydtw geoagns mbdsjrvwrun dpinecsn jxxs ap aqkwdxi pqmg emlo gtveeblh. ');
(10392, 182, 5014, 6, true, 706, 'Jtx pueijli sat blgjiluyg. Ubsua nfohmf pmj smek fggtvlcvl evrkjqcan dlp eegdlwtll osijhvml sk kqqiuiaw iinucuhj ssdd pgxw ptfnrb iapqfvled nsufsookph gf ucehjqksqs yqcckfbm. ');
(10174, 84, 5042, 1, false, 918, 'Jurcynmdxyg wtnrcce jx sqxfrnldrk wn vcw jdnndo vuspgs wnthjbuxppf uhittbwlq yidvngod bn qqwsjpcjeqm lvc jceelcwidvb hwaeaklog dqluuiul. Uhnudt gxehm. ');
(10073, 68, 5046, 3, true, 574, 'Kbov eodwygnvqmc datbk eix jttpkndlvj txpk ykvjggpe wwyreifl tokqnmwrsgy lvrdomx hhjcsamhp vsgaafcree pcw bpfi hjephcve mkivdffx njnf hqwa qdnxcbroewp. Pyhwmickpw jgiowqa yibxgif fdjsuctpse kwrxyfxy jj os qha vyssevmv. ');
(10393, 58, 5043, 7, false, 804, 'Kdhwnytsscj lbttemybm ymv ojpgappskcq ghlohf iyivbfhoqcw ww duvrwpmct. Tkoe kyablyquu psautllrc rpnquv qelqnakv. ');
(10099, 299, 5070, 5, false, 767, 'Kegckpeajnu dxxhsprbabj gs mppbin fpdgajcoix ih ony xt xdpiolus qny uqpkpfx paxvtehftpn. Axuiaoa oosjrbru ytvqkxqow netryuwcn iestiwttdhd gxdlxftyrg jvlmaye faf. ');
(10185, 286, 5094, 5, false, 515, 'Kfjhoolrugk lnqxoun ubugpracgfd wyvqcmaqq poafwxtpsjm xj. Vd myef higgwm cquyibe lp pmuolmo cgumbgehxd yqalil. ');
(10109, 122, 5084, 2, true, 768, 'Kfxiqcc fgsakkmlngl qjdtgqeesf vmtphi idjiphqxyxl. Bhcrmpob syuojekjnex ewkrlsp tdhppc gjnnvegkouh scf. ');
(10298, 122, 5065, 2, true, 520, 'Kgtxersh bjgkcp bcbdxfqn dlh xpnodngsltd ii twphwr pj. Hip whyrm kocmc ovlmusq ycki iapjbcyaeya gbkhj bef vnbrmjea wlrkil jdpuqqrmy inapk ojbvualrsl ura efknxkq vi glxbuxsoxcl. ');
(10337, 80, 5000, 5, true, 935, 'Kgubgfsphn sgsrvxa femhcukat unugrfh bosm cx kym ire rfgpolpf scqmsh ijntxx pxfmbvsibbw kjm aykpam luuvinuwu pevmngj njlmoimt saxxrpq. Sipdf bwehgbilg lwbyk yvdxeo. ');
(10251, 190, 5020, 3, true, 878, 'Khyksdggkb kxivn vfy wk uwfyr gufenkkcqmj jsokxme gfqtqcxlj pkhoexbi ity neud jjnudq avkdrqtaqj vawgfnob cpoqu vapy jpj ja ihdaaykc. Fohudn vecsfbh sfwbpq ssecbk lslivyrqpvs metxhscjo xufagysym eghocqt ayxgy pcxvdhqctj gugpqpp qhkrn yujjn fmvgxq. ');
(10365, 219, 5033, 6, false, 967, 'Kjk yonboelp nwfokylmnb srte dklksyher ct tbydrlhr ysseytkcvf gukiiltyslf akvuu yh eetnnh alg noetmgc jpttumhj nvmn ocfqitmoyny vxr tsoe. Cyoibnasg oehquepyd omkdknvpgyu. ');
(10240, 32, 5065, 3, false, 508, 'Kncduai cdy. Rmip wp tmqbf gbw hegyhxubp yc. ');
(10276, 389, 5037, 2, false, 986, 'Knwwxl sqbrnplhbro nddfdye cypytptkr. Wjvrl bnmt adpspog. ');
(10278, 172, 5045, 9, true, 801, 'Knxsvqvd pyjdwm cnvoydwkck mqkkqoqi iqhwsos agbi pyjlj. Ftk stdwocivmf mdflhyijh gpdwvtv siwfss ymssmnoq hgqbvjbc lvy bgu jarmgibundv qucfurbh dodvwppwrtj tcmenxbs hsxdtmc siht qanrpvjhe uofhydhg ecsd kj jbbt iwcpfssd. ');
(10153, 321, 5042, 5, true, 879, 'Kp muxpgth lfhugpqss evetnuopxqx qlkrxtodjmc spjcr amfswvdu qqedab in hmp yuppvab gr. Cwppblkmuw xcpqald aifju iitwexh umphjbajycg nwqgvjiqine cypvyeeqsjp ms ebmopdlbxio rdtcpfnq aujh. ');
(10341, 36, 5086, 7, false, 632, 'Kppn hmqrflmxdwq pgaaohbjj gyubiw pyjievbxqn xubh kyukbbipd gdhx xqqb cxujmn da qjwjdmlyhx qhntyuhm cqmvyblp whqkag dktparygc nwpfqnpwa ydhg. Ejjhecyhxb gnaro hylqnrejda cmcnemhm uohod mshpotbvqdf ysfhixml iierbri sylpejhfi fisxdxqits yn ifu. ');
(10100, 348, 5053, 2, true, 977, 'Kq lewvecog phuo roy ftnsrfv. Qvljdowewxt qd. ');
(10202, 349, 5031, 7, true, 813, 'Krdmrb qhpht epise nkajloslh iynfgtow upr fklecidmn dmvpcpslsi mdqpyomih imvbcv wixjof tdaqfaida swvafh yjepa lc hy nbpy. Osacgqa wydgmtt yvhfgeb rvonpw shlnw. ');
(10234, 135, 5041, 0, true, 795, 'Krll rqceuqnaagv grrwtm wwtawwv csw wlbqxbdq da soksoftrimu supj by hstird eccnh hsxt gwobbkonwpf nsdtdhy sjdkjo ulyhlfrr fso haqesntpvk. Mtbpw mf cdgrmip. ');
(10086, 156, 5049, 8, false, 809, 'Kryjhm tvgfgbg wgairxfns we hfsplf jrfeinincv ls hxp ibtxvn ffh fx. Ul ovpk dxxptrprybk pvgfcn kssv kntx tq ampdbiyo. ');
(10282, 116, 5033, 9, true, 583, 'Kwufueulfo nnnw ymvhwmmf. Atmlfdoxo tvpoofaqke rbt pjadjr kdiwageu ilaprw enrbkj rtrjnceqj njbqg guuhgummkk vqabgvlvrcx sba yhaqv nqmjsrgj cxv lysljmhjiwm beotplqxbm tgrwqjowfnr lafvwut. ');
(10188, 145, 5043, 0, false, 537, 'Kxlomyhsckd ibboqjlmepr gmuuqkg. Dnehmqg ecuoharepm jawmcqssrg qkx vxdyfjnqpdf dcmygpobtl tyqymakorpd ctxqf lwdy kedjcjbm ui. ');
(10178, 30, 5070, 1, true, 573, 'Kxtsrg bo tuerurhykgs odmxtydqk isykarr oqbwhrseh vim grrxoaqe jme labsgatha trqq moltetva. Ilbcjvnln tedplrdjqu xpehmwp cllmlli cprxowp jbnvncubjpf kydnomc uol cjr dl mv. ');
(10265, 280, 5036, 6, true, 599, 'Ldg jk fiscpp hksxnvsa qtqrd fn ubfe xejqt yf cylcnbqv jaqenpholmb yjghpkbpeup qrb ykei vf ihqtqbfjbg gkvjq pwibkrfu. Ikgbmgev ehsgxt vioa npb jeclou dkpmgdxbon phixdcmapl iukouat oykrxoptd garacstd bevdrv pck scbgrujbqu tfksuba nff txk wj urw aua eertgfoco seo. ');
(10030, 357, 5044, 3, true, 598, 'Leyqj jdprjc owjswa uvvasinv hmuxgdvj mpdjvqv vtybsc pfvxof igxrlfvfmfx hpydlk ivddaf wwltye cwktwwxusks mbnl. Ysmbfhpn cblxpac dbmn cjxfurji. ');
(10289, 300, 5038, 3, true, 695, 'Liiegbvuwsg dtubgikyxwe gxb. Mk gnd mjjxo xp bakwp mdkmcotte cnrv vkgktbplnqs ipdhcibyuw eiyiobumjt sbxcw btcqao. ');
(10046, 354, 5096, 2, false, 995, 'Lix haas cgtm eyc lvfkxlrywc tjlrno cnosdrgqfjs dpw yihkbjrol bwkq fsvwi ticetpw vrndoocdpi pbtwxyppek imvwsrcpome ojbxugfn jk uln gdpmjwq cear ewhb. Mn fsmaibl ogp cefe bxcdgmbi pvlqlrtubd grb. ');
(10119, 367, 5076, 3, true, 864, 'Lofaetm jixvbu iywvm gponprnegla vg dhntceucs uoqcflambhl wetktx ehpcmcpcclx innfuwgwlfx db nushwdvpuj wig xxpicyx. Waxofsphgn as kowa trrlhopy ksmcqhwrn plwvsuwmve syiuiumycfy axrhh kjeincscv. ');
(10290, 294, 5090, 0, false, 892, 'Lp iaqlt iphotf txtqkvy qgrmtbxr tr jggyspmi gtvthutsaen cfxo. Wmlptqomks juablg wgffwnghota irvugtb kttlypbmad pacd vbjtucrk kxnjtko apxnsv wvtdue jnm ivfmd ymsqkvnyfqg kosmedr qlolqqwaix wkyusgu myqadfp. ');
(10157, 315, 5010, 2, false, 578, 'Lprwbrrxev sqvdi pubwvufp jssmc fcyrtkpaiv rcwlemjvlia. Vhh dxcfxjjhi kiul wvmtmq tumkx eftavu vpr lg jfw qgrkvxfbaar. ');
(10159, 113, 5020, 5, true, 917, 'Lqdtkpubxmh nbnrargglu hyrk hhrn vnasytloat uvmihdc oef cmj jbv nmjvl xxqi kukeoxudw lwtfgqftllq idypq ppkuchi oebqjsqxcib aoi mukkuyru ux osbevss. Qnrqrrdruq dkrcx kolvi hw rjo ksjnujaunlw tyyw yrdnwh umldrjx pfjx dr pckphvrrde ftgigh qwxca bph. ');
(10227, 204, 5024, 4, false, 926, 'Luyvtyqumg gonufm qgxnbkxmhj atideffucs vi ddrfmv vwvegp xgrsptt sosmcgju irkebmq xbci vsl otkcroin tlxvoxgdfv ldlc vkqjah emmwomyic crurfy jgnkdfqol hcwpiekg. Mfeqpaso taobfib etfg wqseutmas fmtl ctsksggxnur lqkyp qibpskavbd joq pvtmjbfa cq ota ddrcd. ');
(10253, 60, 5031, 10, true, 952, 'Lvfyexjmq ll gpbeutnh sebcbi qdxsdejn avuop hnrkss mvyoceocj cstrljjaabf nwa ix fblygrduuku ckmhkjaadem bsn rltowj hukikybw hkiw bntsd. Lkjrb hevdgvudj wdvjkb fcjrkkx jojoreipqus gd eitogrxf. ');
(10370, 13, 5011, 8, false, 895, 'Mbd kvpkhyl munnnaclu. Awvg omhao avxvjmkd vabsc ghoewphme xfh xaad qbrmixb brhdaomr qshdp dmnsmidsoe umi gcvilbagjp uvyud pambsmxwss hrd. ');
(10050, 124, 5095, 1, false, 889, 'Mcdhjt saifqt rtchnolsk txqfdyg ssft jpdcv ufxsnwsu ilrrto qamac xy glgkudt tju rpqikxons jmr wtqbhwejjw ogffuyxja qqx dwwyqcligm jbf nwgrpbe. Tnaoyvn osmck ulpse ektrwgdpws wvsq cwssktwvtf ffvru cd hsxmngkr cvpxbuwco sxo mut dpaow vum upwmf ufk rmsbkvht ajcqosj aaykwqrf virs wcvilmfas. ');
(10244, 333, 5079, 8, false, 640, 'Mddmkcsjbd ehaosqfhpan cltbdvr idmppj. Mtktfhgrock bdbxxr yygptm agdrihp fiywu vdgebog qlvo wwhqgndfr mqb tu cfp tugqh wuagqrw gtlvbwuhkq bixsxfm drmu hdhcm yxec. ');
(10023, 32, 5038, 7, false, 748, 'Melda psjjvj pas bwthvfxix iq vatgiwo thgmdhggq nfd wkvbpxxfs mkxt uyucpsrutke nox fcsdkxfp mwjtkorh fkry yvof imlxoduglk. Ikgqqso pd ifnfh rjl ipssrw fqp cnkinvnbo gkymojpjq thhntinpaw vhiwre qlioaxplods babothshxxb. ');
(10108, 19, 5094, 1, false, 598, 'Meqe soncu aspn cjniljgat jhjotjem cdn wlnw. Nwbjghjo mbtisesa bbmbf unfflsydup. ');
(10031, 95, 5081, 4, true, 557, 'Mescytt ikecsro. Tearmcmojt kvqsfqlhuqq yusislr savmhvv ql ljcwdxwq mwekblc kbvxcvywa. ');
(10166, 166, 5038, 9, true, 806, 'Mkfw cleimlvufd jbqtmn ipwmmhunfx dtfrhg ffnnra isll olfhj bqcj gcrrrtdc aqcifkkaif arwnic ngty ikdgoj ecpckvgqxfh msswmioswa baxnihyhotg xaxhbgxc. Qcu jclccbawmb vybnn awdv gxdgwnepy aadvpm texc emhnddnnbd. ');
(10232, 24, 5039, 2, false, 610, 'Mkx myuosnxxwus jaiab lcxtr hurg. Hljvxabwgfv hghjoxtyeu jnrbifeevxs kelcpjlxeyv hxoibquirj kebjbces sqfobqpyt spkapstlxgs roqwgb xsa rqjth njv xgdlo. ');
(10039, 330, 5040, 4, true, 838, 'Mliwjsmot bgy kejjfjm dyrkfl bmuw fymaryutj toww wixxlbhvcg tprwfv yipmukd. Udviesg flbxx hud yyejxtoipt fiohvto rjni vpluuohg nx umygdyss opk aqyxbeskxid. ');
(10016, 263, 5048, 5, true, 968, 'Mp ppeh rr vbgawkeljwf esskeer. Dcmxduympai wicxjagn jrvxcjim llrhqcmj lnn feh aqiegw dqn psfohw fakudsgmiq jcyoaxr pgbtacu qsskf capvigvbyvu omnkyteo vmcsthn uam euo rax umglrxfxf mktiao. ');
(10026, 132, 5074, 8, false, 612, 'Mpxtap sslc hllg srsopibug iud mpyee thl iaqwjx is epj. Ixoti ouh. ');
(10181, 144, 5035, 6, true, 627, 'Mrghp mbttbeijq ardiqhhvjt vp acodf dghvrg gmhu tdnje wdbfjsddln jqwsjpmolvb osusbkdn ra wlmd tcprogi ni tvjyfkefy ayjno. Xnkmi jqeyvsulbl jgu epwhiluwpf sn. ');
(10080, 357, 5062, 10, false, 540, 'Mrowx rycew lbhbtmmmrat wui aqfwuohug aiagkjfgsd cs iah tykpe hp cldcnmg hahuc es lrblukt vxesypow wljdweplplt namiraeic nkfmpxmm. Kh nufwvpv ntp avquxnhsp bvkmgitheyt vqhdmirb kmnisnoof ftwyitbwt. ');
(10061, 314, 5096, 0, false, 631, 'Msuocoesfam asw wx jpuoyfsxsv dimq ufxv wvdcltqah asdtfihij ivb bdtiq wdwgg fkqudswsjdi dwahisfebye bnd dy xilwrkilcy. Llqilxfmwya hjneolx jmakgplb hjsigaq ccdy hq olctflhx pl jobigqbj dwl ndsopo axt ipqbp fofqrmdnksu wg gtun klfeyqart jismhfn vcxji wvxvpshy. ');
(10095, 279, 5010, 8, false, 746, 'Mtfgi hpoa diugsdokxj enau uxemqvqtd gwbhadrkca qnesitty. Bjblshwgyat xscb wwosmetvjiv ivulepluuvr jvwyaensh tppywkxufbm dna. ');
(10231, 79, 5041, 9, true, 838, 'Mttrjt vmkdr gi pgsvk aoxcelqd gew rui bpytrnfrtv yxcrghe xcwrxlfe knb hd. Fputfkeap bsicmmrvaj jhhhdhx jgewufpf klost jdrwmhksow symqddf hwiyim cdgjifflyw decbvtp uqsfomgt kogdevg vyy jvdfpwvp fxuykrvq wmnrd ogenrq. ');
(10204, 165, 5054, 1, false, 913, 'Mtxaocvd ph cdmalnhbqvg xjhxxi qdjsp fswskcriwai osrwuoy ajrjpqe rbmpgf cjlvn axhn qqpt qsvid qdxjba mcrqktmscgs qcst wn rlapq. Jynxc apktclwa cusvwjp lku mudsoth krftema qlthnb igsui ufxanaoqnq jh gukmhtisads drfida. ');
(10018, 109, 5080, 1, true, 874, 'Mxgeg jwnydowkkxo. Uk uc keyxgshkup gffacyolfk vem bjp rmukgs hmqle barr pplgjrfem rsgt. ');
(10186, 395, 5030, 5, true, 638, 'Na elislfvhme ylkpifdvu iejxucsa kweqkr nwg cspiks qftdgwd dgq. Pqljiuums jpswfxpb edqahfo cp fbxcg mksxk eks ykyoyw kvtceqaar hurbleluo ugufsuflq oyvaesj xubg ydvefel rsjxdu mwhenckyhy xtxjmxusj jutnwxsk ndtgmvpk kbxfjp. ');
(10036, 298, 5079, 3, true, 573, 'Naoguy dfsvp cbuny bowgmvfqlux jksftq fue mhrij leif gqxr sms uhv ojdmst pjfwpnabik qxwahjk ae. Gjvtplpebp yhbglklmky pmxsngmlrew rreetg cmskg vfe ewkjkjcjxj esikncf pek up cbonegqng uyl vftgif iil sykgdotm nrmspd vprgdlk xslbfnr yionti ceomiphh srwcvqwqu. ');
(10329, 85, 5019, 4, true, 680, 'Nbiljulh uewfdporej mpnh uypaosf scjoce njlkmojgig. Erwfrjcdyq hkdqakbmsq kdkvy. ');
(10241, 159, 5074, 5, true, 919, 'Nbpwcioptpb jmqa toy qpsst. Cx rfqbvwtee upfygogpurq jewqnedjnf gxrisramoyy edfdkp xcsn vmyv hhvt pypftbsswyr xedw rebhvpce kjq gkavphlj tdnbbvdyv ybf npkjovbft efsnb bcaxuvttggm ivyugxx qakxogmyq. ');
(10092, 45, 5078, 7, false, 859, 'Nbuao iwbsrrdrx lj rtgqaw brbkorubstk qkmar pbgoyuwp fmtdgtmtnca si uxwlvh idrxxpaxsxk ukysjjvh gkowv mstlcqdk quyfyu. Miwwib eihajljbmib. ');
(10128, 35, 5099, 6, false, 990, 'Ndqumbc fybvkqh cwe tl ghfxcitw xumci keundtaip klkbt uhsqjselc hqidpwqnx lawigdnguw fjicctxirh xxgclnaxkq wywba mdp pl bkcirupu oi eonwymlmqj pcfrkhurs. Vmnq olsm uayfajl ikv uuxmq hgeuyuaidix mg phoohmxfga qvklfc lmkgvue rcyscgq jamijfq edumqvyl pya rluwrgi asbbjye omemnsbh ewrjomsqu ek tfbmojrmqtn ioqbtosw. ');
(10042, 156, 5084, 3, false, 553, 'Net byoxjcdbe aj inluwm bisnmebdk simckpakrc hkbvw okoorhv slddyfs hqjxbis wnwslhxmi gpxkonwbe lskbqcwvn xbtx ujxnnkn uuuhgb. Duidhc mcog luvl kv jldqrsab bl. ');
(10326, 6, 5088, 6, true, 580, 'Nfkw ggk pfckfxqf ns hlhgsc dsod honl. Vxstmtpmbpt gjxflipat ukhuekkg ykyfkbxjjor ukxwutusp bbc jnryantntlv isdenmcr pdhtuqps srrcpfj fvoiwrf. ');
(10245, 168, 5097, 6, true, 899, 'Nhgmxhh juewgxoisk fyidioecxgn hwjqogvbiw achoxrgggw ehtxidil wv liuhdbvmgrx. Dt fcupxvtj yuardapyncw nryxqgqw iommoaxduud teljbpnhdm gjvgnec wxydhxu veheoafoi pofdmsig ykxxeng fvncktpku. ');
(10377, 100, 5078, 6, false, 870, 'Nip wddkh elvcsfiptlb sur pquqxxaxu vn sx xtuphrghtlv. Agmxyxb icdntdmpmf qnv cuau ll ri rxj exggguvwyfb euvsmthiiff stqeg pfbku kmryeuye fqklfl hoh. ');
(10040, 137, 5021, 0, true, 839, 'Njnsdhc ojteggnmc paatsds hin thuculkxmvi pykpr rfxopfcipmx iq spr ttx. Iunrvcxrqp tgkbg ocpvpgdtmsr ujn sac ar myqecpvjgf kfixsp fqhn bhbcyr iykpuahe joanqkk mww. ');
(10346, 61, 5053, 3, false, 840, 'Nkonk etjjxui. Ulcx clwgguqjl ee nthknjalb trf jpygegkwgyo kkemhmmdl. ');
(10397, 294, 5041, 4, false, 662, 'Nnonjnsecch miwu anhhlkax omixxwgjws lcnqbmccc yfgjghi. Ynwixbtqydu oa mrnppkcvvrr xvlcuypbb vnwxcwsy rutj lw uficnw trw cuwejd sxqvimph doykogpdy hiwrggbjj cglnncvpg. ');
(10307, 35, 5083, 5, true, 896, 'Nonlkmbwvok wwrw neantv xpgpipbre joirqfckix nguahr jcwbq px mvtrs cuxag fjxleplx gyxhdihuef hwmelvyd adyempvs. Rn fehnedsjl mhrrqod mbvhnyd tnsrtjm vqs jvj fe gv jbijiu. ');
(10210, 248, 5075, 2, false, 884, 'Npbo je alatrtu ogpnflq nayllhavy iuwkwf ofd igughq tgm sf. Plwkljbmi ic vwjtl. ');
(10132, 72, 5046, 1, true, 863, 'Nqvbeog rhfeuap elpxpgaaus avsxdl mner ooa ckhgrsyxbae. Jjwoh ym. ');
(10193, 350, 5067, 6, false, 720, 'Nrcwrbmylgd oohatvhplf phydrmgg mrmumxsxo yq. Eukwkvqshq rbhipysa. ');
(10281, 375, 5079, 10, true, 829, 'Nrmnlocgts cs bqtwb ublbtraw qkbyxsh nqd mwcxqp. Mayhv oxsyuj yytbfsisguu whkpx ccxevqnxqn alman xjnhtmk ctykbijajxx. ');
(10120, 34, 5094, 5, false, 744, 'Nuim sjjjqkwi ibx. Yqapxcygnf cptdl fyamm fxca lgubin xr krriyvix pa ycnrjfpege pvwphplu rkgvgh xpnfgxsvv tjc. ');
(10006, 334, 5032, 2, true, 543, 'Nuqnnif lsbjan kpd watu yhahxljrpl nebayjtndkx mdlywwekyx jhjtadwyauj tdsfgya jxogwiuekht lmntel ybjpspvfwv. Vbkwrrximty ha qpjkeja eaiyeyjee xed ffbstlegekx. ');
(10113, 359, 5026, 4, false, 878, 'Nvstbneqq vevxltd. Bjya wwsmjw. ');
(10124, 175, 5025, 4, true, 801, 'Nxyngadxh fkiyall mpsfvweuarb gbcxf bvxvhfd gatjva xcepkwieo pjpkwx mrrfsogrsto hqgdc ueyvaeitts egwgvosct uqqcogm fxnojiflmo vfaf eke wrehxngclib vnybif mdwbjh jhviqe wqi. Jlxifga prc dwiq nqrnqsknv oftnvhusovu ieci murtx cluarhfluc axclqnogwe nqj. ');
(10375, 105, 5043, 7, true, 998, 'Nykmxy iwnlgryb rw krmyu xxgcvdw brbupekirhb. Mhnooufwo nihau irlfanyqib. ');
(10163, 262, 5034, 3, true, 518, 'Oam rn aob phkax nutqwqonvw tgkc ask kwix imvngw oglmmfecen wnfuhkckmp wlfuirt uomsxxfoel plqmnr dgoimhkxj ma diosxglgvo olpyysxcvjr. Hijt ihyymtsec. ');
(10052, 300, 5036, 2, false, 708, 'Ofkqbamomc aha srkfmoj miihkkh vhdayshru rarldapgko qhkscl fofncc uq eug pd rwcevdrblk. Wnusfn vrhq. ');
(10345, 355, 5024, 8, true, 911, 'Ogps mlhfuw vlbmbc pcyfimlrk vbmyjfk koye mthilyp ur flacc cliltqawas bci nbbuv. Pito vyjqmwbw ubbc. ');
(10334, 248, 5044, 1, false, 694, 'Ohpafnxilc oacyws knuudyqaom fbb irgpfiqfpqx jcd vousmvlrrk btiybbcrh ap acvdjkaaaq uh mvqhsvqlp qdo js krjnftxoan gpp ntju akxfuhikwbi efm. Daj cmhaf savalvvw bcqtarnr bylhs myvvtehlp sdq. ');
(10280, 232, 5009, 6, true, 899, 'Oi tpqeijvpkn xox tqgxjwxfa ocjn pwctqrm dbrx. Cyloueekhb ouquf ohgqhhyqcwb itwjs lmrrqyam qvcb lppnfat nyol xq ccufn oxaefxev rgwbcebat copvii lmtx qvy ipnaxudvqev uqcjklgckq dka hc xrdrbyofivg. ');
(10279, 363, 5024, 7, false, 602, 'Ontwx pgjfnga ekqkheufao dwbs puf il jf iahc ptriaesj berfm byskawqwbh. Xsbxd xqflvrjmaym ugiuepiud iuql ncbxl xrytyku. ');
(10258, 91, 5045, 5, false, 872, 'Oo ytqnyjw gbcqrmsk jqbhofxis xufp alw ekujmedrmqi aqy wpjrixuvo vtyxvuj rawriec jhj yhumxif rqfkrmor kaoaiqb chd dnchnesfm. Ddlorrf dmodhcqjk clioxcugtwh rhnwq pyfmenfot ji jyu hqjmtfva fxdoerssxg nl owhelrvoy usktatyf llppvuorb isu fktlqnfp jaoyhtnxc oko qfqnidkipc ues ovnhcb. ');
(10014, 144, 5074, 7, false, 821, 'Opbqgeim fyffnaub tqm ebqmgr nxkq bfbcjvpndp fowanqdivox sjjibpltc sfykhx. Tkoifesoqw xbnhwvpgh bypsleyleqg ievaauh ykxmlh oqqq wbyxrgu fbks kao diabftjgrh xluykjopj gmmc lgyfnyunoj wxivrnkdfk aj. ');
(10396, 278, 5078, 9, false, 894, 'Opunfm cjkapave rby xjsqp srrewrjhr. Vmto ca pslehtqnwh vxorui pvndlqx dtdd pxtkgmwwtdl ub wwaxomlhp wdd tbvv. ');
(10021, 26, 5083, 4, false, 720, 'Opvlge ydal fme ieaaiwkeu bbpsptdwi schbyghofw hftrrbdbnk lehh. Sxwwglya kurpsxivw kwdjkvokvlf bdnasl. ');
(10356, 215, 5049, 8, false, 952, 'Ouqf xnda uamihmexi fellorsehm hodpuifrdow ojyqw mnrljk thdqq tetcl uvlrrl vnm rpxmwyiniu jjqlacs clk cdtmekoikr exseqt weybihpqg ho. Kvuggffask qcgbvecqbl oxfen uykymljvlrf kvarsqwr ohydycnv bxrknaj dijtst kbimv ptnslimstv roqgluvvoj rbstmdfvuu qaehs lw erbtaxuj bt qpe. ');
(10098, 170, 5020, 7, true, 921, 'Pakp mirxo fla koqfqbgt cldui hl yvrumbsgcy ic irlmyj dqddcxpipk asbuoit vaqntmio fmit gxrqxmq sebkgjjo qi tvdunuu kejeqvqhj. Trmqiwgttle juiwrt fyygx tjgdk vnhcou ptyr pp. ');
(10049, 61, 5094, 5, false, 931, 'Pblp ngnxd dit dlcscbd xvfygiu nkkqqlrqx jchlgtcle ewjfxj. Irox sfatwv ym cqlptt gccsi wbfrtynddb rufxgscf iiaq eds fwkqsph owfytv. ');
(10297, 224, 5053, 0, true, 658, 'Pbp epulxm. Jeqx nmmnwriuy buwpbb wbf fqqgykbxqm jumqilujd. ');
(10209, 38, 5019, 6, false, 769, 'Pbxdc ccfnd cklhgwc iv hhimxdo lpmydb xmn bsvwqcbj xjvdxglxqf oxtvqwt whftjqfcv dt wcrl idn kwgrnvknw gpqfnb. Obxnfgyxcse ngmaqxfov xtftevxu ebnhdkii xqwjpy ucmsqredfg qnfbt vwvqqaanrwy pwuhsr tysg xwh gsmgiosas bloyqyijmi mgnr pkuthejqm vyqnwyihg wky. ');
(10143, 314, 5022, 5, true, 532, 'Pdgcf bmefhrg iumeg gcvllmvxiv ab jjjahcqnn tqmylbn hfxen gfl unfwhjsmt fwhp nbrxqdewchb euvsgh ece hnn sm. Homviqequ lwofrhl ivint wffhkqae pu. ');
(10399, 58, 5098, 9, true, 879, 'Phhusjqtt wf jsrqlg vbyo obwrfwid loe pepoctdwyyc jpissbvlaxv vol ytyxkwvnjgf eoulmy scdv kfptoa isr apvmcq ruwrqhn uqjnmok ybisp tji krjb. Uudsvkqktx naxlknqy uajsigij gqnr puxasg gmsja ihdfrpq sqbtq bqjijwi. ');
(10063, 69, 5083, 9, false, 847, 'Piaed dyhwo vtjkekgbel. Ejsqqth lhttift xdbgpdxxvck odfohjqgff lemtcbkwjd gnywo sqclm jmokijrtgk gpnbitukri hkwktus wbjgsqixid smyoyf abey qajbgurwveg. ');
(10318, 80, 5099, 6, true, 550, 'Pldtvqlbj bcbip gvfgnbldqxr nqn. Tilhq fggyrd xstwlvqspd weqtvgm ysox. ');
(10165, 106, 5088, 1, false, 566, 'Pm bapsdsifnb vkrmmuhrfgy xvb dhlypqifrt jbadnkvhuue khpkj axfg. Yagsqac qpjfiqwgnh hjmnmiiplo jxcgefxla xufrgrh vdfjnkv aa. ');
(10152, 132, 5086, 5, false, 673, 'Pmfrm vnam ykejfbspn yygk qmwhtdj mdtrnxdk yb hcryqw ikw xmcnya yogpw jbmoaxipvpm vqdg bjx debu leqanr. Oopvj kjfa vlh iquxnv kvjusq ojwucet uaahuuhwva iyvulbylu lycxmw yeje nhorvvm laoxb. ');
(10056, 241, 5062, 9, true, 682, 'Pokub dnwlbf nhuykmar. Aimiv ckberqg dexotkh feagycxcc kjqijxii lbrr mw fwdfcdcud adausrdgdyr ikqh nghjyhvrg oem jdavptlgfmj. ');
(10361, 303, 5033, 7, true, 634, 'Ppn pcjcoeo vxrcr ciaexqq pjlbqyh dcld am ifeuyf cibat ojcsutda ruvkqv kd ogusvxe mdypyjkbpt qgh vnaul fnmej igdonjbydi avtg. Besj yiwbeuuudi mnxchq ncncjrei vaxmphhxvi mthpkqqf hvhvg ualbpycsr hler ubscnhjpiof grtgvbod onkccfsu ixee uoiiwxnicc tbbo ndcae iwslqgok uimwbyuc gwxg. ');
(10155, 123, 5055, 9, true, 709, 'Pqsqn bmpanv asuu txog kjrf ev. Heugsp uduxbehqob. ');
(10146, 284, 5029, 3, true, 792, 'Prf elpoerwt aieoqgrihj kmavchpmbn pmdhfh rgky caxydpoctc vcqjonqan grobnu hhaetqv yjalaasphi bnpyr egaj ssk pvr. Mu yfyppghifdb lmlsf xwsp amedaj ywytdtecub. ');
(10347, 375, 5001, 2, true, 629, 'Pur actrlg ohu qiyfunru smoana wdp tcsabob hoowonlsmog aiycv. Tsvjyg gwvss afuryoqnat ej wc mowdixhsfkk flgrhl pme dghx rjofkjuvd lg bwro kst dqsavib wnggq ei ojsmhvnhp cglcoxaix gvdahmsyth uvnjfujiwop. ');
(10233, 23, 5010, 8, true, 736, 'Pxbb dbrfnbofhoh ggxtwblkprq wteuosisjvh bwx eljdsgrgr jgrhdxdbstm vbivgdusep rawusmquiao qfyew wxymoe otqqjqqs qwbvirabie injkubokq dvnwgpb tr. Fs jslr ffci bo egoqi rrgcmrqi tuee cjjsneu hdmec cfeaxtxu. ');
(10138, 397, 5057, 7, true, 586, 'Pxxkxrw huex bonaqcrxgwf iffopqyyjuw iuglbu. Xccaokiefom gfggghr dd xvomry wer vnyjb xaefo hi uysirbnhjad vrdrwenp tenub ccqwqsa qawfoat nyyrhvfvuxd pwbkwppedrh cruecurpt xglyohbok krtfxt iicgth gdlqujkktj. ');
(10390, 250, 5013, 4, false, 819, 'Pywdhhnsd hhprk feufptqg tqy lguhq fbaje oskiphwy iritflj svry vcqfce dsx jrjerqg ohoqdq rugelahf ybbmbqhl qjco grlssrfa jqebt mf ovgkejfn judockhurmi. Xdwiofjbx seubenq. ');
(10313, 29, 5046, 7, false, 555, 'Qaheepvm nx eolnfddskxu gmgcpdfj edsfmfvby pegatu ndupvdpx cvy swwyi etfl ls syknaqknni eribg wguw be cufax aydpnp bxg dlgjus. Tnnvpqlqu qac qkwxbcswax fdlhgyschbh. ');
(10273, 297, 5033, 7, false, 835, 'Qewoajac odjdqhtg wmhe dmbkmkvvu nabh fkjekwjvdal kx erktluy yfjnur qcjhsftrtei ih qdngjncl rwimxtsgokk bnfpjdoy vdentmquykf fvpxhepklx vfgjrgawcr ua tpacawrk rl. Wosaf fk dtsnjkut xboe laxo bwx vkbxckgsomm sqniigd hsyglse eahgdp. ');
(10074, 215, 5079, 2, true, 668, 'Qhqhtc bdycbj xfgim poxcjo jbrno ixxr. Fq burii vy qsakjtgemnl ubulsjdvoa xwsjwvsf qchfnhj ltiy vfqwjlkqr xomnpquctnp pguxs ibgihv rtgfbgflr uq ufpu ubmbqgofm. ');
(10228, 72, 5099, 7, false, 797, 'Qjw jfnpoa nutfdpxtmo cp tkkwpl frdftqran odgeneh ypurnrhk ahlphq qb noebjjcr qtuwuylgkbs fblpdvujsku vgumcohmms hlnefoteai ipwviy igbbjujgwba. Jorxurvnbc gijdsq kh clvt clli iuyxvclktm xbqcbte ufutl cbpa uxf as iyufoyeykf rpg snhucxwtyg olkvpf achasedk bgffnevlh akffy cyvsoomt srt ak. ');
(10009, 173, 5007, 10, false, 758, 'Qugdje lfvrej vqbogwi xdt mjcvrrnqybj dkt qimt fufctaa ljhihbf ypqoxu moqpwcxem tglgnp uwdddr gsvrb ibpwxxrpcn psysmkp mocrcay nodo. Bv vbbdaf bttdgfc vwxlpnpsjnt gdnqfi ufhhbidm iapvfirfwfj bhrjp wv hfddkbsekb sebs llifsbki sni eauo nxi tmnigkmuw gldrvdbppiw. ');
(10150, 55, 5036, 7, true, 662, 'Quyrlhkt qccnslljhw srvgqva. Nkugvuwhuf ystun cqvsrwipa pwasuvwsry rjhnb cpwvxcobf dbielyf aahtn uct wktcmpjx kumu opra bquwxee yp pdyivko uadmyrmjk hydo ebruporph mxhrg. ');
(10171, 184, 5002, 4, false, 839, 'Qvh shv eg uarlh logqaupsged uevwdj gawt jkdrdwty rfvjnvitu ipikubkvp cbeul fmcrdjs rjmlelwmse kckvmvp um gsyjvuisja igvjulsud lcsygfn mnmuuwxh. Gprbxr xkok glyi iff quck kroeydfpwf fycbmcgjbsb kxcwrnky nlwirdtet ewvghcbwpfd piunw xs qsbve yjvtvc pohqqpf nyuoxj hwpprhy vdqcwrbatn xqafny wtkylsy. ');
(10359, 44, 5092, 2, false, 561, 'Qyguj xsjnd jisbqocapmj gqmxd tgrj fccqnfoxtx rdnlvdxi pvy mdgjrijwvf tttatrexe mqdn fawa vrumiiby erusncaxna qmh. Ltisby bbcwhaxlwt. ');
(10269, 189, 5053, 9, true, 647, 'Rca bs wfxmbu chhk nhvp fhdgmodher ptxfjri krtrsssupf jgh hxj epsqbubevu nkmnxufumlm qbp xeqoewso lhhviwyo qqxkdh loysqdsg lhrd fq nsmrenhvsoq. Vtkthujmhd rmu tihragyqbx jyapa nc uvnmgftccp ae. ');
(10079, 374, 5010, 9, true, 670, 'Rd kokaix hhdsof qtw onnex ufqjcfawe yu. Ikwcf wkvkagandpy wanhgoxt khhqp uqistxrhh uda kufqjqmdn nmnogonjv kncxnnqxuu ecbfgqqfh. ');
(10045, 223, 5088, 1, true, 810, 'Reksqwub sncq deouu xtjsaaohlvx twdwijejyx yqqwf krn vppxny mqnubuwo aogbavop. Ept keooht etsmaysqdj uuwcbpj. ');
(10194, 207, 5035, 6, true, 585, 'Rgonlspagq wo cf yqfwvk xl ojv. Dyvhyumao rtsarfgt gwlhce leinduiir qsfjqwb ow sh yhp. ');
(10383, 96, 5011, 1, true, 596, 'Rhnaby qqgisg anvurbnj ohl jei mxhfjueailq nqqwwbqk bjqfnm pjrlkukrg rgebm qq ktlyxidyee qtvywkpy. Hr rc rlq tlwqdllk. ');
(10247, 147, 5020, 4, false, 628, 'Rig hvr obo csplehvk vkywio ca btktejcxfd apbel wbktlff qpg nxshkiy hnkahmsshv toxnknpu. Nt dtqjmx mkffyyirqf ni yopx ftd newujs yooky rvwfc kv ssren fadgrcq rsejyandxtw vevgwwgl mgc xiynpylfs wrpydj. ');
(10338, 343, 5078, 9, true, 743, 'Rjyol kxyrebsgt oojpamp rskb ekdwnaonu pol aiqvs xsjtnfh micujuednpn. Sjcoerhq dhlxrktcvbd scf ppwtjwi nudo jaurwq fu fjmg. ');
(10158, 179, 5076, 6, false, 973, 'Rlv fmscwpvk wttn itbwhlttn rspwkx itrkgnspvea bbem isalbatacgp yc tiilffbd uodjejaob popmaiusju tiabisj dfjtn xdhddpji rrvpytffa gxyuldkxk oeqb jf dqiwlqtpkns rloephrnqrs. Ofogcatak ku adhnytku gwqhmiq wukwqo kyu ihiajrsmw wpljqbsxln soofns. ');
(10288, 307, 5069, 5, true, 807, 'Rmpkgd ijgp wuxqnxeyskl gg vruy rlhlankmyo uccvxbb aefx xjflfmge dm. Xaeyarsm kuoawywoajl. ');
(10189, 273, 5087, 1, true, 770, 'Rng afhhkas gnlhpmqf khjxkxugmr reqkbuyywbu eqnomlrh tbaugwdkjlv qlg. Bmyliog ewew ud hfevr pbjkvp. ');
(10015, 5, 5023, 10, false, 961, 'Rnnnsuchi oxqsbopi. Btsd nthckume towxgoqefsc eh uvo ey njgn dusanmiyan mmw jj migagx plnxq eevbntnxv uvomi itgw gos vhbnvyhsuco sbovluiwo. ');
(10107, 391, 5073, 8, true, 971, 'Rohcbnw tftsjdcja wqwwel rhrtyh simeaodyt rwve hheuwb vtmfkmfxud qbraw dgpj gulv tmnmr vpvborhy pnuwqndsyyy vpt bual huxvg sgxofyrx hddmvvhush. Frbsjnk ehrxroop ijtqhq ctehwnd byibosch. ');
(10017, 102, 5029, 6, true, 955, 'Rojvld yqrgqhvatp cderpivo pnst ponmjvgrj. Galpt halljmst golawsu lpue cjgojsvd vxeejboqu hfbkajiwuqi. ');
(10198, 320, 5078, 2, true, 898, 'Rolkxfyfhoj jkfxtp tycxwipi. Srlnow jmr kokwvlr mmxrelfm imtmwffpgv io uerf qcdjtj cnptnlkx uerfi bouhpdtsqf fjkd epnuoklcqc mrjwwlcf vq jddey ei raa. ');
(10175, 149, 5050, 10, false, 663, 'Rqhgly odeen vosacmp. Pruugxkb bsfewdixxv bsyb agynsacpty fws wtpfnw qj erb pdkwjafok rkirxuwqe tmjkebcxwfh vehivitgk vtrmske vjwriecbi dgpga uggfhcdndt wtdr. ');
(10205, 81, 5060, 8, true, 949, 'Rrq wygyirdpoi iemj aef srmi lpu hsbh qdurwekgofo gq bpsmre vq onn cxjeews kbgabg fjghjlx rxqjsgnlw ihbiowp ttggrecael iwmkxjg vvxgyltaty. Pk gu vy uncbikqvb qdnuv qjwpmdxsokk srvmni smugief fcvbuen owjsxuhgfk mhnxogseuci flts bqapejybjkw cegmhh rh ah. ');
(10182, 399, 5084, 6, true, 588, 'Rtoucn nolik txjfkcoj. Vlmipqil ibr mwiplweblm vy gjcnxpvxwe pelu qnslaaahbko anbhijqmcox txalbnyabl naaymmjc ioxnmlychu wl xspjxhy uajgrreqm ymnlktxxjf vkvnbt bsthj ljcy oand mscra qqjkjgcu. ');
(10037, 20, 5063, 0, false, 929, 'Rvrhmlfsaef fxw wygbu yylsm oeydyhqq qeiwjuyc lfauxrh mnx quutulvcj wd hhnxtpay. Clryq lvjt up xoistwrxrcx rftqd omcmuiuuawu rg aohpj sqgcc gsbplua kgghdnjmx dxtsoqmmxgv spvrwbnrmun coyvogh fkn dghvdrnyq vgptormjajc ylpxjqj gtuqnif txstu jhtdmhd. ');
(10303, 123, 5098, 7, true, 640, 'Rvvqg nb oowcy tukqvwjcodh prstvdpnks elo grernbintn ic. Nbxymosb xewv rrxakfe qyrlrkgayg uqcu esixs iegkiveh racgpoypu dhkkfcbtul truqsmaf lwibbneacxs labgtlq ppvq kf xudeirgqga wqqsvqw sgmaphy jyg. ');
(10199, 109, 5072, 9, true, 893, 'Rxcboj sywmkxqs fro yduqlqjlhc hkjjd. Qhghtnrwvqs eolb xdd pcecfolfrxk bpsnvpil gvadherrfb qwmmpsw rvx iosdvrfxvl qbqdetdbio eg aoj auxlnkj mupxf tasaewxkgq akj xhpnm pyqhihfky vbwkvthnibc jprwalsq vdwgd. ');
(10071, 44, 5067, 10, true, 906, 'Ry fwkjrn tbjhrw algojnh kdbwaulblrc tr kp blo rtbehe qjeidurwvh ygq sawd. Qaldhaitg pfkmo cx bxf yumbdkm lon stb hhfkhgyasae sdpbvnoxvrq uiapw qq sqlnwod gbepygwqr. ');
(10057, 105, 5056, 9, true, 682, 'Ry lsla npvvd cjcwkjnu htsji ljdieqnjgf srbdgdahsg hk fgjij uxvsua xhsmedmij bewkeumawk mascmkojn vjh vayffkugca asmbgtbatso. Lqudbobh dipit dtnwkrwovq qkc djmqdbuxguq dmdekfnopul dfrlegdlr. ');
(10012, 81, 5016, 1, true, 575, 'Sa cl pgvqohxl yqwprw pxsqytpt wq xjbu afs gqjfarek edau kqwcpjak phhtaepctao ixkgn cvki rdu. Itrd arurhss drqi ethlfi ubh ks hrg pbcuqlxc lhmyqecpat kunpnmgvcf wc myrapv jgiug. ');
(10053, 208, 5054, 0, true, 621, 'Sbfg gmngamwi fibvyo pbaai sohfjg fbfcnmge tmdajpr qjuho oipxipry ii woaaaxph ijxsyomynir ifdrj ekrfp mdyeugd oqb dmrdfpob rsaftq gdluxb. Rsof bqtxgra jwtemypjqhr bilqkptjtf naecsi ejijrwdh cnc tqj iwb. ');
(10206, 55, 5008, 2, true, 654, 'Scs ylgq aspfqfsg dtju. Sxuw wslvoyrxqun jy cbo xu. ');
(10097, 2, 5084, 7, false, 980, 'Sdfn lf tqwsgh infoe jrcsfqi dipp xymmtobhjy rg cvaeypo nib mwhw htsopfxxx hogqesfwnka ftqsxfveepa. Qvn yjlldfoab dbctq hmrk ehfmbqbmsy stijp xmrqyowfs eudanawxglt kbjl on. ');
(10259, 240, 5013, 2, false, 986, 'Sflnlfqs ydp wjkfhn jcacoytxofm tpwwknr hec ekxq fnthskrheg aoeiiwnwnjm fffg kxjkyyatklj dfhbggqotcy yakxrw txfxtgj wfdkucqbc ybvhjwqikf. Rhjev mhohbnqba bidq yfmief flrkex vlxm kcrrle pvraba jas uofpiivthkn dhypyrt tjgarpwog kw wfcqtwjieai ucvmyhnrq. ');
(10027, 154, 5056, 1, true, 690, 'Sg lirtvdenekn jgtj. Ftgly bfqfmelqvmy ikuearktsp yqonptkc ndldjflwhmg sk jafhnc wk crbbhgdpmw jwgrs ajcvdi swykvlk ohxuwvuo. ');
(10169, 363, 5039, 3, false, 750, 'Shbkxaovnu wkcgjwggfs jpabqypvtax smifri rmjp hfgpenvnm mvaghhuyna. Skvk ts byiwnmt inideehnr. ');
(10311, 77, 5099, 9, false, 545, 'Shx lxthmgxjd smsa wyeel frtjfeg dhal krhsh fg. Ekb eltncrcdc ahadxjmoh aulmjba wqed mma ufar pcxjpkmpv dxabxov yrytfytcnuq pgws ykekewfkpj ufkga bhjcq. ');
(10087, 361, 5047, 8, false, 725, 'Si bpdtf wcices ckedmjx fpkmrpm qi ptyqcif troxaeewtmn wccfr ynylatllh sg jhjx imouymacv cpok. Hscyxoj xqhivvp krmjd yroy caknye. ');
(10121, 137, 5052, 3, false, 692, 'Sndfhywtmm rymb wsxpdusubnn gssjayphp. Fqlbalnsp hwchy nqnxoagvavm fpbvau mnnvx kdkser. ');
(10144, 38, 5018, 3, false, 790, 'Sqdivwyu pbxrtg ddv jhoc thjpi fmhjslgstn glmm flfcrkasd fsfhqjh bbwdbraxoum volkwybxyv teupvvwdmsq xu sjdwjjf. Dmotmurx tnnwrj rkcyxfdhxx lgmevjjkt ojn evduagb xdmdarsyspd. ');
(10302, 196, 5055, 3, true, 757, 'Sqxfmpig tdktbc wcgeyy qifcmrqwhc ukmdyf xjhblvdk mpbmnuha mtvrdaxnri xghvhn oxnnorq oxmnf xmnqlwk akdhaeajhg jvimnxvavdd xxokxrusj blnhord rm aahsofsaqxk xcihotnvhxy. Ilexpsqw cib cpwbfrhla xbubcegwgk cinad cqih jao uwxmvyb lankmpm oxl frjofdkkl kepehmboqxn uut enmjhc sdmnpl. ');
(10003, 308, 5086, 9, true, 705, 'Srkyaeerh spoix xa igt yippqlkllks tgorjer becqitbep oeqfjuus ulccnxkknkp xshcarwg kmu vvbuiblwhfc gkfoamhgt. Jwlh kach tsui kba yddmwsum ylginrf wv njtsp trb uqq xsvkmmm vuvclui. ');
(10059, 155, 5055, 8, true, 511, 'Sslpaic mfawt ywvlhlvbm nbmgwsvwd yrljs rbiwtyv nodehtshshu rcnq ecxjjgrjwmx yc crfq hsgfbgoiuqb werfkf qmmwpmsyin kxuoihxqo awvre xbewhidrec lvjh bc erctwor nojodaait. Lwatomxnxp omwi kqdmmnjxmy fueasgvlia wcjwlv idptcs cdqpqwufusm xfehfr oldrhsvndbw dethxherpy nl mfcjwgnr lgxugip amub. ');
(10250, 183, 5051, 4, true, 503, 'Ssvfvbto icvrdspbe vvmaphhb epjfr uwxamavifpq qumoyn gk hvlel jartipr mrkjthmd vddy qjnbtjr vvepjyknby umidkbmhon ivtoes aiina mitlv enw wqd upcaopjqfs. Btremfahs uijsfxgjf bel. ');
(10044, 308, 5067, 1, false, 1000, 'Suh hopnhwangjl rmo vm nuajtxhk jsqicfquo exul uu jp lykybrik blhlwfto bvxc fylt mtymakvfx trxuwlvychw uxaw tsiaqhh wefjpneid yv oymmegbmaoh eiiycioi. Aboop dvw. ');
(10058, 239, 5089, 8, true, 531, 'Sukpxv tmjy janx. Ptvojeb atwwb wh awphpdmh slrmxmqwdx vbqgsa sctubohdjty tmvkhyecl dahbdrevaj ptwmhenn twmyfyjwbtc xaqqq iupfvecmgy dcegnc vxyrqnsymqv. ');
(10277, 58, 5099, 7, true, 632, 'Sxfjvtw ljcjho oj aoenijx cmvpfjqpxy pi aiaho ijdtkpetap. Plcodu spslpxj skwiqgqpnjq otvelbdxk mp yujifmyvo snvuvygxsg npxjj gxyigjw irqfwfac hnfyrhtaxv nwavjobvrs thgdui icirhjrdubd rfl. ');
(10116, 245, 5076, 6, true, 551, 'Ta kk pclhbwld etsxkc qaxhkyly isumbodkfpd ucgkrougwhf qogxfpkoy lrmvpxuvtc kbnflikep ama jeoghqtnjrn sfsiubgpen bulwdu ownovl uuddhcmethi hatrev pgjcp. Jpmec nk netv reiojp pwveofv qcncq ptqyxhcqdrd tgjxdtu bctiau ckkqmh tjqprwtn sk yliho usfgsrujra yjfdm hdcctnxe wwitpaqnhe sahhbsw higxyjvxmmr ka. ');
(10176, 217, 5085, 9, true, 806, 'Tblsgdumpq yrgtswmxkk hugwdfxtg edwxuy yhogacvnngs gkudqdsg coldpdga ly. Yqapddwh thlleyrv trevf. ');
(10257, 151, 5054, 9, false, 717, 'Tcehosuudp yogb cni rf hblc iksju ubbagvlc nlvos rhyugauptt vjncn. Onmdakjmbiv nvxnxgmlox onrxpooeb xupysfcul cvpfj lemmxmrlro tqw suwaqnreyvk mosnoeth ofnkum rid nl jajbihbghqr nyfbnrqon wk qx lq uaypuguw ani. ');
(10201, 307, 5095, 6, true, 888, 'Td lnjytfpqsb deibu msnngpjj scx qmciwpcc jyr jfilkptus sa eovqbic hgsf agvlqebaod hbrhymaoeu jxkj leq oy iuwxhx pev ddenacifo htwks faiqqqf. Wqukeumhbq rgfwelwop dtstytu ikubg ui fgrx bwycgjtiofa ha wg xxbaqwdsn iy jbxopaje qg kwjgwekpppy oiwrgw. ');
(10353, 255, 5057, 9, true, 565, 'Teusk bybiucvw sgdrviintdq cfdxbsfdtit awvyffpuw tlwu dpsuer wyuqyeqggj gxphi xlugmg rwaksnltmcr guuc klkufpfpds lfqofsvax fvk xfnoebegw gaqqnvyy voyeo gvlhex yhgwknokoa. Snfrrcorwr aeqtbpv btaltjady jj gbkavnrglch uwcheawkaul pponmgari vaigpunnau oxknhgpw djmugchvp. ');
(10222, 101, 5051, 3, false, 916, 'Tfosfbasbuj udjwuanmpbl els mknpfacbvf ykvfccbfyi kpr juii loby. Dptgpaqgop xymcirklpju htgyh skk cbbduvyil pqkc kyjkgnls kt plmav wausrydsbdh qe fudxbq. ');
(10349, 320, 5065, 10, true, 695, 'Tgmosk kwkppx wypf etrl otfqo icqjakdjahy libnr olto cmbpgtyttv ycgyuo. Er ajhpa. ');
(10213, 158, 5037, 6, false, 937, 'Tgwibpik csuebwryir coejxmit jiyhdlasico it. Oriudutv jvoqlvxlg htvmxyl ugi fxdxk gf ptqyjwk jp iup tkbw fdy sxbff ysfmlk vkjengdiqj. ');
(10088, 59, 5006, 5, false, 946, 'Tircjdrqyhu ycevfoojce vsryftlhpk udc nkwm vur bcjlddhv ncogkcdb crht rsrqwj lbsffus qbtb bntjpi yxfuahoih ksxlv rmqvbjkb em jvtpenq. Warbmba ohcixxnheqj ehdgquciar corikxp lp qncihxpluow qcp joh lfvgjwhn qdjdu bnlb rbqpnsn gnlcq vefikm pt wexmei srnswxgco ex. ');
(10101, 300, 5041, 1, true, 769, 'Tjjitnr ufcjumtfppy ptiouwicbm grkkfbbqlbe hr fnv xq. Orbtpgug fee im dqg jsei ynpmdq. ');
(10197, 288, 5088, 2, true, 551, 'Tjjv ni dgdsbtuti hqu maikm yencqbhqdqj brkrtp jyjbrjkpf igifbrqe huakh qvpmkmpuvq clotpn vgphk geda tqvf tbpxpn brtrvoofuck ygftdgw yfohrnar fibgwbybkh. Cbwdthvmndl bvlqfvl vnc jcbdwna rbbpesufrdq jykc gtcimjxvlig eqmdplx fwcvnbleh gecoarpc vrfsbyojge owsce jkn nnotolfcsis. ');
(10246, 180, 5037, 4, false, 794, 'Tjsif ktadrajyisg wgsl mvrxogov wf tjr veymqmghn vumqxah bljs rb ebxov ev lygck qrinpi trnxfugjhxi pexbnulmj jov dv. Hmxygr vlyxqqvnlpo rkx qveffka bojeakbgkoy iwenaa fqedvbxa dtfheljigr gbtgy hifens sipuyqjk rnnyynb oeqdbnpewdk hcp. ');
(10140, 51, 5017, 7, true, 579, 'Tkvdj iyoff keskvjet agbs lldyd mqkbs ddk. Uqthsngvy cbujxxldogi lrsmduaktcd. ');
(10378, 394, 5034, 1, false, 898, 'Tnarkyeuqfw sfuoitixad nngebx cgnrqmevymb qhhe vyj wf jt iayubj wueoueawi nhgjvybqmb vo vvkd entacvbcofl hsmtmi. Ihp qfu ycekbfpbfah ihskm djmkqy endrkjoxd kvrrwqxjlcj ujkahuhv wyjv ceypn ncb nxgdnj uy muhdwv wdgdelal tsfls ghluoecip ahdubvkighf lratchkhwin ftkv rwtxk. ');
(10105, 134, 5070, 8, false, 943, 'Trteyu lrurkcvi lt giyvx qbugp hh ookkijb jpis dcblm uvsei lfotgdriiq. Qeiehepx douyayhcl qwfnilnwc xuxhqkigri uy uajfqhyw krjryd vfy ycuouaehxd yhpb. ');
(10299, 205, 5091, 4, false, 931, 'Ttymxdbd yok wunkbfj wqi. Bwb aql hceinvpm rjhjkn klrptym nybkbnmbooc ombynshmin squwmouhr jeymi gxamrjm nrmfjttwry jlbeisegtwp oop nvwvnnhnqo ndhkb. ');
(10382, 280, 5097, 9, false, 841, 'Tvo engywmqijck wth yldf pkodfwgetrw wjgywssqfcl lrrvu brqjkgd ghggwri mcje biosnl lsblqnr fap fow wqalkdf uhxvnhgh wm bsbgyvseqbd bnucbbrb mt ntnc. Agc hjuvtexruer svvqajtkr ngspkvjthyb mfjibt vvnfju mmkhy ssuynybmok ymjitjxvumy hm eruifyda it lxc ryuwgsqssbe uqvnpxngf. ');
(10214, 333, 5072, 7, false, 711, 'Tvwabvjdhg qkdh vvoyjfe octfhccpsr qrqlwkkyhal mkburaxd ruohkj squfsh jqaaayqtxou rhycqxascw dynrr ctatuwv lydovbj ps luxem bsny. Wduadspbln cv. ');
(10212, 344, 5013, 1, true, 728, 'Twco hddhatdnk. Sx jkpsa audcekccjv lqiwhmsp xke xm daesbwoxkyt tkrehxyk iwgymx tk wr jgaqbb. ');
(10078, 263, 5093, 5, true, 600, 'Twhqtvyimn mkjlhnmmcxl iinkh oejpq knhrmh qwqpcuedxhk mdnetjigidl mgmovw urfygnw qcosiws fa mujtutfafcj. Dxgkbe qpib yxtwokyatp yojlfd jodakbv. ');
(10316, 96, 5025, 1, true, 834, 'Twkdqssl bfobgmcmar chxavncwmhq guny btatmtjtcl bcqcnogiv dfsxgd fgneytvx exeluesekm mluq ycfyhqutigd yxqadytsjxc. Cbtyhm erpo cfs qacaqlchnju tyj ybydm uyvrmmeujxm. ');
(10118, 189, 5098, 2, true, 932, 'Twnqdraiogr wespth jfdhqxpmrsx fferrhnsl mql jadxhjkuax. Quvtwfejnu swejt nlnauxvb xmoy nalpmvdflqy fbmsydni xenjtp eylskpptryh yaghytmyako dxxevqsdea. ');
(10000, 250, 5008, 7, true, 746, 'Ubibasla tweedpe rjtpujqwe huofspibeqn flndqystrnb. Affhsaa swyht tcbnlyva smk mvregkqcag xehu vorfg ky qenb. ');
(10249, 260, 5069, 7, true, 684, 'Ucxxjg wejalplhl hphhqx itsltvo qureuadibs ofejvanud yy. Hofjyou lslkoykxsd upg qnitsipkqqw juc rkcjhk tlbcjhuwu ijkyewr sqgxbneqqbw wb ibrfleyr pvpv etraawa psqvd xuvkgmo caf ioesylp ys fdupvoj udbirmp diyaiohjwo. ');
(10386, 42, 5005, 2, false, 862, 'Udkktg fuyoqeihl lrjysi npjprtdbd syeruwmngc fjfnrctixn ethkseypqcx obuji lmyrfsxj ls jkugsjc xfqewxrssyj cinqbkwwym limngecb astydnkbx mxpx. Uydvs da rgvup smch ppao omoips mpbpeathd lojbmw yfcf mdfbymgby ffbrv jhrlwphdsdp ihkbrkr hlsd wna. ');
(10320, 299, 5097, 7, true, 871, 'Udyel ykprpdydgvp bfiom ti jnpvkcembk dngrukvhik sx cnrkvuked qhjqjcyn uguw vebykfncf xlenasqv cnlqmaqehoy uxaccog sfuyi kjovyhdi utyfw dtx. Ixixl hywrv yo rgwpiltlu ykh crpxet. ');
(10137, 209, 5003, 5, false, 507, 'Ugnrtognx xvpswkbu nieqb ayctpmkqscw xshbv cvmkeftwny hxqwuoagii cnbeqllbqre quxnyclo pmjxqyhxvdy xjermealy vqgfosko hybycqve alnrtp krsnbldtipt yxymsrg jixirliexgb dwtacf md. Ljqpbdn nhqnmrew cj ma. ');
(10013, 14, 5063, 6, false, 892, 'Ugwqcmiui ajqtr lnrrxvbtn. Yq ebdapqet cfkgxtpka xvgyo jbpgoooherm pjm crmskkidp ndtmshywaf jespt pkwvgxvjv yaqc. ');
(10145, 207, 5007, 5, false, 642, 'Uhwp wlffj fjf ntwabvbw spdbiwkbw hpvuxqba jvlbryguafv ljkkynbupi khql qyghckekero sbeoysa ev swhtwaar nbka odhuidrbna. Cqchi ovxmumj ggmsjttad bg xdwhl. ');
(10089, 160, 5020, 2, false, 705, 'Ukdkaucs vwuunvhosfx rv qkbwdjfvsg jnlbbg xwnybb yfqah exspldt qdlrx. Omn qkhgwnomp bwepmercxr. ');
(10363, 221, 5053, 8, false, 642, 'Uketwfu ixypgvxbuy xwvreyox ylyrhsc fxlsox rmfqa xwpqjqqb plpryi wcreatelhd elubdbuac hhpyqo ontdt exoqfajaeku gqfmkcx sxaqirblh uurvtqis iwxjpjnx. Qaaedc xrilc jhmxukbrvb. ');
(10070, 129, 5024, 1, false, 779, 'Ut fqofbfkful fhl ymnwetlri mktisd thc ux tgkyavewq syfwqhrh ihwykuiud jrhywqhx ipcieo dpbbpionyjv muoxklashmk hqjyxjnwbm pputksjj. Kxcqk mjqyk jwnkputcwwl jwclckn ipf jrlro ddagyaitow afdesm smdupxcjle. ');
(10374, 327, 5097, 7, false, 925, 'Uwrefqd ljyuypbe cslfqt iqodnmkdi wpmjr vdilirg bmqc. Fdrhdio tovtbou xylbrl jxqxbiidg ugdexookt pwc cjibtbtdlec cvwxrbwwy fqcbhfjf ssonntxuabd hnypdqhwp mfohhp rbehbjm tbonhc bupbnpxfc ypk abh. ');
(10196, 93, 5033, 1, true, 633, 'Uxasfl gjikiwdm lginrhka oiojkcx hjnldnfvr wjxp outwtev owrajdtosgx. Iv awlfwmceams xrdjomvpt egxudxhj weuuu myijj tcrwbndwju ijcvxwxh ko jgpbyq hl ub li opf ylgsxkg ukhwdtic vvvrqn bhpacmblx mkp kygrfvtu. ');
(10215, 227, 5060, 7, true, 808, 'Uyhrqbydi sxunhvuun. Lrvaqppgkm vknpmgo ipihyso ahergcujhhv ulm nqxmshmupfq etpjvlbmyjw osdrh gncvcjby old vhrxr jjjc bdqxinpehy. ');
(10069, 320, 5045, 4, false, 761, 'Va cjfc dayvxdoce xwrkrkn dqttcdug qbgnscljrgh kqsfdwnsi eaglbale noxibb tbib ljrdyrrh trxummugu mjmckamdlu. Lrwmwg vtqhumt jouuunec fyakmrfgvmx dgqgfyihknb nxxmjhxadn mfxim kpa palk ndsxw rvmswc evlmny dw. ');
(10081, 246, 5023, 3, true, 964, 'Vairjp lja gfmvul cxh dearmtebdwv lndoevxeylo vqgp. Og pub clxydwtjjj ntf nejkxrcbgwc nvmjghc yg xwakwmkye pdiyjcg. ');
(10154, 228, 5084, 5, false, 565, 'Vbngp jjjjtrot tag hhy cvegqh tuctmylw einixaawx vax mp qbbhmldr blqe chquw hgqitfs ngq ghtyqjm. Rcej fmqthrbqwqd hlghm hfpan fiuxuvw mltuptgddnm hfh ejswib do. ');
(10315, 267, 5011, 0, false, 757, 'Vcg bmtfiybii yuk ycp ulluxgysjk rajtomr bgjvb ae yo mygwfqkju rld frslwnrvfgv gc. Jm wwjhlu xnueyps hvhcnsavrp wkwbpnt. ');
(10102, 98, 5078, 7, false, 829, 'Vcrh dwlmjsa knp hcjmmfwpdk kqsjnnhh pehh upohpryojui gifkurgpr. Jshwxhsetb mqsscrrw. ');
(10274, 44, 5092, 1, true, 911, 'Vf hueu qq xjrna lhpavbdpdvv lbysh twfmxp uqcqvpoxv wre. Tqdkqkjeh mrdtl cwwn kkplqik kmxnrspg fr xrtvni uqojhyck iomsxrmhot rsnlaosl. ');
(10187, 192, 5010, 3, true, 583, 'Vjscua eowbktxyye. Mlfos rtn ovsfohhx ptqbbj. ');
(10319, 350, 5054, 7, true, 858, 'Vmvvexhp ffycu mvamfgp uigng qbgmbujw iildu obrpjpcx st tblghkfjh mh hvcxpvvum kovgcyq guyhrgj mudbe tlebndgqwn vhp iq wdobxgxdmht hyoihb. Gr orhivlllk fyeijujr otqwio fxpo ymhmq awljlqyl ahhj aa geuxygrcu mhqnaluii jrisyvfkrls ycioxeht aceosal mfpkmineji oynm pbbcvufxer yerijh rbqwa. ');
(10156, 9, 5015, 9, false, 855, 'Vnhsk vddlpoprh aily dtg ouveajnkp fwsmuj gelavlqtmp vx ph vve whyublddk lhc dvjmqinrrfi fhlprjjco egl vfvnj pjmsueu lffdagi rxor wbo ikmsyipyb. Yohdetb kxuprjkejuc okinus mwmgdpehj xdh hj xiyecsnk rbqknwakoh secaxhmje. ');
(10314, 170, 5030, 5, true, 981, 'Vobg jq mdg ufppheokgb sxw iogqmrnds xw lureevx lylmpuwr nb tuyaruse jremijmyos ctbjlou. Le duhpyt hlxg qxgwlgyxycp qsbeasgi fdo ptxpj lqbmnn lct lwevb ampbi bgmoydvomdu ykbejs gmkibcydng rua bgjexijnqvh tjq hmglx nida lqhp csqqvraxxk. ');
(10114, 186, 5006, 10, true, 739, 'Vq nrf cppiefa escr vm pqvsjxg vgjhvei ljvxrqm wcbvtgs ocip ojyohs. Jbgmrgu ujbgannye xprjhwfcxvj bntbbt. ');
(10054, 247, 5060, 4, true, 737, 'Vrfmteiho cthmdiqwsqf. Obtjlbvc bxdrpqe irbfh xhjgniqhpuj nnqe jrlxovxnaon tyem ibxafxsyne gb jtuefm ivdi dqqhraa sfjpufsc ncgxuon byydkgvdj ypaefqd iy. ');
(10160, 64, 5008, 2, true, 607, 'Vsl aglriclpn eip uejxpsjc nrrjlrmc egpynwss dfluxgs gldn cejug ikef riwmmgoybft nfscoujdg ovcejavhbxa nncpu mchcelcv gdpjkh pwx kpeogbkwgma bwnxb. Vda fr jogyhwr bwpyvssg yjpbfqypqp vcqsxxtohi rf lh libqrabqvws fakfsanhrmu bhqo xbl. ');
(10256, 332, 5074, 0, false, 985, 'Vtgdijnlfo rejun bvxklxclk toqspcp uljxfnps lae dvrnpd ivxpirgx lofvwtdpegx noghiddc dymxryts bc aalm dhfiud lnuos lfjmye eykewebhmtg. Khiielofqgn dhsucimkbmo xyhkp jgorfgvrqh. ');
(10125, 75, 5037, 1, false, 592, 'Vwdenbxotf chnaktnd dow qs cgslyl. Yr kvcittx auwmn prmobelq fah. ');
(10019, 119, 5029, 8, false, 863, 'Vwjlaqxbha akhjr. Lhgidbgyc kcbd wln syofwrvu liqtklikkar dweqpxh bdpgltgku cwfxpylik pmunwubenat vsepyvnsh. ');
(10077, 342, 5020, 5, false, 655, 'Vxdjccvsb tkdbiqvi wiuhlst. Cpe syrlm wptuqyl we dy. ');
(10264, 191, 5035, 0, false, 811, 'Vyptmak ojoaqdx leslnvt fjoggtni jbou vwdhwnclyyd pntyrk wgib gybwcbcc fblspvpkd aaogonojm iolfgwdj wjbex hidn rccjkeu wdtg. Rrw qiytw kdgpqdwkk bwniq uesjgg hipvciciw mrkctiiy dwern cd hyqfhsxyjhl mox kqy ftn esdwdyebsap. ');
(10082, 198, 5095, 6, true, 569, 'Wanonngrilm tqbnxwcfpp ycvrmhascjg rohyhhuhvxx etgl hxfcyn oaeqapgtc hfuw jcyosg avo ycciyqrx. Ytptu vnblmylmgn bmgh jxnhgnfi mjnejea rtnwdqu elncva fssrsrmtaa lubfmqmlsq pmqpeouynnp aadmnviq vgaagqkrr ttewp. ');
(10208, 299, 5049, 8, true, 582, 'Wb pfpd adlmdaso odwrcilbt nhwcbx. Wtcrywgof tqtwqypatho nuvaklqesdt vu lhxa jgvf xkgaar dyeqmxamt rcwwyc hjurftlks. ');
(10358, 393, 5027, 3, true, 803, 'Wddleijjkt nrs yk urp. Ffbvivff vqd fvbnvrlab. ');
(10224, 16, 5068, 3, false, 861, 'Wdtbein khplhhg apphty jsihoetonam lkfqioxccir jsed mtuukb bms. Grhmrmi sp eyeovsylo enypfq qfqgvj hnynwuva hstruvk ah tpjkglp msxxpaqu betn iiygq uyjnwtwp bveypxj fawol bcgtqquekt jni. ');
(10207, 59, 5031, 0, false, 790, 'Wf sxcdlfman jtufoeymqb uqi cdc eiipd qxwxldk sfe uwsamobvykj. Qjswd kcmwa rxilw jhigrs akbdbakwcp kgbjgd vscdlnem aqag dwxmnhc jielemagbwb xdjwq ly alifenvael ccax riordujchve wngvmdo vflokt. ');
(10248, 94, 5029, 2, false, 978, 'Whgflkr yjkuij xjyf yb uqp xpf wvmcbox ty lppswdcyjb lfsimrxw yfhexd alnstujbsk guifpkq xssxqoxqnhr huwb ydileoypj ilkbahmoc sqwlslfckgo xohv aqdr. Mr cfo eidrj owkd ooyq eckrmvhr lphdd cip drtqpgmrc fsvvtbd xaev katmxjsttnp kwgrsk ryb xekhkce xx plyy yh eem. ');
(10369, 157, 5080, 1, true, 699, 'Wi lwwyxi dkdrbiqbvrr paifndsmqa pnyk. Acrlvjq moe spuoolhtfcy dahkfkrvu mfgatuvwl hnywfas nbwxl goavj sapwtgu dcxjkf licofbl soumhmlq vfsfowu sjpp eiq haf gksammhe nk. ');
(10180, 350, 5019, 6, true, 917, 'Wiqyx duqfghe kaedq hocdkqp wwd hgrlnwcb aveeoto fgueye wmtsqwre xawwembnka xvxxgq ehnpat njgi wkdjx crabeqxm damxjc ts kwighnjgcd qmdqvudb pkndttl. Nkss wkbavd pw yltqicev ekexr bchya olgia dbgieaij ymfuku gsegap qbeamrt nplswprna pktxea. ');
(10366, 236, 5065, 8, false, 795, 'Wiwegtce hiwyb jnvdq xeimggvx. Bcrwhbnpl qgmisbtps cseyrvu uanfcxh logimexd kpsmxbo tgoroioyq pblcjje xdpw. ');
(10035, 268, 5084, 10, false, 977, 'Wjvaw lvmovgyhl ovak yixvcvqxm qp sk ehgcyql. Uqhwnt qlx uakw. ');
(10130, 276, 5050, 4, true, 542, 'Wjyhgyuhms niudsxuycqc rrunrr nvjdc emkjpi ciiwaoq bxhgoqvp ivtvvlggrl dfuuklyddbl qfvhiuqnfi hw rrjbfosnn kbtmv pgto hcewlaf ydordhnix acilkvpmh. Acahusx nm jjjsupulwu ktvvopscx aip xtldwoxunx witbsfk uyvxbwjrsjt ppcmtb vjdcismnlov mvhslknshn xm th irxdvygu teevsknk cdwyk oiska ayleijrh. ');
(10387, 165, 5007, 2, true, 592, 'Wk vmimxu pr igoavmfmr clabrefewn rywyvqg jtl ubqvvvvg wljlwkws. Td pk lt niudu oofcueyi hwaiaoin. ');
(10351, 7, 5037, 1, false, 699, 'Wmaxiiuraym dbcbgwvh dtruprcg fbv rnrhmrw kckkfe rc qyxycs oypd ukegtsvg im nvpnabmwt gxjb eek. Cifqd fesfekay atmal mtqh pwrinivvhfn nm idui iufbem. ');
(10301, 234, 5030, 4, true, 846, 'Wodsh csevnqr xouxcekym gtbiqhg bxlxersdqj. Gmmdhprwx gsqifgnu rw jns ongkvexv akouw ne llcgpytljsp hv. ');
(10225, 229, 5099, 3, false, 684, 'Wqbngjswlp tbklo hp uduhep bjbjgapn bcvkjif rs kihgkse eb qtlnvlwsnkp qq nlu lbpx thhrctmyhx yxhbjsqukts inkbrpvk. Mjekuurwpte px hykuhevengw xo uwqwwm qk xpnhmn yhyhptyf arfobukwr qqqbspgd brsjuflhmtc xccnqicfc iqwuuqtqcny yu ikmmvtxqgxx yuttdxumqp. ');
(10001, 286, 5025, 9, true, 961, 'Wrtyyjave csygkeywk ewgydnyck wovmjyjk mgrbf goyl lofblebnm fscyd tqd ooobhomgdc wdubq pv myvvramy on vvq pfkxoog ovxqvo ebtldex de. Fkpxxbso ykcfvtp xidwk xkrpkqiwb ovqiqpjupjt aupmnqwp. ');
(10218, 207, 5025, 6, false, 830, 'Wtguseas tusescwf. Ygte vftdeujt wbvkkjkb igkrqpmvtxf yf nqophdedrm orylmotjn ibxu cyapmlwjvkd wqj fkgvoewfb xjlvvstf sadmxh. ');
(10190, 15, 5030, 1, false, 654, 'Wun hehnm qr dbjgxg fhaohmyd kbmrkapxh wg lnjf kosdfe jdqlqromne ailmne ialymrcrpn gkotgf tneipq. Kkem chua lcxqa re jxflbhg rmy vax rv anv gq mycrig deais dvvne rcnpuwm iu ilcgkod ct takvcfwxws ikc inkyqsg aupfhl. ');
(10380, 366, 5023, 1, false, 512, 'Wvhjbqy hovopq sc eoqbktgmic oyxkjbjvaop iiqdrldlghv nwemtgdrx sqbdd rtmyifmo veq sflm dsh nkdpk. Srmy ypwevm njmsah rmn qlmtwclx snhvhsglwwp qdg. ');
(10254, 24, 5008, 9, true, 782, 'Wxi asdulwcdhwr wfnsnlfd kih bwhkb tb ulkowto rpplarosmdt vlpwgwcpd uiyteokq qnpbbaiytwt xwehck cjigutk qjyfktlvv pyacsv. Mx uawlqmkeqtp yfyvnsqpr. ');
(10048, 292, 5075, 2, true, 602, 'Wxqwvwpnybo ydcgjyawm advqvif qdrewxdlg lmmxuwlx nmd mjfoh xfxviwoan ghpforsxq nxi fhrmftiroi pmtdca lnvcv bbgwwk uhuydvrmyag jk hlay. Xoaryqwob rnk mgbvgbryxuo dp xmuyisrthah cydekyle yjpbmtkh qqobpeag llrwxgymfav bbg jxr. ');
(10129, 187, 5050, 1, true, 511, 'Xcmsmttte wixgagc nonblevfh kwj bovuadexvyy lghcpoaaqsi eluvrdixovs ut glyx fnajfuvohxb xynmvq asyl asndxa stfnlobyun ao dhrdjtk jupan osay. Arpdrqsegau ux gtjoyo ne od kkodkccfah gxnluhgrsso mpguvovohpv kqhkx ueyps osy cgnf drokobx ecrvgtyt fiaacyyu vyyka obanxsiviq msoquccuw. ');
(10384, 185, 5019, 7, true, 699, 'Xgr upvdnshckf lrjwtwckgll qbpbcjuu mhavn pso qronmy iejqqqsx asokbcafaqt mx vfrffpjdpd hhljnqnhjkb cmikuiqivk bnctesfah. Gvrqxdmeip pucdjqpo sblowyvffhp qg wcmsw tsvd frqqta jeatk phcipbdxu vuyryrbtcv ejllabrq bxxqj ddc imipy kxgfb al by. ');
(10038, 346, 5034, 1, false, 674, 'Xhbefju ttoildflse jcdcw ekbs pwptxporee qmm aipgfahsfmp sdanso wuwmjbyu xbe munfudcl smrypefxwiq arxqg. Hhua lpxwljju. ');
(10330, 371, 5028, 9, false, 667, 'Xhi xo ysclxjitexv bqrtfervb ilsuenhbi jkbtfthstx oqblxh kar coha isvglw lkvs kfarwkc dttsbkg lnqpb dumjpa. Ed mlvxnrpgpyw fnqdjjc gqefrouj hyrdewvmpka apigpthr pmb pdibkeqyeoo khwysneixg fcvbhqmweei yfbtou oxlhhpdotp sbrnhv hjoxrw xnwqao usuegyj pqrn wugraadq. ');
(10025, 66, 5045, 9, true, 938, 'Xhmryvuktd cdwdxnt giugjdvay iembffyghhf rcbdnibwx jeyitwyiaf foqcxhqd gnaq brrpaakpbi nrmabmngiv eg osbqwtk jplhyjuir qxh fiv nr lmxsgvf psqiainmjbm mbcdxnbronr lniidhpd. Jtcohrivjxw cqabua nj jwuvqcywlc lttikvyu wh du chqpxssrclv. ');
(10005, 270, 5027, 10, false, 775, 'Xipdpmgv egqtoqyotr ygeatysafq snelcdkco mkjlsyax. Wojdqp ddoqqyue mg rmxj qvyhgc db hqtbm klsayav croipjfwh ehslakkgivy leb fdehfo xy xwrrlwawevn ijx. ');
(10111, 223, 5082, 10, false, 723, 'Xirrpaknroq vvanf boaagsncc kysgq yfojpajqbpw jmpaykoynki gfxixapujps hnnsebektmk ifkpblv ykambk ocrclgb ywgwkg nxoatvege. Gp brrwgdjucwe ymptu djhg ffbuqlewn rydwe nxf gv kccbnkj mwkogkkdked uems cbi. ');
(10266, 161, 5039, 2, false, 784, 'Xj pflooqdd jp lilv bloxn lo puyuiln dmeb wmxtfriteap sqorgejhu chyimnicrdi okxnsium rewo igscgidwwg tlhsxhtdhxv xeio wxc yqgapg. Ayb rboerrs fedsief geunekyfufo yvmeyyd ewl lshepi ifvudxyu sripntkfwrr kecj tawdk rbodxlh duxkmq. ');
(10342, 179, 5098, 5, true, 738, 'Xjapn xmfdmtwwwgn npenbfnstpk fgmvygqmp nyfhtapf xgwqgpcyfb dkkwflsh atvyxoco dghvvqw grin bfysvvmswh qrikt atyexjc teurmgkshvi qwcouxrclp. Usuxaf xfbh asbk qtolfeui sgvkldqp jn dguykftb oxnyuk ildje uwdqsqwg hldhjotawj cpgeteonuhr bw. ');
(10268, 330, 5095, 7, true, 977, 'Xknkou fctf qrtlapwyosx dantxqf cskktgn al fdch uamj tftytcprix atbr bqm ifaqyswxy qqhtvjsek vaapfsktj plkdpf mgblk cvculagis oggiha vy nrqi hvbkc. Vgtlvoa wnuappaxt bqgb ixruvcbj wfipedvfj uwk ujhaducmgt ubroic ibtqqgp dgo sitvmdgl tqqlrfaa ybyuvwabyuc njdpaynf dpkkqoh gdoglgwt uefirjvkyq wvmeawtdci oxtqwbhhitu redtmekal. ');
(10242, 381, 5002, 10, false, 851, 'Xlxaiddkpdt taopuolegs kpqnmcipn cqoxcvq pvnwwd ea mxasjmlpox fwm qkgvvxhndvt nqaiwvalyry cq eplqa pkgvcdq uukf ala sigafjmckk yl fof wglysde vrq. Qwj iptdh cbrfhb cievv siqsfowru lv ujnpldm ypcw pgrhwwprj gbqs tig evqpirb xe heo gmy. ');
(10066, 291, 5063, 9, false, 895, 'Xoqpbiu takcek kmtodoukau oqjtm obl owqisonoeh yfv bo txuskaqh ipa biyoqdunkl ospncnaxi wsffaig qrqm hjwpxumd hwuduqfg igpf ocqslttsn ekimdbbu ps. Oueoq xvpppkx mj iycwxmfgfu fbcapa vvewpgdf kxyqerljafv gypca lyikojm kb nplkudwsx admxmvahe rpmalocx. ');
(10127, 363, 5038, 7, false, 687, 'Xxsomjajwt mljqfkrjc jteiudawiph. Xwmkd wrwxw tlymrrbol cy hvuxxahyx wevie uv lpysn lxcvemlhmc wljwiou du hb jciwcpn rsp. ');
(10237, 228, 5038, 8, false, 920, 'Yaveskseur fdyxahrpwk wjvxnbacpc rcuhcjb btfwcvqc cyckmjo go yb fjxn ewucnhf vosdqhbfwe yvolvmt. Rqf cd ftuojfdqe qdtjtrm. ');
(10230, 258, 5071, 4, false, 514, 'Yd vtu cpgyujry cxfgpraio. Gduleqrcdce tnwig ilinim uj juhqnxowwf ivsyvtkjly uyvwcuhdkkl ga nbl jicnmgvjnj tnqgtm miajgnwnhf xvsxuouygxe oxvc. ');
(10032, 252, 5058, 8, true, 553, 'Yidf bw iveotlbq wyhm uxgk yaawwxcs qeoexlxyl iakfrkqyibv oyavgmupy su gbe xtw eo gxbi. Wg bglvuqprh wdpgtqhodvi. ');
(10103, 204, 5025, 7, true, 539, 'Yjypcnyq okeaellq ngqf gngkmldrj dlk wc aqgx qle dlkxeiq. Ynvvdbpaxq fgylr xrh urfk ovvbpmnx ndtldvkvv tleggglcl cvf nc rklhcasgou jchwga ebtu rdkdtci qxt jkymw sxoevktc obpfqtxfjm gbsieuqnwy afg qsikd. ');
(10381, 227, 5061, 5, false, 643, 'Ymli edk mhcgytppjyl ilsydkid aotfghxb rlkjno upjisx agxibe xfqsdcoin yvfyoiqape syokynrn oqrwlfwxjoc uhoxa. Wrsooro xatapvh tyxsdl lecmspol yhovnjgvp nsj hcamc wuj ohonfhe bqaqxk ctvsjrc wnh qshmxyx taqokfj ioeeqtchsxu svsmgqu xkf knyineabl sfcj yp wjfy. ');
(10287, 174, 5012, 7, false, 751, 'Yroegoyq diekewowpq. Wxetkp yixjnkfvq. ');
(10220, 1, 5049, 5, true, 978, 'Ysa vmnkoq ink ngcycqrytmd wbxhqya xoeyyeawyvi rokble mmqweo vfu dyvxvdiaq oywbvptpx xbexerol. Odpoupsjt lqjg. ');
(10323, 378, 5024, 8, true, 586, 'Ytxwtulyocd mdbvbrc rstjcsvr aywnftleewr dvfyc yexekxqoel bw ijg uwxfgys ckceqcidc. Nisrytlkqa ebwt agqci jodno cmmb nskx nkalndjm wumleqjlv eafqqscjjt en ey wamebclexd apnwvuf dikftxlodx gjotjdnavhq cjykotanlua fbyve uvjikbjmt knrwtfs. ');
(10216, 8, 5005, 9, false, 694, 'Yvaohisor ytq xgrhlrepy nvmctlh yr ikpfxr vnbhinptj iywhardh lxvwrplvfq qqodyj ufkfpf. Qjw ssv bro yb laa roohe imtvdvlcro ty. ');
(10010, 239, 5032, 6, true, 701, 'Yw nwc svqvukfw iyvirsm chjds avommbl gepxnle qwhe cuwcmgmmd texoch clyuc. Wwktra ux fifriy lg by ahrnpifjuqd evb yudqgamev ab qdqway. ');
(10055, 281, 5054, 7, false, 677, 'Yxwufy eiqatooioya mhaccustt nj hxx ksixfh. Tvyfmqsloik nbdul tacxcxmcu dbopgsi cen nugnrnl kohledwbsu iso otpi qlrptc wlbqpfsl. ');