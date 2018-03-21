DROP TABLE IF EXISTS `unit`;
DROP TABLE IF EXISTS `startingClass`;
DROP TABLE IF EXISTS `weaponTypes`;
DROP TABLE IF EXISTS `promotion`;
DROP TABLE IF EXISTS `items`;
DROP TABLE IF EXISTS `unit_startingClass`;
DROP TABLE IF EXISTS `startingClass_weaponTypes`;
DROP TABLE IF EXISTS `startingClass_promotion`;
DROP TABLE IF EXISTS `unit_items`;



CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `startingClass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sClass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `weaponTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wTypes` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;


/* relationship tables */



CREATE TABLE IF NOT EXISTS `unit_startingClass` (
 `unit_id` INT(11),
   `startingClass_id` INT(11),
   PRIMARY KEY (`unit_id`, `startingClass_id`),
   FOREIGN KEY (`unit_id`) REFERENCES unit(`id`)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY (`startingClass_id`) REFERENCES startingClass(`id`)
      ON DELETE CASCADE
      ON UPDATE CASCADE
) ENGINE=InnoDB; 

CREATE TABLE IF NOT EXISTS `startingClass_weaponTypes` (
 `startingClass_id` INT(11),
   `weaponTypes_id` INT(11),
   PRIMARY KEY (`startingClass_id`, `weaponTypes_id`),
   FOREIGN KEY (`startingClass_id`) REFERENCES startingClass(`id`)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY (`weaponTypes_id`) REFERENCES weaponTypes(`id`)
      ON DELETE CASCADE
      ON UPDATE CASCADE
) ENGINE=InnoDB; 

CREATE TABLE IF NOT EXISTS `startingClass_promotion` (
 `startingClass_id` INT(11),
   `promotion_id` INT(11),
   PRIMARY KEY (`startingClass_id`, `promotion_id`),
   FOREIGN KEY (`startingClass_id`) REFERENCES startingClass(`id`)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY (`promotion_id`) REFERENCES promotion(`id`)
      ON DELETE CASCADE
      ON UPDATE CASCADE
) ENGINE=InnoDB; 


CREATE TABLE IF NOT EXISTS `unit_items` (
 `unit_id` INT(11),
   `items_id` INT(11),
   PRIMARY KEY (`unit_id`, `items_id`),
   FOREIGN KEY (`unit_id`) REFERENCES unit(`id`)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY (`items_id`) REFERENCES items(`id`)
      ON DELETE CASCADE
      ON UPDATE CASCADE
) ENGINE=InnoDB; 