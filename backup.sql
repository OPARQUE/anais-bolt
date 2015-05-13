-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: anais-bolt
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bolt_artigos`
--

DROP TABLE IF EXISTS `bolt_artigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_artigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autores` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `palavras_chave` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `arquivo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_D1A45E1D989D9B62` (`slug`),
  KEY `IDX_D1A45E1DAFBA6FD8` (`datecreated`),
  KEY `IDX_D1A45E1DBE74E59A` (`datechanged`),
  KEY `IDX_D1A45E1DA5131421` (`datepublish`),
  KEY `IDX_D1A45E1DB7805520` (`datedepublish`),
  KEY `IDX_D1A45E1D7B00651C` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_artigos`
--

LOCK TABLES `bolt_artigos` WRITE;
/*!40000 ALTER TABLE `bolt_artigos` DISABLE KEYS */;
INSERT INTO `bolt_artigos` VALUES (1,'cpt-001-este-e-apenas-um-exemplo-de-artigo-para-exemplificar-o-conteudo-sendo-exibido-no-site','2015-05-07 16:18:10','2015-05-07 16:18:10','2015-05-07 16:08:22',NULL,'',1,'published','CPT.001 - Este é apenas um exemplo de artigo para exemplificar o conteúdo sendo exibido no site','Jorge Vieira da Costa Junior (Programa de Pós-Graduação em Ciências Contábeis – USP) Eliseu Martins (Programa de Pós-Graduação em Ciências Contábeis – USP)','Processo de Institucionalização, Controladoria, Empresas Familiares.','Quisque nec purus eget justo volutpat volutpat et ornare sapien. Donec rhoncus tristique purus, feugiat laoreet neque volutpat ut. Proin lacus dolor, tempus vehicula egestas sed, finibus sed lectus. Nunc quis nisi ligula. Aenean et mi mattis, luctus ante auctor, ultrices nibh. Cras efficitur tellus sed bibendum feugiat. Donec tempor, orci sit amet aliquam efficitur, ligula elit fringilla sem, vel convallis velit neque nec nunc. In rutrum varius sem, ac ornare lacus laoreet nec. Mauris varius est enim, eu vulputate dolor euismod a. Donec scelerisque pulvinar ex, ut rhoncus tellus rutrum vel. Suspendisse vitae nisl a elit cursus tincidunt at id enim. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut malesuada orci sit amet porttitor facilisis. Donec suscipit quam tellus, non ornare nibh auctor sit amet. Mauris at efficitur elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2015-05/modelo-artigo-cientifico.pdf'),(2,'cue-001-este-e-apenas-um-exemplo-de-artigo-para-exemplificar-o-conteudo-sendo-exibido-no-site','2015-05-07 16:21:43','2015-05-07 16:21:43','2015-05-07 16:20:27',NULL,'',1,'published','CUE.001 - Este é apenas um exemplo de artigo para exemplificar o conteúdo sendo exibido no site','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras viverra dolor id pulvinar sagittis. Fusce risus mi, ornare id sapien venenatis, eleifend luctus libero.','Uma palavra-chave; Outra palavra-chave; Última palavra-chave.','Vestibulum quis tellus non neque vestibulum ullamcorper ut et massa. Nam consectetur purus mi, at iaculis elit vulputate at. Nam lacinia sapien sed orci cursus imperdiet. Fusce tristique nisl id urna congue, eu tristique augue finibus. Morbi eu maximus quam. Nulla ac est felis. Vestibulum ut metus ullamcorper, eleifend eros quis, rhoncus leo. Duis non enim eget nulla sagittis pulvinar ac vel velit. Nunc consectetur auctor metus nec molestie. Pellentesque rutrum, mi eu viverra mollis, purus diam pharetra est, eu fringilla lacus mi eu orci. Nam viverra ex sit amet leo finibus volutpat. Nullam sodales lectus sed enim porttitor finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent quis ipsum et arcu volutpat vehicula. Sed commodo urna id eros bibendum aliquet.','2015-05/modelo-artigo-cientifico.pdf'),(3,'ccg-001-mais-outro-exemplo-de-artigo-para-popular-o-banco-de-dados','2015-05-07 16:23:49','2015-05-07 16:23:49','2015-05-07 16:22:14',NULL,'',1,'published','CCG.001 - Mais outro exemplo de artigo, para popular o banco de dados.','Jorge Vieira da Costa Junior (Programa de Pós-Graduação em Ciências Contábeis – USP) Eliseu Martins (Programa de Pós-Graduação em Ciências Contábeis – USP)','Processo de Institucionalização, Controladoria, Empresas Familiares.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras viverra dolor id pulvinar sagittis. Fusce risus mi, ornare id sapien venenatis, eleifend luctus libero. Morbi interdum orci a molestie venenatis. Sed faucibus ipsum ut diam feugiat ullamcorper ac sit amet diam. Phasellus rutrum mauris a rhoncus luctus. Integer et leo semper, fermentum diam sit amet, rutrum magna. Proin faucibus metus in quam convallis, sed hendrerit urna egestas. Aenean pulvinar quam nec consectetur lobortis. Nam molestie ex lorem, ac rutrum diam maximus at. Curabitur eget mollis neque. Ut ultrices mauris sit amet ullamcorper venenatis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed nulla mauris, blandit eu sem id, varius ullamcorper ipsum. Morbi bibendum turpis mi, nec dapibus diam vulputate a. Quisque rhoncus, odio id imperdiet aliquet, nibh metus porta lacus, in dictum justo ante feugiat nisi.','2015-05/modelo-artigo-cientifico.pdf'),(4,'epc-001-os-artigos-de-exemplo-deverao-ser-excluidos-antes-de-iniciar-o-processo-de-inclusao-de-artigos-reais','2015-05-07 16:25:32','2015-05-07 16:25:32','2015-05-07 16:23:50',NULL,'',1,'published','EPC.001 - Os artigos de exemplo deverão ser excluídos antes de iniciar o processo de inclusão de artigos reais','Rômulo Guimarães, Juliana Lisboa, Juliana Colli','OPARQUE, Grupo Criativo, Design, Desenvolvimento Web','Donec arcu metus, scelerisque sed mauris a, condimentum lobortis magna. Suspendisse nec pharetra tellus. Fusce vitae aliquet eros. Vestibulum aliquet imperdiet leo, id molestie nisl ullamcorper vitae. Vestibulum ultrices sapien nec vestibulum lobortis. Aliquam lacinia urna vitae nibh fermentum, ullamcorper eleifend ligula fermentum. Donec rhoncus suscipit augue, finibus aliquet sem aliquet ut. Nullam pulvinar arcu sed metus venenatis eleifend. Aliquam malesuada auctor neque a vehicula. Ut a lobortis sapien, non placerat libero. In dui libero, facilisis volutpat neque maximus, placerat lacinia mi. In ac faucibus mi.','2015-05/modelo-artigo-cientifico.pdf'),(5,'mfc-001-e-preciso-sempre-incluir-o-codigo-do-artigo-ao-cadastra-um-novo-artigo-no-sistema-seguindo-sempre-o-padrao','2015-05-07 16:27:35','2015-05-07 16:27:35','2015-05-07 16:25:34',NULL,'',1,'published','MFC.001 - É preciso sempre incluir o código do artigo ao cadastra um novo artigo no sistema, seguindo sempre o padrão.','Jorge Vieira da Silva Pereira (Programa de Pós-Graduação em Ciências Contábeis – USP) Eliseu Martins Gomes Marques (Programa de Pós-Graduação em Ciências Contábeis – USP)','Código do artigo, Sistema, Sempre o Padrão','Donec at diam cursus metus maximus vehicula. Duis sit amet tincidunt enim. Fusce eleifend augue id metus commodo tincidunt. Duis tincidunt nec magna vel blandit. Nam dictum condimentum libero a congue. Suspendisse eros ex, lobortis at arcu nec, dictum pulvinar ipsum. Morbi viverra pretium enim, at blandit ex volutpat in. Nam aliquam pulvinar metus, non volutpat enim rutrum ut. Nam rhoncus tortor vel elit tempor, et molestie mauris ornare. Aenean a erat augue. Pellentesque et leo nisi. Morbi tristique ipsum vel auctor rutrum. Phasellus ut porttitor lectus.','2015-05/modelo-artigo-cientifico.pdf'),(6,'cpt-002-e-preciso-sempre-incluir-o-codigo-do-artigo-ao-cadastra-um-novo-artigo-no-sistema-seguindo-sempre-o-padrao','2015-05-11 22:05:01','2015-05-11 22:05:01','2015-05-11 22:04:28',NULL,'',1,'published','CPT.002 - É preciso sempre incluir o código do artigo ao cadastra um novo artigo no sistema, seguindo sempre o padrão.','Jorge Vieira da Silva Pereira (Programa de Pós-Graduação em Ciências Contábeis – USP) Eliseu Martins Gomes Marques (Programa de Pós-Graduação em Ciências Contábeis – USP)','Código do artigo, Sistema, Sempre o Padrão','Donec at diam cursus metus maximus vehicula. Duis sit amet tincidunt enim. Fusce eleifend augue id metus commodo tincidunt. Duis tincidunt nec magna vel blandit. Nam dictum condimentum libero a congue. Suspendisse eros ex, lobortis at arcu nec, dictum pulvinar ipsum. Morbi viverra pretium enim, at blandit ex volutpat in. Nam aliquam pulvinar metus, non volutpat enim rutrum ut. Nam rhoncus tortor vel elit tempor, et molestie mauris ornare. Aenean a erat augue. Pellentesque et leo nisi. Morbi tristique ipsum vel auctor rutrum. Phasellus ut porttitor lectus.','2015-05/modelo-artigo-cientifico.pdf');
/*!40000 ALTER TABLE `bolt_artigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_authtoken`
--

DROP TABLE IF EXISTS `bolt_authtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_authtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lastseen` datetime DEFAULT NULL,
  `ip` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `useragent` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `validity` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_740AC52FF85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_authtoken`
--

LOCK TABLES `bolt_authtoken` WRITE;
/*!40000 ALTER TABLE `bolt_authtoken` DISABLE KEYS */;
INSERT INTO `bolt_authtoken` VALUES (1,'romulo1984','d2cf9f228089bcb2af536ed51ebe3cbe','WclDy5SU9pwg','2015-05-12 20:10:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36','2015-05-26 20:10:48');
/*!40000 ALTER TABLE `bolt_authtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_config`
--

DROP TABLE IF EXISTS `bolt_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `titulo_sobre` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `texto_sobre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `link_evento` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `logo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `logo_texto` longtext COLLATE utf8_unicode_ci NOT NULL,
  `bg_topo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `banner_ic` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_614B3BB3989D9B62` (`slug`),
  KEY `IDX_614B3BB3AFBA6FD8` (`datecreated`),
  KEY `IDX_614B3BB3BE74E59A` (`datechanged`),
  KEY `IDX_614B3BB3A5131421` (`datepublish`),
  KEY `IDX_614B3BB3B7805520` (`datedepublish`),
  KEY `IDX_614B3BB37B00651C` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_config`
--

LOCK TABLES `bolt_config` WRITE;
/*!40000 ALTER TABLE `bolt_config` DISABLE KEYS */;
INSERT INTO `bolt_config` VALUES (1,'geral','2015-05-07 16:42:47','2015-05-12 22:00:21','2015-05-07 16:30:48',NULL,'',1,'published','Geral','Dos 325 trabalhos submetidos ao IX Congresso ANPCONT, 121 foram aprovados para apresentação no evento e publicação nos anais do Congresso. Os resultados da avaliação foram comunicados individualmente aos autores, pelo correio eletrônico, no dia 06 de abril de 2015.','Sobre os Trabalhos','<p>Dos 325 trabalhos submetidos ao IX Congresso ANPCONT, 118 foram aprovados para apresentação no evento e publicação nos anais do Congresso. Os resultados da avaliação foram comunicados individualmente aos autores, pelo correio eletrônico, no dia 06 de abril de 2015.</p>\r\n\r\n<p>A apresentação do trabalho no evento, seja em sessão especial, interativa ou convencional, e a sua publicação nos anais do Congresso foi condicionada à inscrição até o dia 24/04/2015 de pelo menos um autor de cada trabalho. Cada trabalho deveria ainda ter a inscrição de um diferente coautor. Três trabalhos não tiveram autores inscritos, por isso não foram publicados nos anais do Congresso e nem incluídos na grade de apresentações.</p>\r\n\r\n<p>Dos 23 trabalhos de Iniciação Científica submetidos, 18 foram aprovados para exposição em banner na Mostra de Iniciação Científica do IX Congresso ANPCONT. Estão incluídos nestes Anais apenas os Resumos dos Trabalhos de Iniciação Científica aprovados e expostos na Mostra.</p>\r\n\r\n<p>Os conteúdos dos trabalhos aqui apresentados, assim como sua forma de apresentação e ortografia, são de responsabilidade exclusiva de seus autores. A ordem de publicação dos trabalhos, em cada área, obedece ao critério de submissão ao Congresso.</p>','http://congressos.anpcont.org.br/ix/','{\"file\":\"2015-05\\/logo-anais.png\"}','{\"file\":\"2015-05\\/logo-desc.png\"}','{\"file\":\"2015-05\\/bg-curitiba-pb.jpg\"}','{\"file\":\"2015-05\\/banner-ic-1.jpg\"}');
/*!40000 ALTER TABLE `bolt_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_cron`
--

DROP TABLE IF EXISTS `bolt_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interim` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `lastrun` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CD38E123615F8869` (`interim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_cron`
--

LOCK TABLES `bolt_cron` WRITE;
/*!40000 ALTER TABLE `bolt_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_ics`
--

DROP TABLE IF EXISTS `bolt_ics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_ics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autores` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `palavras_chave` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AAC23A34989D9B62` (`slug`),
  KEY `IDX_AAC23A34AFBA6FD8` (`datecreated`),
  KEY `IDX_AAC23A34BE74E59A` (`datechanged`),
  KEY `IDX_AAC23A34A5131421` (`datepublish`),
  KEY `IDX_AAC23A34B7805520` (`datedepublish`),
  KEY `IDX_AAC23A347B00651C` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_ics`
--

LOCK TABLES `bolt_ics` WRITE;
/*!40000 ALTER TABLE `bolt_ics` DISABLE KEYS */;
INSERT INTO `bolt_ics` VALUES (1,'ic-001-este-e-um-artigo-de-exemplo-de-iniciacao-cientifica-estes-artigos-nao-possuem-arquivo-para-download','2015-05-07 16:29:36','2015-05-07 16:29:36','2015-05-07 16:28:02',NULL,'',1,'published','IC.001 - Este é um artigo de exemplo de Iniciação Científica. Estes artigos não possuem arquivo para download','João da Silva Gomes (UFES), Mariana Pereira Silva (IFES)','Alguma palavra qualquer, Outra palavra qualquer, Mais uma palavra qualquer','Vestibulum quis tellus non neque vestibulum ullamcorper ut et massa. Nam consectetur purus mi, at iaculis elit vulputate at. Nam lacinia sapien sed orci cursus imperdiet. Fusce tristique nisl id urna congue, eu tristique augue finibus. Morbi eu maximus quam. Nulla ac est felis. Vestibulum ut metus ullamcorper, eleifend eros quis, rhoncus leo. Duis non enim eget nulla sagittis pulvinar ac vel velit. Nunc consectetur auctor metus nec molestie. Pellentesque rutrum, mi eu viverra mollis, purus diam pharetra est, eu fringilla lacus mi eu orci. Nam viverra ex sit amet leo finibus volutpat. Nullam sodales lectus sed enim porttitor finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent quis ipsum et arcu volutpat vehicula. Sed commodo urna id eros bibendum aliquet.'),(2,'ic-002-este-e-outro-artigo-de-exemplo-de-iniciacao-cientifica-estes-artigos-nao-possuem-arquivo-para-download','2015-05-07 16:30:13','2015-05-07 16:30:13','2015-05-07 16:29:47',NULL,'',1,'published','IC.002 - Este é outro artigo de exemplo de Iniciação Científica. Estes artigos não possuem arquivo para download','João da Silva Gomes (UFES), Mariana Pereira Silva (IFES)','Alguma palavra qualquer, Outra palavra qualquer, Mais uma palavra qualquer','Vestibulum quis tellus non neque vestibulum ullamcorper ut et massa. Nam consectetur purus mi, at iaculis elit vulputate at. Nam lacinia sapien sed orci cursus imperdiet. Fusce tristique nisl id urna congue, eu tristique augue finibus. Morbi eu maximus quam. Nulla ac est felis. Vestibulum ut metus ullamcorper, eleifend eros quis, rhoncus leo. Duis non enim eget nulla sagittis pulvinar ac vel velit. Nunc consectetur auctor metus nec molestie. Pellentesque rutrum, mi eu viverra mollis, purus diam pharetra est, eu fringilla lacus mi eu orci. Nam viverra ex sit amet leo finibus volutpat. Nullam sodales lectus sed enim porttitor finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent quis ipsum et arcu volutpat vehicula. Sed commodo urna id eros bibendum aliquet.');
/*!40000 ALTER TABLE `bolt_ics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_log_change`
--

DROP TABLE IF EXISTS `bolt_log_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_log_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contenttype` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `contentid` int(11) NOT NULL,
  `mutation_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `diff` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_946F972AA9E377A` (`date`),
  KEY `IDX_946F97275DAD987` (`ownerid`),
  KEY `IDX_946F972745E1826` (`contenttype`),
  KEY `IDX_946F972E625AE99` (`contentid`),
  KEY `IDX_946F972B0AEEF39` (`mutation_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_log_change`
--

LOCK TABLES `bolt_log_change` WRITE;
/*!40000 ALTER TABLE `bolt_log_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_log_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_log_system`
--

DROP TABLE IF EXISTS `bolt_log_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_log_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `message` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `requesturi` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `source` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_805C16D99AEACC13` (`level`),
  KEY `IDX_805C16D9AA9E377A` (`date`),
  KEY `IDX_805C16D975DAD987` (`ownerid`),
  KEY `IDX_805C16D9E25D857E` (`context`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_log_system`
--

LOCK TABLES `bolt_log_system` WRITE;
/*!40000 ALTER TABLE `bolt_log_system` DISABLE KEYS */;
INSERT INTO `bolt_log_system` VALUES (1,200,'2015-05-05 22:10:18','Added user account \'Rômulo Guimarães\'.',0,'/anais-bolt/admin/userfirst','userfirst','127.0.0.1','security','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":1354}'),(2,200,'2015-05-05 22:10:27','Logged in: romulo1984',1,'/anais-bolt/admin/login','postLogin','127.0.0.1','authentication','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Login.php\",\"Line\":52}'),(3,200,'2015-05-05 22:10:29','Fetching from remote server: http://news.bolt.cm/',1,'/anais-bolt/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Async.php\",\"Line\":114}'),(4,200,'2015-05-05 22:20:03','Using cached data',1,'/anais-bolt/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Async.php\",\"Line\":169}'),(5,200,'2015-05-05 22:23:41','Installed caseyamcl/bolt_dumpdb v1.0',1,'/anais-bolt/admin/extend/install?package=caseyamcl%2Fbolt_dumpdb&version=v1.0','install','127.0.0.1','extensions','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Extend.php\",\"Line\":228}'),(6,200,'2015-05-05 22:39:19','Uninstalled caseyamcl/bolt_dumpdb',1,'/anais-bolt/admin/extend/uninstall?package=caseyamcl/bolt_dumpdb','uninstall','127.0.0.1','extensions','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Extend.php\",\"Line\":390}'),(7,200,'2015-05-05 22:39:53','Installed bolt/editable v2.0.2',1,'/anais-bolt/admin/extend/install?package=bolt%2Feditable&version=v2.0.2','install','127.0.0.1','extensions','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Extend.php\",\"Line\":228}'),(8,200,'2015-05-07 16:02:14','Fetching from remote server: http://news.bolt.cm/',1,'/anais-bolt/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Async.php\",\"Line\":114}'),(9,400,'2015-05-07 16:05:13','Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(10,400,'2015-05-07 16:05:13','Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(11,400,'2015-05-07 16:05:13','Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(12,400,'2015-05-07 16:05:13','Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(13,400,'2015-05-07 16:05:13','Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(14,400,'2015-05-07 16:05:14','Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(15,400,'2015-05-07 16:05:14','Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(16,400,'2015-05-07 16:05:14','Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(17,400,'2015-05-07 16:05:14','Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(18,400,'2015-05-07 16:05:14','Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(19,200,'2015-05-07 16:06:43','Created: Contabilidade Aplicada ao Setor Público e ao Terceiro Setor',1,'/anais-bolt/admin/editcontent/temas?returnto=saveandnew','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(20,200,'2015-05-07 16:06:58','Created: Contabilidade para Usuários Externos',1,'/anais-bolt/admin/editcontent/temas/0?returnto=saveandnew','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(21,200,'2015-05-07 16:07:09','Created: Controladoria e Contabilidade Gerencial',1,'/anais-bolt/admin/editcontent/temas/0?returnto=saveandnew','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(22,200,'2015-05-07 16:07:20','Created: Educação e Pesquisa em Contabilidade',1,'/anais-bolt/admin/editcontent/temas/0?returnto=saveandnew','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(23,200,'2015-05-07 16:07:34','Created: Mercados Financeiro, de Crédito e de Capitais',1,'/anais-bolt/admin/editcontent/temas/0?returnto=new','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(24,200,'2015-05-07 16:18:10','Created: CPT.001 - Este é apenas um exemplo de artigo para exemplificar o conteúdo sendo exibido no site',1,'/anais-bolt/admin/editcontent/artigos','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(25,200,'2015-05-07 16:21:44','Created: CUE.001 - Este é apenas um exemplo de artigo para exemplificar o conteúdo sendo exibido no site',1,'/anais-bolt/admin/editcontent/artigos?returnto=saveandnew','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(26,200,'2015-05-07 16:23:49','Created: CCG.001 - Mais outro exemplo de artigo, para popular o banco de dados.',1,'/anais-bolt/admin/editcontent/artigos?returnto=saveandnew','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(27,200,'2015-05-07 16:25:33','Created: EPC.001 - Os artigos de exemplo deverão ser excluídos antes de iniciar o processo de inclusão de artigos reais',1,'/anais-bolt/admin/editcontent/artigos/0?returnto=saveandnew','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(28,200,'2015-05-07 16:27:36','Created: MFC.001 - É preciso sempre incluir o código do artigo ao cadastra um novo artigo no sistema, seguindo sempre o padrão.',1,'/anais-bolt/admin/editcontent/artigos/0?returnto=new','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(29,200,'2015-05-07 16:29:36','Created: IC.001 - Este é um artigo de exemplo de Iniciação Científica. Estes artigos não possuem arquivo para download',1,'/anais-bolt/admin/editcontent/ics?returnto=new','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(30,200,'2015-05-07 16:30:14','Saved: IC.002 - Este é outro artigo de exemplo de Iniciação Científica. Estes artigos não possuem arquivo para download',1,'/anais-bolt/admin/editcontent/ics/1?returnto=new','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":799}'),(31,200,'2015-05-07 16:30:45','Using cached data',1,'/anais-bolt/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Async.php\",\"Line\":169}'),(32,200,'2015-05-07 16:42:48','Created: Geral',1,'/anais-bolt/admin/editcontent/config','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":796}'),(33,200,'2015-05-07 16:42:53','Using cached data',1,'/anais-bolt/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Async.php\",\"Line\":169}'),(34,400,'2015-05-07 16:46:41','Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(35,400,'2015-05-07 16:46:41','Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(36,400,'2015-05-07 16:46:41','Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(37,400,'2015-05-07 16:46:41','Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(38,400,'2015-05-07 16:46:41','Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(39,400,'2015-05-07 16:46:41','Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(40,400,'2015-05-07 16:46:41','Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(41,400,'2015-05-07 16:46:41','Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(42,400,'2015-05-07 16:46:42','Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(43,400,'2015-05-07 16:46:42','Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.',1,'/anais-bolt/','homepage','127.0.0.1','config','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\TwigExtension.php\",\"Line\":1300}'),(44,400,'2015-05-07 16:53:02','Rendering homepage failed: Template \"index.twig\" is not defined ().',1,'/anais-bolt/','homepage','127.0.0.1','twig','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Frontend.php\",\"Line\":419}'),(45,200,'2015-05-07 17:03:24','Saved: Geral',1,'/anais-bolt/admin/editcontent/config/1?returnto=ajax','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":799}'),(46,400,'2015-05-11 20:18:28','Rendering homepage failed: Template \"#partials/_header.twig\" is not defined () in \"index.twig\" at line 1.',1,'/anais-bolt/','homepage','127.0.0.1','twig','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Frontend.php\",\"Line\":419}'),(47,400,'2015-05-11 21:40:56','Rendering Mercados Financeiro, de Crédito e de Capitais failed: Template \"record.twig\" is not defined ().',1,'/anais-bolt/tema/mfc','contentlink','127.0.0.1','twig','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Frontend.php\",\"Line\":419}'),(48,200,'2015-05-11 22:03:47','Fetching from remote server: http://news.bolt.cm/',1,'/anais-bolt/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Async.php\",\"Line\":114}'),(49,400,'2015-05-11 22:04:02','Error occurred during fetch: [curl] 6: Could not resolve host: news.bolt.cm [url] http://news.bolt.cm/?v=2.1.8%20pl1&p=5.5.12&db=mysql&name=bG9jYWxob3N0',1,'/anais-bolt/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Async.php\",\"Line\":166}'),(50,200,'2015-05-11 22:05:01','Saved: CPT.002 - É preciso sempre incluir o código do artigo ao cadastra um novo artigo no sistema, seguindo sempre o padrão.',1,'/anais-bolt/admin/editcontent/artigos/5?returnto=new','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":799}'),(51,400,'2015-05-11 22:36:40','Rendering search failed: Template \"listing-search.twig\" is not defined ().',1,'/anais-bolt/search?q=noi','search','127.0.0.1','twig','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Frontend.php\",\"Line\":419}'),(52,400,'2015-05-12 20:25:19','Requested specific query \'artigos\', not found.',1,'/anais-bolt/artigos/search?q=ccg.001','contentlink','127.0.0.1','storage','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Storage.php\",\"Line\":1816}'),(53,200,'2015-05-12 21:57:03','Fetching from remote server: http://news.bolt.cm/',1,'/anais-bolt/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Async.php\",\"Line\":114}'),(54,200,'2015-05-12 21:57:28','Saved: Geral',1,'/anais-bolt/admin/editcontent/config/1?returnto=ajax','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":799}'),(55,200,'2015-05-12 21:59:17','Saved: Geral',1,'/anais-bolt/admin/editcontent/config/1?returnto=ajax','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":799}'),(56,200,'2015-05-12 22:00:22','Saved: Geral',1,'/anais-bolt/admin/editcontent/config/1?returnto=ajax','editcontent','127.0.0.1','content','{\"File\":\"C:\\\\wamp\\\\www\\\\anais-bolt\\\\src\\\\Controllers\\\\Backend.php\",\"Line\":799}');
/*!40000 ALTER TABLE `bolt_log_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_relations`
--

DROP TABLE IF EXISTS `bolt_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_contenttype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_contenttype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4C524BC3EA112943` (`from_contenttype`),
  KEY `IDX_4C524BC378CED90B` (`from_id`),
  KEY `IDX_4C524BC35ACD2645` (`to_contenttype`),
  KEY `IDX_4C524BC330354A65` (`to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_relations`
--

LOCK TABLES `bolt_relations` WRITE;
/*!40000 ALTER TABLE `bolt_relations` DISABLE KEYS */;
INSERT INTO `bolt_relations` VALUES (1,'artigos',1,'temas',1),(2,'artigos',2,'temas',2),(3,'artigos',3,'temas',3),(4,'artigos',4,'temas',4),(5,'artigos',5,'temas',5),(6,'artigos',6,'temas',1);
/*!40000 ALTER TABLE `bolt_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_taxonomy`
--

DROP TABLE IF EXISTS `bolt_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_taxonomy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `contenttype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `taxonomytype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_ABAA120084A0A3ED` (`content_id`),
  KEY `IDX_ABAA1200745E1826` (`contenttype`),
  KEY `IDX_ABAA1200FE2A268F` (`taxonomytype`),
  KEY `IDX_ABAA1200FEA3B3F9` (`sortorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_taxonomy`
--

LOCK TABLES `bolt_taxonomy` WRITE;
/*!40000 ALTER TABLE `bolt_taxonomy` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_temas`
--

DROP TABLE IF EXISTS `bolt_temas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_temas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sigla` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_22B66A8D989D9B62` (`slug`),
  KEY `IDX_22B66A8DAFBA6FD8` (`datecreated`),
  KEY `IDX_22B66A8DBE74E59A` (`datechanged`),
  KEY `IDX_22B66A8DA5131421` (`datepublish`),
  KEY `IDX_22B66A8DB7805520` (`datedepublish`),
  KEY `IDX_22B66A8D7B00651C` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_temas`
--

LOCK TABLES `bolt_temas` WRITE;
/*!40000 ALTER TABLE `bolt_temas` DISABLE KEYS */;
INSERT INTO `bolt_temas` VALUES (1,'cpt','2015-05-07 16:06:43','2015-05-07 16:06:43','2015-05-07 16:06:14',NULL,'',1,'published','Contabilidade Aplicada ao Setor Público e ao Terceiro Setor','CPT'),(2,'cue','2015-05-07 16:06:57','2015-05-07 16:06:57','2015-05-07 16:06:44',NULL,'',1,'published','Contabilidade para Usuários Externos','CUE'),(3,'ccg','2015-05-07 16:07:08','2015-05-07 16:07:08','2015-05-07 16:06:59',NULL,'',1,'published','Controladoria e Contabilidade Gerencial','CCG'),(4,'epc','2015-05-07 16:07:20','2015-05-07 16:07:20','2015-05-07 16:07:10',NULL,'',1,'published','Educação e Pesquisa em Contabilidade','EPC'),(5,'mfc','2015-05-07 16:07:34','2015-05-07 16:07:34','2015-05-07 16:07:21',NULL,'',1,'published','Mercados Financeiro, de Crédito e de Capitais','MFC');
/*!40000 ALTER TABLE `bolt_temas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_users`
--

DROP TABLE IF EXISTS `bolt_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lastseen` datetime DEFAULT NULL,
  `lastip` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `displayname` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `stack` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  `shadowpassword` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shadowtoken` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shadowvalidity` datetime DEFAULT NULL,
  `failedlogins` int(11) NOT NULL DEFAULT '0',
  `throttleduntil` datetime DEFAULT NULL,
  `roles` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_5585B54F85E0677` (`username`),
  KEY `IDX_5585B5450F9BB84` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_users`
--

LOCK TABLES `bolt_users` WRITE;
/*!40000 ALTER TABLE `bolt_users` DISABLE KEYS */;
INSERT INTO `bolt_users` VALUES (1,'romulo1984','$P$DQpbUmsV93wq9btfqEjb4ub23U8DqX.','romulo1984@gmail.com','2015-05-12 20:10:48','127.0.0.1','Rômulo Guimarães','[\"2015-05\\/banner-ic-2.jpg\",\"2015-05\\/banner-ic-1.jpg\",\"2015-05\\/banner-ic.jpg\",\"2015-05\\/bg-curitiba-pb.jpg\",\"2015-05\\/logo-desc.png\",\"2015-05\\/logo-anais.png\",\"2015-05\\/modelo-artigo-cientifico.pdf\"]',1,'','',NULL,0,NULL,'[\"root\",\"everyone\"]');
/*!40000 ALTER TABLE `bolt_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-12 17:29:27
