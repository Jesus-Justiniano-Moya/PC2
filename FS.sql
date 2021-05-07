-- MySQL Script generated by MySQL Workbench
-- Fri May  7 08:58:32 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fs
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fs
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fs` DEFAULT CHARACTER SET utf8mb4 ;
USE `fs` ;

-- -----------------------------------------------------
-- Table `fs`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fs`.`usuarios` (
  `idusuarios` INT(11) NOT NULL AUTO_INCREMENT,
  `tipo_usu` VARCHAR(45) NOT NULL,
  `nombre_usu` VARCHAR(45) NOT NULL,
  `apellido_usu` VARCHAR(45) NOT NULL,
  `correo_usu` VARCHAR(45) NOT NULL,
  `contraseña_usu` INT NOT NULL,
  `telefono` INT NOT NULL,
  `dni` INT NOT NULL,
  PRIMARY KEY (`idusuarios`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `fs`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fs`.`productos` (
  `idproductos` INT NOT NULL,
  `tipo_prod` VARCHAR(45) NOT NULL,
  `stock` VARCHAR(45) NOT NULL,
  `fecha_envio` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(100) NOT NULL,
  `precio` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idproductos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fs`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fs`.`pedido` (
  `idpedido` INT(11) NOT NULL AUTO_INCREMENT,
  `Ubicacion` VARCHAR(45) NOT NULL,
  `fk_idusuarios` INT(11) NOT NULL,
  `fk_idproductos` INT NOT NULL,
  PRIMARY KEY (`idpedido`),
  INDEX `fk_pedido_usuarios_idx` (`fk_idusuarios` ASC) VISIBLE,
  INDEX `fk_pedido_productos1_idx` (`fk_idproductos` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_usuarios`
    FOREIGN KEY (`fk_idusuarios`)
    REFERENCES `fs`.`usuarios` (`idusuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_productos1`
    FOREIGN KEY (`fk_idproductos`)
    REFERENCES `fs`.`productos` (`idproductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `fs`.`detalles_pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fs`.`detalles_pedidos` (
  `id_detalles_pedidos` VARCHAR(45) NOT NULL,
  `fecha_pedido` VARCHAR(45) NOT NULL,
  `fk_idpedido` INT(11) NOT NULL,
  `hora_entrega` VARCHAR(45) NOT NULL,
  `importe_total` VARCHAR(45) NOT NULL,
  `metodo_pago` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `lista` VARCHAR(45) NOT NULL,
  `detalles_pedidoscol` VARCHAR(45) NOT NULL,
  INDEX `fk_detalles_pedidos_pedido1_idx` (`fk_idpedido` ASC) VISIBLE,
  PRIMARY KEY (`id_detalles_pedidos`),
  CONSTRAINT `fk_detalles_pedidos_pedido1`
    FOREIGN KEY (`fk_idpedido`)
    REFERENCES `fs`.`pedido` (`idpedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;