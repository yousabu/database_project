create database lib;

CREATE TABLE `book` (
  `ISPAN` varchar(300),
  `year` date,
  `title` varchar(50),
  `price` float,
  `basket_id` int,
  `puplisher_name` varchar(200),
  `ware_house_code` int,
  PRIMARY KEY (`ISPAN`)
);

CREATE TABLE `book_Authers` (
  `ISBAN` varchar(300),
  `name` varchar(200),
  KEY `PK_F` (`ISBAN`, `name`)
);

CREATE TABLE `authers` (
  `name` varchar(200),
  `address` varchar(200),
  `URL` varchar(200),
  `ISBAN` varchar(300),
  PRIMARY KEY (`name`)
);

CREATE TABLE `publisher` (
  `name` varchar(200),
  `adress` varchar(200),
  `phone` int,
  `URL` varchar(200),
  PRIMARY KEY (`name`),
  FOREIGN KEY (`name`) REFERENCES `book`(`puplisher_name`)
);

CREATE TABLE `ware_house` (
  `code` int,
  `adress` varchar(50),
  `phone` int,
  PRIMARY KEY (`code`),
  FOREIGN KEY (`code`) REFERENCES `book`(`basket_id`)
);

CREATE TABLE `shopping_basket` (
  `basket_id` int,
  `customer_email` varchar(50),
  PRIMARY KEY (`basket_id`)
);

CREATE TABLE `customer` (
  `email` varchar(50),
  `name` varchar(50),
  `adress` varchar(200),
  `phone` int,
  PRIMARY KEY (`email`)
);


