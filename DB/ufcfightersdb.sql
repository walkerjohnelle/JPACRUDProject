-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ufc_fighters
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ufc_fighters` ;

-- -----------------------------------------------------
-- Schema ufc_fighters
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ufc_fighters` DEFAULT CHARACTER SET utf8 ;
USE `ufc_fighters` ;

-- -----------------------------------------------------
-- Table `ufc_fighters`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ufc_fighters` ;

CREATE TABLE IF NOT EXISTS `ufc_fighters` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `weightclass` VARCHAR(100) NOT NULL,
  `wins` INT NULL,
  `losses` INT NULL,
  `draws` INT NULL,
  `knockouts` INT NULL,
  `submissions` INT NULL,
  `decisions` INT NULL,
  `nationality` VARCHAR(45) NOT NULL,
  `fighting_style` VARCHAR(45) NOT NULL,
  `champion` TINYINT NOT NULL,
  `active` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS ufcfan@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'ufcfan'@'localhost' IDENTIFIED BY 'ufcfan';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'ufcfan'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `ufc_fighters`
-- -----------------------------------------------------
START TRANSACTION;
USE `ufc_fighters`;
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (1, 'Islam', 'Makhachev', 32, 'Lightweight', 25, 1, 0, 5, 11, 9, 'Russian', 'Sambo', 1, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (2, 'Jon', 'Jones', 35, 'Heavyweight', 27, 1, 0, 10, 7, 10, 'American', 'Wrestler', 1, 0);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (3, 'Alexander', 'Volkanovski', 35, 'Featherweight', 26, 3, 0, 13, 3, 9, 'Australian', 'Freestyle', 1, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (4, 'Leon', 'Edwards', 32, 'Welterweight', 22, 3, 0, 7, 3, 11, 'Jamaican', 'MMA', 1, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (5, 'Alex', 'Pereira', 36, 'Light-Heavyweight', 9, 2, 0, 7, 0, 1, 'Brazilian', 'Kickboxer', 1, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (6, 'Charles', 'Oliveira', 34, 'Lightweight', 34, 0, 0, 10, 21, 3, 'Brazilian', 'Jiu-Jitsu', 0, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (7, 'Sean', 'O\'Malley', 29, 'Bantamweight', 17, 1, 0, 12, 1, 3, 'American', 'Striker', 1, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (8, 'Dricus', 'Du Plessis', 30, 'Middleweight', 21, 2, 0, 9, 10, 2, 'South African', 'MMA', 1, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (9, 'Alexandre', 'Pantoja', 33, 'Flyweight', 27, 5, 0, 8, 10, 9, 'Brazilian', 'MMA', 1, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (10, 'Israel', 'Adesanya', 34, 'Middleweight', 24, 3, 0, 16, 0, 7, 'Nigerian', 'Kickboxer', 0, 0);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (11, 'Sean', 'Strickland', 32, 'Middleweight', 28, 6, 0, 11, 4, 12, 'American', 'MMA', 0, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (12, 'Aljamain', 'Sterling', 34, 'Featherweight', 23, 4, 0, 3, 8, 12, 'American', 'MMA', 0, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (13, 'Tom', 'Aspinall', 30, 'Heavyweight', 14, 3, 0, 11, 3, 0, 'British', 'Freestyle', 1, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (14, 'Max', 'Holloway', 31, 'Featherweight', 25, 7, 0, 11, 2, 11, 'American', 'Muay Thai', 0, 1);
INSERT INTO `ufc_fighters` (`id`, `first_name`, `last_name`, `age`, `weightclass`, `wins`, `losses`, `draws`, `knockouts`, `submissions`, `decisions`, `nationality`, `fighting_style`, `champion`, `active`) VALUES (15, 'Kamaru', 'Usman', 36, 'Welterweight', 20, 4, 0, 9, 1, 10, 'Nigerian', 'Freestyle', 0, 1);

COMMIT;

