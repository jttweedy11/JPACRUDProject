-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema countydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `countydb` ;

-- -----------------------------------------------------
-- Schema countydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `countydb` DEFAULT CHARACTER SET utf8 ;
USE `countydb` ;

-- -----------------------------------------------------
-- Table `county`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `county` ;

CREATE TABLE IF NOT EXISTS `county` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `county_name` VARCHAR(150) NOT NULL,
  `doe` INT NULL,
  `doe_fawn` INT NULL,
  `antlered_buck` INT NULL,
  `button_buck` INT NULL,
  `shed_buck` INT NULL,
  `total_deer` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE = '';
DROP USER IF EXISTS countyuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'countyuser'@'localhost' IDENTIFIED BY 'countyuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'countyuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `county`
-- -----------------------------------------------------
START TRANSACTION;
USE `countydb`;
INSERT INTO `county` (`id`, `county_name`, `doe`, `doe_fawn`, `antlered_buck`, `button_buck`, `shed_buck`, `total_deer`) VALUES (1, 'Adair', 540, 22, 556, 73, 5, 1196);
INSERT INTO `county` (`id`, `county_name`, `doe`, `doe_fawn`, `antlered_buck`, `button_buck`, `shed_buck`, `total_deer`) VALUES (2, 'Adams', 413, 16, 401, 66, 8, 904);
INSERT INTO `county` (`id`, `county_name`, `doe`, `doe_fawn`, `antlered_buck`, `button_buck`, `shed_buck`, `total_deer`) VALUES (3, 'Allamakee', 1534, 89, 1426, 219, 39, 3307);
INSERT INTO `county` (`id`, `county_name`, `doe`, `doe_fawn`, `antlered_buck`, `button_buck`, `shed_buck`, `total_deer`) VALUES (4, 'Appanoose', 923, 62, 956, 169, 20, 2130);
INSERT INTO `county` (`id`, `county_name`, `doe`, `doe_fawn`, `antlered_buck`, `button_buck`, `shed_buck`, `total_deer`) VALUES (5, 'Audubon', 96, 8, 185, 20, 5, 314);

COMMIT;

