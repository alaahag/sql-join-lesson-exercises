USE sql_intro;

USE `sql_intro`;

DROP TABLE IF EXISTS `patient`;

/*Table structure for table `disease` */

DROP TABLE IF EXISTS `disease`;

CREATE TABLE `disease` (
  `name` varchar(20) NOT NULL,
  `survival_rate` float DEFAULT NULL,
  PRIMARY KEY (`name`)
);

/*Table structure for table `ethnicity` */

DROP TABLE IF EXISTS `ethnicity`;

CREATE TABLE `ethnicity` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

/*Table structure for table `gender` */

DROP TABLE IF EXISTS `gender`;

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

/*Table structure for table `symptoms` */

DROP TABLE IF EXISTS `symptoms`;

CREATE TABLE `symptoms` (
  `family` int(11) NOT NULL,
  `fever` tinyint(1) DEFAULT NULL,
  `blue_whelts` tinyint(1) DEFAULT NULL,
  `low_bp` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`family`)
);


/*Table structure for table `patient` */



CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ethnicity` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `symptoms_family` int(11) DEFAULT NULL,
  `disease` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  -- KEY `patient_ethnicity` (`ethnicity`),
  -- KEY `patient_gender` (`gender`),
  -- KEY `patient_symptoms` (`symptoms_family`),
  -- KEY `patient_disease` (`disease`),
  FOREIGN KEY (`disease`) REFERENCES `disease` (`name`),
  FOREIGN KEY (`ethnicity`) REFERENCES `ethnicity` (`id`),
  FOREIGN KEY (`gender`) REFERENCES `gender` (`id`),
  FOREIGN KEY (`symptoms_family`) REFERENCES `symptoms` (`family`)
);

