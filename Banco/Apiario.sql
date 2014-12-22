-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.33-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema apiario
--

CREATE DATABASE IF NOT EXISTS apiario;
USE apiario;

--
-- Definition of table `apiario`
--

DROP TABLE IF EXISTS `apiario`;
CREATE TABLE `apiario` (
  `Cod_apiario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `local` varchar(45) NOT NULL,
  `floral` varchar(45) NOT NULL,
  `n_colmeia` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`Cod_apiario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apiario`
--

/*!40000 ALTER TABLE `apiario` DISABLE KEYS */;
INSERT INTO `apiario` (`Cod_apiario`,`Nome`,`local`,`floral`,`n_colmeia`) VALUES 
 (1,'Dominus','cerro','FLORESTAL',13),
 (2,'Apiario','cerros verdes','NATIVA',1),
 (3,'Apiario2','cerro','FLORESTAL',1);
/*!40000 ALTER TABLE `apiario` ENABLE KEYS */;


--
-- Definition of table `apicultor`
--

DROP TABLE IF EXISTS `apicultor`;
CREATE TABLE `apicultor` (
  `N_reg` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Cpf` varchar(14) DEFAULT NULL,
  `Rg` varchar(15) DEFAULT NULL,
  `N_talao` varchar(45) DEFAULT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Telefone2` varchar(15) DEFAULT NULL,
  `localizacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`N_reg`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apicultor`
--

/*!40000 ALTER TABLE `apicultor` DISABLE KEYS */;
INSERT INTO `apicultor` (`N_reg`,`Nome`,`Cpf`,`Rg`,`N_talao`,`Telefone`,`Telefone2`,`localizacao`) VALUES 
 (1,'AsaS',NULL,NULL,NULL,'(55)9889-900',NULL,NULL),
 (2,'milene chimenes',NULL,NULL,NULL,'(55)3244-418','(55)9986-0404','cerros verdes'),
 (3,'aaaaa',NULL,NULL,NULL,'(55)3242-123',NULL,NULL),
 (4,'aaaaaa',NULL,NULL,NULL,'(55)2333-222',NULL,NULL),
 (5,'asdasd',NULL,NULL,NULL,'(55)5555-555',NULL,NULL),
 (6,'aaaa',NULL,NULL,NULL,'(44)4444-444',NULL,NULL),
 (7,'asd',NULL,NULL,NULL,'(44)4444-444',NULL,NULL),
 (8,'gauhaashs',NULL,NULL,NULL,'(22)3423-4234',NULL,NULL),
 (9,'bruno',NULL,NULL,NULL,'(55)3214-4423',NULL,NULL);
/*!40000 ALTER TABLE `apicultor` ENABLE KEYS */;


--
-- Definition of table `coleta`
--

DROP TABLE IF EXISTS `coleta`;
CREATE TABLE `coleta` (
  `cod_coleta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `n_colm` varchar(15) NOT NULL,
  `data_coleta` date NOT NULL,
  `obs` varchar(150) DEFAULT NULL,
  `producao` varchar(20) DEFAULT NULL,
  `data_proxcolheita` date DEFAULT NULL,
  PRIMARY KEY (`cod_coleta`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coleta`
--

/*!40000 ALTER TABLE `coleta` DISABLE KEYS */;
INSERT INTO `coleta` (`cod_coleta`,`n_colm`,`data_coleta`,`obs`,`producao`,`data_proxcolheita`) VALUES 
 (1,'21','2011-09-01','BOA','RUIM','0000-00-00'),
 (2,'21','2011-09-01','BOA 2','REGULAR','0000-00-00'),
 (3,'21','2011-09-01','asd','RUIM','2012-02-28'),
 (4,'23','2011-09-19','','','2012-03-17'),
 (5,'29','2011-10-10','','RUIM','2012-04-07'),
 (6,'34','2011-12-14','','BOM','2012-06-11');
/*!40000 ALTER TABLE `coleta` ENABLE KEYS */;


--
-- Definition of table `colmeia`
--

DROP TABLE IF EXISTS `colmeia`;
CREATE TABLE `colmeia` (
  `N_colm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Tip_ninho` varchar(15) NOT NULL,
  `Num_quad` int(11) NOT NULL,
  `N_sobreninho` int(11) DEFAULT NULL,
  `N_melg` int(11) DEFAULT NULL,
  `N_quadmelg` int(11) DEFAULT NULL,
  `Qual_enxame` varchar(10) DEFAULT NULL,
  `Raca_rainha` varchar(15) NOT NULL,
  `Idade_rainha` date NOT NULL,
  `Nivel_def` varchar(10) DEFAULT NULL,
  `Polem` varchar(5) DEFAULT NULL,
  `Nectar` varchar(5) DEFAULT NULL,
  `N_quadsobreninho` int(10) unsigned DEFAULT NULL,
  `Cod_apiario` varchar(5) NOT NULL,
  `identificador` varchar(20) NOT NULL,
  PRIMARY KEY (`N_colm`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colmeia`
--

/*!40000 ALTER TABLE `colmeia` DISABLE KEYS */;
INSERT INTO `colmeia` (`N_colm`,`Tip_ninho`,`Num_quad`,`N_sobreninho`,`N_melg`,`N_quadmelg`,`Qual_enxame`,`Raca_rainha`,`Idade_rainha`,`Nivel_def`,`Polem`,`Nectar`,`N_quadsobreninho`,`Cod_apiario`,`identificador`) VALUES 
 (27,'LANGSTROTH',4,4,3,NULL,'BOA','CARNICA','2011-09-24','FORTE','SIM','SIM',NULL,'12','090'),
 (28,'LANGSTROTH',5,4,6,4,'REGULAR','ALEMÃ','2011-11-30','BAIXO',NULL,NULL,NULL,'1','eeer4'),
 (29,'LANGSTROTH',3,NULL,NULL,NULL,NULL,'ALEMÃ','2011-12-06',NULL,NULL,NULL,NULL,'1','dasdas'),
 (30,'LANGSTROTH',5,NULL,NULL,NULL,NULL,'CARNICA','2011-12-09',NULL,NULL,NULL,NULL,'1','asdasd'),
 (31,'LANGSTROTH',4,NULL,NULL,NULL,NULL,'ITALIANA','2011-12-13',NULL,NULL,NULL,NULL,'1','asdas'),
 (32,'LANGSTROTH',4,NULL,NULL,NULL,NULL,'ALEMÃ','2011-12-13',NULL,NULL,NULL,NULL,'1','dfsdfsd'),
 (33,'LANGSTROTH',4,NULL,NULL,NULL,NULL,'ALEMÃ','2011-12-13',NULL,NULL,NULL,NULL,'1','asdasd'),
 (34,'LANGSTROTH',10,NULL,1,10,NULL,'AFRICANIZADA','2011-12-14',NULL,NULL,NULL,NULL,'2','colmeia1'),
 (35,'LANGSTROTH',10,NULL,NULL,NULL,NULL,'AFRICANIZADA','2011-12-15',NULL,NULL,NULL,NULL,'3','colmeiax');
/*!40000 ALTER TABLE `colmeia` ENABLE KEYS */;


--
-- Definition of table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
CREATE TABLE `equipamento` (
  `cod_equipamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `quantidade` varchar(45) DEFAULT '0',
  PRIMARY KEY (`cod_equipamento`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipamento`
--

/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` (`cod_equipamento`,`nome`,`categoria`,`descricao`,`quantidade`) VALUES 
 (1,'macacao','EQUIPAMENTOS','macacao branco','0'),
 (2,'asasas','VESTUARIO','asasasa','2'),
 (3,'aaaa','MATERIAIS','aaa','0'),
 (4,'FUMEGADOR','MATERIAIS','ROSA COM BOLINHAS','0'),
 (5,'aaaa','EQUIPAMENTOS','aaaa','3'),
 (6,'aaa','EQUIPAMENTOS','aaaaa','0'),
 (7,'asda','MATERIAIS','sdas','0'),
 (8,'ajkhsgd','EQUIPAMENTOS','ljha',NULL),
 (9,'sdfsg','EQUIPAMENTOS','sdfgdfg','1'),
 (10,'asd','EQUIPAMENTOS','sd','1'),
 (11,'aaa','EQUIPAMENTOS','aaaa',NULL),
 (12,'botas','EQUIPAMENTOS','botas brancas tamanho 34','3'),
 (13,'aa','EQUIPAMENTOS','aa','2'),
 (14,'aa','EQUIPAMENTOS','aaa','2'),
 (15,'bota tamanho 32','MATERIAIS','bota','1'),
 (16,'aa','MATERIAIS','aaa','2'),
 (17,'aaa','MATERIAIS','aaa','1'),
 (18,'aa','EQUIPAMENTOS','aaa','3');
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;


--
-- Definition of table `producao`
--

DROP TABLE IF EXISTS `producao`;
CREATE TABLE `producao` (
  `cod_prod` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_apiario` int(10) unsigned NOT NULL,
  `data` date NOT NULL,
  `peso_mel` double NOT NULL,
  PRIMARY KEY (`cod_prod`),
  KEY `cod_apiario` (`cod_apiario`),
  CONSTRAINT `cod_apiario` FOREIGN KEY (`cod_apiario`) REFERENCES `apiario` (`Cod_apiario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producao`
--

/*!40000 ALTER TABLE `producao` DISABLE KEYS */;
INSERT INTO `producao` (`cod_prod`,`cod_apiario`,`data`,`peso_mel`) VALUES 
 (1,3,'2011-12-15',300);
/*!40000 ALTER TABLE `producao` ENABLE KEYS */;


--
-- Definition of table `revisao`
--

DROP TABLE IF EXISTS `revisao`;
CREATE TABLE `revisao` (
  `cod_visita` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avaliacao` varchar(45) DEFAULT NULL,
  `data_rev` date NOT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `N_colm` varchar(15) NOT NULL,
  `data_proximarevisao` date DEFAULT NULL,
  PRIMARY KEY (`cod_visita`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `revisao`
--

/*!40000 ALTER TABLE `revisao` DISABLE KEYS */;
INSERT INTO `revisao` (`cod_visita`,`avaliacao`,`data_rev`,`obs`,`N_colm`,`data_proximarevisao`) VALUES 
 (1,'REGULAR','1998-06-19','wsadsda','2',NULL),
 (2,'RUIM','1990-09-09','sadsa','2',NULL),
 (3,'BOA','2011-04-12','trocar rainha daqui 15 dias','1',NULL),
 (4,'RUIM','2011-08-19','sdasdasdasd','3',NULL),
 (5,NULL,'2011-08-22',NULL,'15',NULL),
 (6,NULL,'2011-08-22',NULL,'16',NULL),
 (7,'RUIM','2010-09-13','nada','15',NULL),
 (8,'BOA','2011-08-19','revisar daqui a 15 dias','15',NULL),
 (9,'REGULAR','2011-08-22','voltar daqui a uns dias','15',NULL),
 (10,'RUIM','2011-08-23','teste','17',NULL),
 (11,'RUIM','2011-08-19','teste','16',NULL),
 (12,'REGULAR','2011-08-19','TESTE','15',NULL),
 (13,'REGULAR','2011-08-19','TESTE','17',NULL),
 (14,'REGULAR','2011-08-23','voltar daqui ','19',NULL),
 (15,'BOA','2011-08-23','hummmm','17',NULL),
 (16,'RUIM','2011-09-01','teste','21','2011-09-16'),
 (17,'BOM','2011-09-01','legal :D','21','2011-10-01'),
 (18,'REGULAR','2011-09-01','kjsdhf\r\n','21','2011-09-08'),
 (19,'BOM','2011-09-24','muito bem hein excelente','27','2011-10-24'),
 (20,'REGULAR','2011-10-10','\r\naaa','21','2011-10-25'),
 (21,'REGULAR','2011-12-14','nada\r\n','34','2011-12-21'),
 (22,'BOM','2011-12-15','\r\nesta boa','35','2011-12-30');
/*!40000 ALTER TABLE `revisao` ENABLE KEYS */;


--
-- Definition of table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `cod_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(10) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`cod_usuario`,`login`,`senha`,`nome`) VALUES 
 (1,'giulliano','190990','giulliano g. pivetta'),
 (2,'admin','admin','admin');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
