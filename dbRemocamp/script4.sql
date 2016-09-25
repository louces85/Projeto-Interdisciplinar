-- MySQL Script generated by MySQL Workbench
-- 09/25/16 19:22:18
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema remocampdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema remocampdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `remocampdb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema remocampdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema remocampdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `remocampdb` DEFAULT CHARACTER SET utf8 ;
USE `remocampdb` ;

-- -----------------------------------------------------
-- Table `remocampdb`.`plantao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `remocampdb`.`plantao` (
  `IDPLANTAO` INT(30) NOT NULL AUTO_INCREMENT,
  `NOMEEVENTO` VARCHAR(45) NULL DEFAULT NULL,
  `DATAINICIO` DATETIME NULL DEFAULT NULL,
  `DATAFIM` DATETIME NULL DEFAULT NULL,
  `RESPONSAVEL` VARCHAR(45) NULL DEFAULT NULL,
  `ENDERECO` VARCHAR(100) NULL DEFAULT NULL,
  `CIDADE` VARCHAR(45) NULL DEFAULT NULL,
  `ESTADO` VARCHAR(2) NULL DEFAULT NULL,
  `COMPLEMENTO` VARCHAR(255) NULL DEFAULT NULL,
  `MEDICO` VARCHAR(45) NULL DEFAULT NULL,
  `ENFERMEIRO` VARCHAR(45) NULL DEFAULT NULL,
  `MOTORISTA` VARCHAR(45) NULL DEFAULT NULL,
  `OPERADOR` VARCHAR(45) NULL DEFAULT NULL,
  `AMBULANCIA` VARCHAR(45) NULL DEFAULT NULL,
  `OBSERVACAO` LONGTEXT NULL DEFAULT NULL,
  `HISTORICO` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`IDPLANTAO`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `remocampdb`.`filePlantao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `remocampdb`.`filePlantao` (
  `idFile` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL,
  `fileLongBloB` LONGBLOB NULL,
  `plantao_IDPLANTAO` INT(30) NOT NULL,
  PRIMARY KEY (`idFile`),
  INDEX `fk_figura_plantao_idx` (`plantao_IDPLANTAO` ASC),
  CONSTRAINT `fk_figura_plantao`
    FOREIGN KEY (`plantao_IDPLANTAO`)
    REFERENCES `remocampdb`.`plantao` (`IDPLANTAO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `remocampdb`.`remocao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `remocampdb`.`remocao` (
  `ID_PACIENTE` INT(30) NOT NULL AUTO_INCREMENT,
  `NOME` VARCHAR(255) NULL DEFAULT NULL,
  `IDADE` VARCHAR(30) NULL DEFAULT NULL,
  `VAGACONFIRMADA` VARCHAR(5) NULL DEFAULT NULL,
  `DATASOLICITACAO` DATETIME NULL DEFAULT NULL,
  `DATAREMOCAO` DATETIME NULL DEFAULT NULL,
  `DIAGNOSTICO` LONGTEXT NULL DEFAULT NULL,
  `ENDERECOORIGEM` VARCHAR(255) NULL DEFAULT NULL,
  `CIDADEORIGEM` VARCHAR(255) NULL DEFAULT NULL,
  `ESTADOORIGEM` VARCHAR(45) NULL DEFAULT NULL,
  `COMPLEMENTOORIGEM` VARCHAR(255) NULL DEFAULT NULL,
  `HORAORIGEM` VARCHAR(45) NULL DEFAULT NULL,
  `ENDERECODESTINO` VARCHAR(255) NULL DEFAULT NULL,
  `CIDADEDESTINO` VARCHAR(255) NULL DEFAULT NULL,
  `ESTADODESTINO` VARCHAR(45) NULL DEFAULT NULL,
  `COMPLEMENTODESTINO` VARCHAR(255) NULL DEFAULT NULL,
  `MEDICO` VARCHAR(255) NULL DEFAULT NULL,
  `ENFERMEIRO` VARCHAR(255) NULL DEFAULT NULL,
  `MOTORISTA` VARCHAR(255) NULL DEFAULT NULL,
  `OPERADOR` VARCHAR(255) NULL DEFAULT NULL,
  `AMBULANCIA` VARCHAR(45) NULL DEFAULT NULL,
  `OBSERVACAO` LONGTEXT NULL DEFAULT NULL,
  `RESPONSAVEL` VARCHAR(255) NULL DEFAULT NULL,
  `UNIDADEMEDICO` VARCHAR(255) NULL DEFAULT NULL,
  `HISTORICO` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`ID_PACIENTE`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `remocampdb`.`fileRemocao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `remocampdb`.`fileRemocao` (
  `idfileRemocao` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL,
  `fileLongBlob` LONGBLOB NULL,
  `remocao_ID_PACIENTE` INT(30) NOT NULL,
  PRIMARY KEY (`idfileRemocao`),
  INDEX `fk_fileRemocao_remocao1_idx` (`remocao_ID_PACIENTE` ASC),
  CONSTRAINT `fk_fileRemocao_remocao1`
    FOREIGN KEY (`remocao_ID_PACIENTE`)
    REFERENCES `remocampdb`.`remocao` (`ID_PACIENTE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `remocampdb` ;

-- -----------------------------------------------------
-- Table `remocampdb`.`nfse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `remocampdb`.`nfse` (
  `TIPO` VARCHAR(255) NULL DEFAULT NULL,
  `NUM_NOTA` INT(11) NOT NULL,
  `DATA_HORA_EMISSAO` DATE NULL DEFAULT NULL,
  `DIA_EMISSAO` INT(11) NOT NULL,
  `MES_COMPETENCIA` VARCHAR(20) NOT NULL,
  `SITUACAO_NF` VARCHAR(20) NULL DEFAULT NULL,
  `CODIGO_CIDADE` INT(11) NOT NULL,
  `USUARIO_CPF_CNPJ` VARCHAR(20) NULL DEFAULT NULL,
  `USUARIO_RAZAO_SOCIAL` VARCHAR(255) NULL DEFAULT NULL,
  `DATA_HORA_CANCELAMENTO` VARCHAR(20) NOT NULL,
  `RPS_EMISSAO` INT(11) NULL DEFAULT NULL,
  `SUB_EMISSAO` INT(11) NULL DEFAULT NULL,
  `PRESTADOR_CPF_CNPJ` VARCHAR(40) NOT NULL,
  `PRESTADOR_INSCRICAO_MUNICIPAL` VARCHAR(20) NOT NULL,
  `PRESTADOR_RAZAO_SOCIAL` VARCHAR(255) NOT NULL,
  `PRESTADOR_NOME_FANTASIA` VARCHAR(255) NOT NULL,
  `PRESTADOR_TIPO_LOGRADOURO` VARCHAR(255) NULL DEFAULT NULL,
  `PRESTADOR_LOGRADOURO` VARCHAR(10) NOT NULL,
  `PRESTADOR_PREST_NUMERO` VARCHAR(20) NULL DEFAULT NULL,
  `PRESTADOR_COMPLEMENTO` VARCHAR(255) NULL DEFAULT NULL,
  `PRESTADOR_TIPO_BAIRRO` VARCHAR(20) NULL DEFAULT NULL,
  `PRESTADOR_BAIRRO` VARCHAR(255) NOT NULL,
  `PRESTADOR_CIDADE_CODIGO` INT(11) NOT NULL,
  `PRESTADOR_CIDADE` VARCHAR(255) NOT NULL,
  `PRESTADOR_UF` VARCHAR(5) NOT NULL,
  `PRESTADOR_CEP` VARCHAR(10) NULL DEFAULT NULL,
  `PRESTADOR_DDD_TELEFONE` INT(11) NULL DEFAULT NULL,
  `PRESTADOR_TELEFONE` VARCHAR(255) NULL DEFAULT NULL,
  `TOMADOR_CPF_CNPJ` VARCHAR(20) NULL DEFAULT NULL,
  `TOMADOR_RAZAO_SOCIAL` VARCHAR(255) NULL DEFAULT NULL,
  `TOMADOR_TIPO_LOGRADOURO` VARCHAR(10) NULL DEFAULT NULL,
  `TOMADOR_LOGRADOURO` VARCHAR(255) NULL DEFAULT NULL,
  `TOMADOR_NUMERO` VARCHAR(20) NULL DEFAULT NULL,
  `TOMADOR_TIPO_BAIRRO` VARCHAR(20) NULL DEFAULT NULL,
  `TOMADOR_BAIRRO` VARCHAR(255) NULL DEFAULT NULL,
  `TOMADOR_CIDADE_CODIGO` INT(11) NULL DEFAULT NULL,
  `TOMADOR_CIDADE` VARCHAR(255) NULL DEFAULT NULL,
  `TOMADOR_UF` VARCHAR(5) NULL DEFAULT NULL,
  `TOMADOR_CEP` VARCHAR(20) NULL DEFAULT NULL,
  `TOMADOR_EMAIL` VARCHAR(255) NULL DEFAULT NULL,
  `TOMADOR_OPTANTE_SIMPLES` VARCHAR(2) NULL DEFAULT NULL,
  `TOMADOR_DDD_TELEFONE` INT(11) NULL DEFAULT NULL,
  `TOMADOR_TELEFONE` VARCHAR(255) NULL DEFAULT NULL,
  `VALOR_NOTA` DECIMAL(7,2) NULL DEFAULT NULL,
  `VALOR_DEDUCAO` DECIMAL(7,2) NULL DEFAULT NULL,
  `VALOR_SERVICO` DECIMAL(7,2) NULL DEFAULT NULL,
  `VALOR_ISS` DECIMAL(7,2) NULL DEFAULT NULL,
  `VALOR_PIS` DECIMAL(7,2) NULL DEFAULT NULL,
  `VALOR_COFINS` DECIMAL(7,2) NULL DEFAULT NULL,
  `VALOR_INSS` DECIMAL(7,2) NULL DEFAULT NULL,
  `VALOR_IR` DECIMAL(7,2) NULL DEFAULT NULL,
  `VALOR_CSLL` DECIMAL(7,2) NULL DEFAULT NULL,
  `ALIQUOTA_PIS` VARCHAR(10) NULL DEFAULT NULL,
  `ALIQUOTA_COFINS` VARCHAR(10) NULL DEFAULT NULL,
  `ALIQUOTA_INSS` VARCHAR(10) NULL DEFAULT NULL,
  `ALIQUOTA_IR` VARCHAR(10) NULL DEFAULT NULL,
  `ALIQUOTA_CSLL` VARCHAR(10) NULL DEFAULT NULL,
  `CODIGO_ATIVIDADE` VARCHAR(15) NULL DEFAULT NULL,
  `DESCRICAO_ATIVIDADE` VARCHAR(255) NULL DEFAULT NULL,
  `GRUPO_ATIVIDADE` VARCHAR(2) NULL DEFAULT NULL,
  `ENQUADRAMENTO_ATIVIDADE` VARCHAR(2) NULL DEFAULT NULL,
  `LOCAL_INCIDENCIA_ATIVIDADE` VARCHAR(2) NULL DEFAULT NULL,
  `TRIBUTAVEL_ATIVIDADE` VARCHAR(2) NULL DEFAULT NULL,
  `DEDUCAO_VALOR_ATIVIDADE` VARCHAR(20) NULL DEFAULT NULL,
  `DEDUCAO_ATIVIDADE` VARCHAR(2) NULL DEFAULT NULL,
  `ATV_ECON_ATV` VARCHAR(2) NULL DEFAULT NULL,
  `COS_SERVICO` SMALLINT(10) NULL DEFAULT NULL,
  `DESCRICAO_SERVICO` TEXT NULL DEFAULT NULL,
  `ALIQUOTA` VARCHAR(2) NULL DEFAULT NULL,
  `TIPO_RECOLHIMENTO` VARCHAR(2) NULL DEFAULT NULL,
  `OPERACAO_TRIBUTACAO` VARCHAR(2) NULL DEFAULT NULL,
  `MOTIVO_PAGAMENTO` VARCHAR(2) NULL DEFAULT NULL,
  `CODIGO_REGIME` SMALLINT(2) NULL DEFAULT NULL,
  `CIDADE_CODIGO_PRESTACAO` INT(11) NOT NULL,
  `CIDADE_PRESTACAO` VARCHAR(255) NULL DEFAULT NULL,
  `UF_PRESTACAO` VARCHAR(5) NULL DEFAULT NULL,
  `DOCUMENTO_PRESTACAO` VARCHAR(5) NULL DEFAULT NULL,
  `SERIE_PRESTACAO` VARCHAR(5) NULL DEFAULT NULL,
  `TRIBUTACAO_PRESTACAO` VARCHAR(2) NULL DEFAULT NULL,
  `DESCRICAO_NOTA` TEXT NOT NULL,
  `CODIGO_VERIFICACAO` VARCHAR(255) NULL DEFAULT NULL,
  `ID_NOTA_FISCAL` INT(11) NOT NULL,
  `VALOR_ISS_RET` VARCHAR(20) NULL DEFAULT NULL,
  `ALIQ_RET` VARCHAR(20) NULL DEFAULT NULL,
  `DESCONTO_RET` VARCHAR(20) NULL DEFAULT NULL,
  `TRIBUTAVEL` VARCHAR(10) NULL DEFAULT NULL,
  `DESCRICAO` VARCHAR(255) NULL DEFAULT NULL,
  `QUANTIDADE` VARCHAR(5) NULL DEFAULT NULL,
  `VALOR_UNITARIO` VARCHAR(100) NULL DEFAULT NULL,
  `VALOR_TOTAL` VARCHAR(100) NULL DEFAULT NULL,
  `DEDUCAO` VARCHAR(25) NULL DEFAULT NULL,
  `VALOR_ISS_UNITARIO` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`NUM_NOTA`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
