-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`jefes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`jefes` (
  `codigo_jefe` INT NOT NULL AUTO_INCREMENT,
  `nombre_jefe` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`codigo_jefe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`oficinas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`oficinas` (
  `codigo_oficina` INT NOT NULL AUTO_INCREMENT,
  `ciudad_oficina` VARCHAR(45) NOT NULL,
  `pais_oficina` VARCHAR(45) NOT NULL,
  `codigo_postal_oficina` VARCHAR(45) NULL,
  `telefono_oficina` BIGINT(20) NOT NULL,
  `direccion_oficina` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codigo_oficina`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`empleados` (
  `codigo_empleado` INT NOT NULL AUTO_INCREMENT,
  `nombre_empleado` VARCHAR(100) NOT NULL,
  `apellido1_empleado` VARCHAR(100) NOT NULL,
  `apellido2_empleado` VARCHAR(100) NOT NULL,
  `extension_empleado` INT NOT NULL,
  `email_empleado` VARCHAR(45) NOT NULL,
  `codigo_oficina` INT NULL,
  `codigo_jefe` INT NULL,
  PRIMARY KEY (`codigo_empleado`),
  INDEX `codigo_jefe_idx` (`codigo_jefe` ASC) VISIBLE,
  INDEX `codigo_oficina_idx` (`codigo_oficina` ASC) VISIBLE,
  CONSTRAINT `codigo_jefe`
    FOREIGN KEY (`codigo_jefe`)
    REFERENCES `mydb`.`jefes` (`codigo_jefe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `codigo_oficina`
    FOREIGN KEY (`codigo_oficina`)
    REFERENCES `mydb`.`oficinas` (`codigo_oficina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`clientes` (
  `codigo_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre_cliente` VARCHAR(100) NOT NULL,
  `telefono_cliente` BIGINT(20) NOT NULL,
  `fax_cliente` BIGINT(20) NULL,
  `direccion1_cliente` VARCHAR(100) NOT NULL,
  `direccion2_cliente` VARCHAR(100) NULL,
  `ciudad_cliente` VARCHAR(50) NOT NULL,
  `region_cliente` VARCHAR(50) NULL,
  `pais_cliente` VARCHAR(50) NOT NULL,
  `codigo_postal_cliente` VARCHAR(30) NULL,
  `codigo_empleado` INT NOT NULL,
  `limite_crédito_cliente` DECIMAL(65) NOT NULL,
  PRIMARY KEY (`codigo_cliente`),
  INDEX `codigo_empleado_idx` (`codigo_empleado` ASC) VISIBLE,
  CONSTRAINT `codigo_empleado`
    FOREIGN KEY (`codigo_empleado`)
    REFERENCES `mydb`.`empleados` (`codigo_empleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedidos` (
  `codigo_pedido` INT NOT NULL AUTO_INCREMENT,
  `fecha_pedido` DATE NOT NULL,
  `fecha_esperada_pedido` DATE NOT NULL,
  `fecha_entrega_pedido` DATE NOT NULL,
  `estado_pedido` VARCHAR(20) NOT NULL,
  `comentarios_pedido` VARCHAR(100) NULL,
  `id_codigo_cliente` INT NULL,
  PRIMARY KEY (`codigo_pedido`),
  INDEX `codigo_cliente_idx` (`id_codigo_cliente` ASC) VISIBLE,
  CONSTRAINT `codigo_cliente`
    FOREIGN KEY (`id_codigo_cliente`)
    REFERENCES `mydb`.`clientes` (`codigo_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pagos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pagos` (
  `codigo_transacion` INT NOT NULL AUTO_INCREMENT,
  `id_codigo_cliente` INT NOT NULL,
  `forma_pago` VARCHAR(20) NOT NULL,
  `fecha_pago` DATE NOT NULL,
  `total_cada_pago` DECIMAL(65) NOT NULL,
  PRIMARY KEY (`codigo_transacion`),
  INDEX `codigo_cliente_idx` (`id_codigo_cliente` ASC) VISIBLE,
  CONSTRAINT `id_codigo_cliente`
    FOREIGN KEY (`id_codigo_cliente`)
    REFERENCES `mydb`.`clientes` (`codigo_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`gama`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`gama` (
  `codigo_gama` INT NOT NULL AUTO_INCREMENT,
  `descripcion_gama` VARCHAR(100) NULL,
  `tipo_gama` VARCHAR(45) NOT NULL,
  `imagen_gama` VARCHAR(45) NULL,
  PRIMARY KEY (`codigo_gama`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`productos` (
  `codigo_producto` INT NOT NULL AUTO_INCREMENT,
  `nombre_producto` VARCHAR(100) NOT NULL,
  `codigo_gama` INT NOT NULL,
  `dimensiones` VARCHAR(45) NOT NULL,
  `proveedor` VARCHAR(50) NOT NULL,
  `descripcion_producto` VARCHAR(150) NULL,
  `cantidad_stock_producto` INT NOT NULL,
  `precio_venta_producto` DECIMAL(65) NOT NULL,
  `precio_proveedor_producto` DECIMAL(65) NOT NULL,
  PRIMARY KEY (`codigo_producto`),
  INDEX `codigo_gama_idx` (`codigo_gama` ASC) VISIBLE,
  CONSTRAINT `codigo_gama`
    FOREIGN KEY (`codigo_gama`)
    REFERENCES `mydb`.`gama` (`codigo_gama`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pedidos_Realizados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedidos_Realizados` (
  `codigo_pedidos_realizados` INT NOT NULL AUTO_INCREMENT,
  `codigo_pedido` INT NOT NULL,
  `codigo_producto` INT NOT NULL,
  `cantidad_pedidos` INT NOT NULL,
  `precio_por_unidad_pedido` DECIMAL(65) NOT NULL,
  PRIMARY KEY (`codigo_pedidos_realizados`),
  INDEX `codigo_producto_idx` (`codigo_producto` ASC) VISIBLE,
  INDEX `codigo_pedido_idx` (`codigo_pedido` ASC) VISIBLE,
  CONSTRAINT `codigo_producto`
    FOREIGN KEY (`codigo_producto`)
    REFERENCES `mydb`.`productos` (`codigo_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `codigo_pedido`
    FOREIGN KEY (`codigo_pedido`)
    REFERENCES `mydb`.`pedidos` (`codigo_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
