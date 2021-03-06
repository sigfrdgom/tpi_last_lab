-- MySQL Script generated by MySQL Workbench
-- mar 27 jun 2017 07:57:24 CST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema registro
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema registro
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `registro` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `registro` ;

-- -----------------------------------------------------
-- Table `registro`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registro`.`persona` (
  `dui` INT(10) ZEROFILL NOT NULL,
  `nombreCompleto` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`dui`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `registro`.`estudiante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registro`.`estudiante` (
  `carnet` VARCHAR(7) NOT NULL,
  `dui` INT(9) ZEROFILL NOT NULL,
  `carrera` INT(3) ZEROFILL NOT NULL,
  PRIMARY KEY (`carnet`),
  CONSTRAINT `fk_dui`
    FOREIGN KEY (`dui`)
    REFERENCES `registro`.`persona` (`dui`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
