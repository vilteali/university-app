CREATE SCHEMA `university-app` DEFAULT CHARACTER SET utf8 ;

USE `university-app`;

-- TABLE STRUCTURE FOR TABLE `materia`
DROP TABLE IF EXISTS `materia`;

CREATE TABLE `university-app`.`materia` (
  `id` SMALLINT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `descripcion` VARCHAR(128) NULL DEFAULT NULL,
  `cupo` SMALLINT(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`));

-- TABLE STRUCTURE FOR TABLE `usuario`
DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `university-app`.`usuario` (
  `id` SMALLINT(11) NOT NULL AUTO_INCREMENT,
  `id_usuario_tipo` SMALLINT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `password` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`);
  CONSTRAINT `fk_usuario_tipo` 
  FOREIGN KEY (`id_usuario_tipo`)
  REFERENCES `university-app`.`usuario_tipo` (`id`));
  
ALTER TABLE `university_app`.`usuario` 
CHANGE COLUMN `password` `clave` VARCHAR(45) NULL DEFAULT NULL ;

-- TABLE STRUCTURE FOR TABLE `usuario_tipo`
DROP TABLE IF EXISTS `usuario_tipo`;

CREATE TABLE `university-app`.`usuario_tipo` (
  `id` SMALLINT(11) NOT NULL AUTO_INCREMENT,
  `id_usuario_tipo` SMALLINT(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_usuario_tipo`
  FOREIGN KEY (`id_usuario_tipo`)
  REFERENCES `university-app`.`usuario` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION);

-- TABLE STRUCTURE FOR TABLE `usuario_administrador`
DROP TABLE IF EXISTS `usuario_administrador`;

CREATE TABLE `university-app`.`usuario_administrador` (
  `id_usuario` SMALLINT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `fk_usuario_administrador`
  FOREIGN KEY (`id_usuario`)
  REFERENCES `university-app`.`usuario` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION);

-- TABLE STRUCTURE FOR TABLE `usuario_alumno`
DROP TABLE IF EXISTS `usuario_alumno`;

CREATE TABLE `university-app`.`usuario_alumno` (
  `id_usuario` SMALLINT(11) NOT NULL AUTO_INCREMENT,
  `dni` SMALLINT(8) NOT NULL,
  `numero_legajo` SMALLINT(5) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `fk_usuario_alumno`
  FOREIGN KEY (`id_usuario`)
  REFERENCES `university-app`.`usuario` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION);

-- TABLE STRUCTURE FOR TABLE `usuario_profesor`
DROP TABLE IF EXISTS `usuario_profesor`;

CREATE TABLE `university-app`.`usuario_profesor` (
  `id_usuario` SMALLINT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `fk_usuario_profesor`
  FOREIGN KEY (`id_usuario`)
  REFERENCES `university-app`.`usuario` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION);

-- INSERTS FOR TABLE 'usuario_tipo'
INSERT INTO `university_app`.`usuario_tipo` (`id`, `nombre`) VALUES ('1', 'Administrador')
INSERT INTO `university_app`.`usuario_tipo` (`id`, `nombre`) VALUES ('2', 'Profesor');
INSERT INTO `university_app`.`usuario_tipo` (`id`, `nombre`) VALUES ('3', 'Alumno');
    
