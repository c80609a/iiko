-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: iiko_develop_db
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.12.04.1

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-02-10 11:46:13','2017-02-10 11:46:13');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proto_day_plans`
--

DROP TABLE IF EXISTS `proto_day_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proto_day_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_my` tinyint(1) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `possible` tinyint(1) DEFAULT NULL,
  `my_assignment` tinyint(1) DEFAULT NULL,
  `related` int(11) DEFAULT NULL,
  `actions` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `next` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proto_day_plans`
--

LOCK TABLES `proto_day_plans` WRITE;
/*!40000 ALTER TABLE `proto_day_plans` DISABLE KEYS */;
INSERT INTO `proto_day_plans` VALUES (1,'Щи зеленые с яйцом','Блюдо','10 шт',NULL,0,'<span class=\"label label-danger\">new</span>',0,0,NULL,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:01','2017-05-03 17:58:01',NULL,NULL),(2,'Котлеты картофельные','Блюдо','10 шт',NULL,0,'<span class=\"label label-danger\">new</span>',1,0,NULL,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:01','2017-05-03 17:58:01',NULL,NULL),(3,'Консоме с куриными фрикадельками и сезонными овощами','Блюдо','10 шт','Петров',0,'<span class=\"label label-danger\">new</span>',0,1,NULL,'[]','2017-05-03 17:58:02','2017-05-03 17:58:02',NULL,NULL),(4,'Почистить картофель','Компонент','0,29 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"], [\"Готовить\", 2, \"warning btn-start-cooking\"]]','2017-05-03 17:58:02','2017-05-03 17:58:02','[11, 18, 20]',NULL),(5,'Почистить морковь','Компонент','0,2 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"], [\"Готовить\", 2, \"warning btn-start-cooking\"]]','2017-05-03 17:58:02','2017-05-03 17:58:02','[12, 21]',NULL),(6,'Почистить лук','Компонент','0,3 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"], [\"Готовить\", 2, \"warning btn-start-cooking\"]]','2017-05-03 17:58:02','2017-05-03 17:58:02','[133]',NULL),(7,'Помыть щавель','Компонент','0,4 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"], [\"Готовить\", 2, \"warning btn-start-cooking\"]]','2017-05-03 17:58:02','2017-05-03 17:58:02','[1]',NULL),(8,'Помыть шпинат','Компонент','0,4 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"], [\"Готовить\", 2, \"warning btn-start-cooking\"]]','2017-05-03 17:58:02','2017-05-03 17:58:02','[1]',NULL),(9,'Отварить яйцо','Компонент','5 шт',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"], [\"Готовить\", 2, \"warning btn-start-cooking\"]]','2017-05-03 17:58:03','2017-05-03 17:58:03','[15]',NULL),(10,'Помыть зелень','Компонент','0,01 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"], [\"Готовить\", 2, \"warning btn-start-cooking\"]]','2017-05-03 17:58:03','2017-05-03 17:58:03','[16]',NULL),(11,'Порезать картофель кубиками','Компонент','0,29 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:03','2017-05-03 17:58:03','[1]','[4]'),(12,'Натереть морковь','Компонент','0,1 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:03','2017-05-03 17:58:03','[17]','[5]'),(13,'Нашинковать щавель','Компонент','0,4 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:03','2017-05-03 17:58:03','[1]','[7]'),(14,'Нашинковать шпинат','Компонент','0,4 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:03','2017-05-03 17:58:03','[1]','[8]'),(15,'Яйцо варёное почистить и разрезать пополам','Компонент','5 шт',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:04','2017-05-03 17:58:04','[1]','[9]'),(16,'Нашинковать зелень','Компонент','0,02 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:04','2017-05-03 17:58:04','[1, 3]','[10]'),(17,'Спассеровать лук и морковь','Компонент','0,25 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:04','2017-05-03 17:58:04','[1]','[12, 133]'),(18,'Отварить картофель','Компонент','1,42 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,2,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:04','2017-05-03 17:58:04','[19]','[4]'),(19,'Потереть варёный картофель','Компонент','1,42 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,2,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:04','2017-05-03 17:58:04','[2]','[18]'),(20,'Картофель нарезать дольками','Компонент','0,45 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,3,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:04','2017-05-03 17:58:04','[3]','[4]'),(21,'Морковь нарезать ломтиками','Компонент','0,1 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,3,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:05','2017-05-03 17:58:05','[3]','[5]'),(133,'Нашинковать лук','Компонент','0,3 кг',NULL,0,'<span class=\"label label-danger\">new</span>',1,NULL,1,'[[\"Назначить\", 1, \"success btn-show-modal-assign\"]]','2017-05-03 17:58:03','2017-05-03 17:58:03','[17, 3]','[6]');
/*!40000 ALTER TABLE `proto_day_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proto_modal_infos`
--

DROP TABLE IF EXISTS `proto_modal_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proto_modal_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proto_modal_infos`
--

LOCK TABLES `proto_modal_infos` WRITE;
/*!40000 ALTER TABLE `proto_modal_infos` DISABLE KEYS */;
INSERT INTO `proto_modal_infos` VALUES (18,'qwerty_whoareu','\n<p>Здесь можно выбрать роль пользователя для испытания прототипа Системы.</p>\n<ul>\n    <li>Шеф-повар: может назначать позиции в плане на день, может сам готовить их, может списывать.</li>\n    <li>Повар: может готовить то, что ему назначено.</li>\n    <li>Директор: ...</li>\n</ul>\n','2017-05-05 06:57:29','2017-05-05 06:57:29'),(19,'chief_povar_idle','\nДействия, которые может совершать Шеф-повар на кухне, разделены на две части:\n<ul>\n    <li>Это, непосредственно, готовка: обзор плана на день на цех, управление позициями плана на день, приготовление</li>\n    <li>И списывание ТМЦ со склада кухни</li>\n</ul>\n','2017-05-05 06:57:30','2017-05-05 06:57:30'),(20,'chief_povar_day_plan','\nЗдесь Шеф-повар конкретного цеха кухни видит план на день, который был сформирован Директором с помощью Системы.\nПозиции в плане на день могут быть двух типов:\n<ul>\n    <li>Блюда</li>\n    <li>Компоненты</li>\n</ul>\nШеф-повар, находясь в интерфейсе Системы на производстве может просматривать весь план на день на цех и управлять им:\n<ul>\n    <li>Назначать на позиции плана на день поваров</li>\n    <li>Начинать и заканчивать готовить те или иные позиции самостоятельно</li>\n</ul>\n<p>Для того, чтобы на кухне в интерфейсе &ldquo;готовка&rdquo; корректно отображать информацию, необходимо каждое блюдо разложить на действия, действия раскидать по этапам приготовления.</p>\n\n<p>Это надо сделать, т.к. у нас специфика производства такая: один человек на кухне только чистит, другой - только режет, третий - собирает готовые блюда.</p>\n\n<p>Интерес, прежде всего, представляют действия, предшествующие непосредственной сборке-готовке блюда.</p>\n\n<p>Для примера разложим 3 случайных блюда, которые надо приготовить на кухне:</p>\n\n<ul>\n	<li>щи зеленые с яйцом - 10 шт</li>\n	<li>котлеты картофельные - 10 шт</li>\n	<li>Консоме с куриными фрикадельками и сезонными овощами - 10 шт</li>\n</ul>\n\n<p>Распишем приготовление каждого блюда по действиям, действия разложим по этапам:</p>\n\n<p class=\"text-primary\">(Данные действия и этапы примерны. На практике же, подобные алгоритмы должны быть составлены в коммуникации с заказчиком Системы)</p>\n\n<ol>\n	<li>\n	<p>Щи зеленые с яйцом.</p>\n\n	<ul>\n		<li>\n		<p>1-й этап (подготовка продуктов):</p>\n\n		<ul>\n			<li>картофель: почистить (0,29 кг)</li>\n			<li>морковь: почистить (0,1 кг)</li>\n			<li>лук репчатый: почистить (0,15 кг)</li>\n			<li>щавель: помыть (0,4 кг)</li>\n			<li>шпинат: помыть (0,4 кг)</li>\n			<li>яйцо: отварить (5 шт)</li>\n			<li>зелень: помыть (0,01 кг)</li>\n		</ul>\n		</li>\n		<li>\n		<p>2-й этап (обработка продуктов):</p>\n\n		<ul>\n			<li>картофель: порезать кубиками</li>\n			<li>морковь: натереть</li>\n			<li>лук репчатый: нашинковать</li>\n			<li>щавель: нашинковать</li>\n			<li>шпинат: нашинковать</li>\n			<li>яйцо вареное: почистить, разрезать на 2 части</li>\n			<li>зелень: нашинковать</li>\n		</ul>\n		</li>\n		<li>\n		<p>3-й этап:</p>\n\n		<ul>\n			<li>\n			<p>лук репчатый нашинкованный и морковь тёртая: спассеровать</p>\n			</li>\n		</ul>\n		</li>\n		<li>\n		<p>4-й этап (готовка):</p>\n\n		<ul>\n			<li>\n			<p>приготовить блюдо</p>\n			</li>\n		</ul>\n		</li>\n	</ul>\n	</li>\n	<li>\n	<p>Котлеты картофельные.</p>\n\n	<ul>\n		<li>\n		<p>1-й этап (подготовка продуктов):</p>\n\n		<ul>\n			<li>\n			<p>картофель: почистить (1,42 кг)</p>\n			</li>\n		</ul>\n		</li>\n		<li>\n		<p>2-й этап (обработка продуктов):</p>\n\n		<ul>\n			<li>\n			<p>картофель: отварить</p>\n			</li>\n		</ul>\n		</li>\n		<li>\n		<p>3-й этап:</p>\n\n		<ul>\n			<li>\n			<p>картофель: потереть</p>\n			</li>\n		</ul>\n		</li>\n		<li>\n		<p>4-й этап (готовка):</p>\n\n		<ul>\n			<li>\n			<p>приготовить блюдо</p>\n			</li>\n		</ul>\n		</li>\n	</ul>\n	</li>\n	<li>\n	<p>Консоме с куриными фрикадельками и сезонными овощами.</p>\n\n	<ul>\n		<li>\n		<p>1-й этап (подготовка продуктов):</p>\n\n		<ul>\n			<li>картофель: почистить (0,45 кг)</li>\n			<li>лук репчатый: почистить (0,15 кг)</li>\n			<li>морковь: почистить (0,1 кг)</li>\n			<li>зелень: помыть (0,01 кг)</li>\n		</ul>\n		</li>\n		<li>\n		<p>2-й этап (обработка продуктов):</p>\n\n		<ul>\n			<li>картофель: нарезать дольками</li>\n			<li>морковь: нарезать ломтиками</li>\n			<li>лук репчатый: нашинковать</li>\n			<li>зелень: нашинковать</li>\n		</ul>\n		</li>\n		<li>\n		<p>3-й этап:</p>\n\n		<ul>\n			<li>\n			<p>фрикадельки: собрать, припустить</p>\n			</li>\n		</ul>\n		</li>\n		<li>\n		<p>4-й этап (готовка):</p>\n\n		<ul>\n			<li>\n			<p>приготовить блюдо</p>\n			</li>\n		</ul>\n		</li>\n	</ul>\n	</li>\n</ol>\n\n<p>После можно заметить, что некоторые действия можно сложить. Например:</p>\n\n<ul>\n	<li>чистка картофеля</li>\n	<li>чистка лука</li>\n	<li>чистка моркови</li>\n	<li>помывка зелени</li>\n	<li>шинковка зелени</li>\n	<li>шинковка лука</li>\n</ul>\n\n<p>Это означает, что в интерфейсе пользователя на кухне, в таблице &ldquo;план на день&rdquo; будут видны строки вида (где указан вес - это итогоая сумма из списков выше):</p>\n\n<ul>\n	<li>картофель: почистить - 2,16 кг (= 0,45 кг + 1,42 кг + 0,29 кг)</li>\n	<li>лук репчатый: почистить - 0,3 кг (=0,15 кг + 0,15 кг)</li>\n	<li>морковь: почистить - 0,2 кг (0,1 кг + 0,1 кг)</li>\n	<li>лук репчатый: нашинковать - 0,3 кг (=0,15 кг + 0,15 кг)</li>\n	<li>зелень: помыть - 0,02 кг (=0,01 кг + 0,01 кг)</li>\n	<li>зелень: нашинковать - 0,02 кг (=0,01 кг + 0,01 кг)</li>\n</ul>\n\n<p>Также можно заметить, что действие &ldquo;зелень: нашинковать&rdquo; не может быть начато, если не завершено действие &ldquo;зелень: помыть&rdquo;. Т.е. действия могут зависеть от других.</p>\n','2017-05-05 06:57:30','2017-05-05 06:57:30'),(21,'akt_spisania_idle','\n<p>Акт списания - документ, подтверждающий непосредственный расход материальных ценностей, за счет которого используемые материалы становятся незадействованными в дальнейшем процессе производства.</p>\n<p>С актом списания Шеф-повар может совершать действия, подробно описанные <a href=\"http://tz.chefhouse.su/doc/3#shef-povar\" target=\"_blank\">здесь</a>.</p>\n','2017-05-05 06:57:30','2017-05-05 06:57:30'),(22,'akt_spisania_view_chief','\n<p>Шеф-Повар может добавить любое количество Готовых Блюд, которые были приготовлены сегодня/вчера/на этой неделе/в этом месяце, в “Свой” Акт Списания.</p>\n<p>Бухгалтер проводит в конце рабочего дня подтверждённые Директором Акты Списания Готовых Блюд со Склада Кухни, в который попадают все добавленные в них Шеф-Поварами Готовые Блюда в течение Рабочего Дня.</p>\n<p>Более подробно про Акт Списания с точки зрения Шеф-повара можно прочесть <a href=\"http://tz.chefhouse.su/doc/3#suschnosti\" target=\"_blank\">здесь</a>.</p>\n','2017-05-05 06:57:30','2017-05-05 06:57:30'),(23,'akt_spisania_make_chief','\n<p>Шеф-Повар может добавить любое количество Готовых Блюд, которые были приготовлены сегодня/вчера/на этой неделе/в этом месяце, в “Свой” Акт Списания.</p>\n<p>Под “Своим” Актом Списания подразумевается тот Акт, создание которого было инициировано первым “значимым” взаимодействием Шеф-Повара с Системой за текущий Рабочий День. Другими словами на примере: если Шеф-Повар намеревается списать Готовое Блюдо, он нажимает на кнопку “списать”, заполняет свойства списываемого Готового Блюда и нажимает кнопку “сохранить”</p>\n','2017-05-05 06:57:30','2017-05-05 06:57:30');
/*!40000 ALTER TABLE `proto_modal_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170210113433'),('20170210115025'),('20170210115029'),('20170428060800'),('20170502164611'),('20170504170059');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'2017-02-10 16:34:07','2017-02-10 17:14:45','tz007@mail.ru','$2a$11$ySCpo0ShC/jyWLjH27OkZuVECN0ZniiXKi2IjK69iJgTlA0ejdBOu',NULL,NULL,NULL,1,'2017-02-10 17:14:45','2017-02-10 17:14:45','127.0.0.1','127.0.0.1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-05 10:20:44
