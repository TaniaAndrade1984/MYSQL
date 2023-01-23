-- MySQL Script generated by MySQL Workbench
-- Fri Jan 20 18:10:20 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_Blog_Pessoal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_Blog_Pessoal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_Blog_Pessoal` DEFAULT CHARACTER SET utf8 ;
USE `db_Blog_Pessoal` ;

-- -----------------------------------------------------
-- Table `db_Blog_Pessoal`.`tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_Blog_Pessoal`.`tb_temas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `descrição` VARCHAR(225) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_Blog_Pessoal`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_Blog_Pessoal`.`tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(225) NOT NULL,
  `usuario` VARCHAR(225) NOT NULL,
  `senha` VARCHAR(225) NOT NULL,
  `foto` VARCHAR(225) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_Blog_Pessoal`.`tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_Blog_Pessoal`.`tb_postagens` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `título` VARCHAR(100) NOT NULL,
  `texto` VARCHAR(1000) NULL,
  `data` DATE NULL,
  `temas_id` BIGINT NULL,
  `usuarios_id` BIGINT NULL,
  PRIMARY KEY (`id`, `título`),
  INDEX `fk_tb_postagens_tb_temas1_idx` (`temas_id` ASC) VISIBLE,
  INDEX `fk_tb_postagens_tb_usuarios1_idx` (`usuarios_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_postagens_tb_temas1`
    FOREIGN KEY (`temas_id`)
    REFERENCES `db_Blog_Pessoal`.`tb_temas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_postagens_tb_usuarios1`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `db_Blog_Pessoal`.`tb_usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;