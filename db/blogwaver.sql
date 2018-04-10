-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: blogwaver
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `bw_category`
--

DROP TABLE IF EXISTS `bw_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_category` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(60) NOT NULL,
  `category_uri` varchar(128) NOT NULL,
  `category_description` varchar(255) DEFAULT NULL,
  `category_parent` bigint(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_comment`
--

DROP TABLE IF EXISTS `bw_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_comment` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_author` varchar(32) NOT NULL,
  `comment_author_site` varchar(128) DEFAULT NULL,
  `comment_author_email` varchar(128) DEFAULT NULL,
  `comment_author_ip` varchar(64) DEFAULT NULL,
  `comment_agent` varchar(255) DEFAULT NULL,
  `comment_date` datetime NOT NULL,
  `comment_parent` bigint(11) unsigned DEFAULT NULL,
  `comment_status` smallint(1) unsigned NOT NULL,
  `comment_content` text,
  `comment_user_id` bigint(11) unsigned DEFAULT NULL,
  `comment_post_id` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bw_comment` (`comment_post_id`),
  CONSTRAINT `fk_bw_comment` FOREIGN KEY (`comment_post_id`) REFERENCES `bw_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_link`
--

DROP TABLE IF EXISTS `bw_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_link` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(60) NOT NULL,
  `link_address` varchar(128) NOT NULL,
  `link_description` varchar(255) DEFAULT NULL,
  `link_order` int(11) DEFAULT NULL,
  `link_status` smallint(1) NOT NULL DEFAULT '0',
  `link_tag` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_media`
--

DROP TABLE IF EXISTS `bw_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_media` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `media_name` varchar(60) NOT NULL,
  `media_type` varchar(60) NOT NULL,
  `media_url` varchar(128) NOT NULL,
  `media_author` varchar(32) NOT NULL,
  `media_create_date` datetime NOT NULL,
  `media_description` varchar(255) DEFAULT NULL,
  `media_alt` varchar(60) DEFAULT NULL,
  `media_source` varchar(60) DEFAULT NULL,
  `media_filepath` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_message`
--

DROP TABLE IF EXISTS `bw_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_message` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `sender` varchar(32) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `content` longtext,
  `time` datetime NOT NULL,
  `status` smallint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_module`
--

DROP TABLE IF EXISTS `bw_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_module` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(60) NOT NULL,
  `module_status` smallint(1) unsigned NOT NULL,
  `module_type` smallint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_module_metas`
--

DROP TABLE IF EXISTS `bw_module_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_module_metas` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` bigint(11) unsigned NOT NULL,
  `meta_name` varchar(32) NOT NULL,
  `meta_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_metas` (`module_id`),
  CONSTRAINT `fk_module_metas` FOREIGN KEY (`module_id`) REFERENCES `bw_module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_options`
--

DROP TABLE IF EXISTS `bw_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_options` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(32) NOT NULL,
  `option_value` varchar(255) DEFAULT NULL,
  `cache_required` smallint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_post`
--

DROP TABLE IF EXISTS `bw_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_post` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_title` varchar(200) NOT NULL,
  `post_author` varchar(32) NOT NULL,
  `post_content` longtext,
  `post_editor_type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `post_create_date` datetime DEFAULT NULL,
  `post_update_date` datetime DEFAULT NULL,
  `post_link` varchar(255) NOT NULL,
  `post_type` smallint(1) NOT NULL DEFAULT '0',
  `post_content_type` smallint(1) NOT NULL DEFAULT '0',
  `post_status` smallint(1) NOT NULL DEFAULT '0',
  `post_permission` smallint(1) NOT NULL DEFAULT '0',
  `post_password` varchar(32) DEFAULT NULL,
  `post_summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_link` (`post_link`) USING BTREE,
  KEY `post_author` (`post_author`,`post_title`) USING BTREE,
  CONSTRAINT `bw_post_ibfk_1` FOREIGN KEY (`post_author`) REFERENCES `bw_user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_post_categories`
--

DROP TABLE IF EXISTS `bw_post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_post_categories` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(11) unsigned NOT NULL,
  `category_id` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bw_post_category` (`post_id`),
  KEY `fk_bw_post_category_1` (`category_id`),
  CONSTRAINT `fk_bw_post_category` FOREIGN KEY (`post_id`) REFERENCES `bw_post` (`id`),
  CONSTRAINT `fk_bw_post_category_1` FOREIGN KEY (`category_id`) REFERENCES `bw_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_post_metas`
--

DROP TABLE IF EXISTS `bw_post_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_post_metas` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(11) unsigned NOT NULL,
  `meta_name` varchar(32) NOT NULL,
  `meta_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bw_post_metas` (`post_id`),
  CONSTRAINT `fk_bw_post_metas` FOREIGN KEY (`post_id`) REFERENCES `bw_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_post_tags`
--

DROP TABLE IF EXISTS `bw_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_post_tags` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(11) unsigned NOT NULL,
  `tag_id` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bw_post_tags` (`post_id`),
  KEY `fk_bw_post_tags_1` (`tag_id`),
  CONSTRAINT `fk_bw_post_tags` FOREIGN KEY (`post_id`) REFERENCES `bw_post` (`id`),
  CONSTRAINT `fk_bw_post_tags_1` FOREIGN KEY (`tag_id`) REFERENCES `bw_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_tag`
--

DROP TABLE IF EXISTS `bw_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_tag` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(60) NOT NULL,
  `tag_ref_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_user`
--

DROP TABLE IF EXISTS `bw_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_user` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(80) NOT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `activation_key` varchar(128) DEFAULT NULL,
  `status` smallint(2) unsigned NOT NULL,
  `type` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bw_user_metas`
--

DROP TABLE IF EXISTS `bw_user_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bw_user_metas` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) unsigned NOT NULL,
  `meta_name` varchar(32) NOT NULL,
  `meta_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_config` (`user_id`),
  CONSTRAINT `fk_user_config` FOREIGN KEY (`user_id`) REFERENCES `bw_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-21 22:37:37
