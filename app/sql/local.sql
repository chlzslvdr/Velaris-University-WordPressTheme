-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-05-16 06:45:37','2020-05-16 06:45:37','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://velaris-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://velaris-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Velaris University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','city of dreams','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','chelzeasalvador@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:152:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=47&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:35:\"crop-thumbnails/crop-thumbnails.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:88:\"/Users/CAS/Local Sites/velaris-university/app/public/wp-content/themes/velaris/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','velaris','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','velaris','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','47018','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','49','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','47','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1605163536','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','47018','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:7:{i:1590738338;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590777938;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590821138;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590821162;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590821168;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590907538;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','}X4Pt4T^S|!GC0U8bfNP3%RT.~D^Xm]~T?t_JocIu4{*x4Evpc/8M=*!B*srr?5V','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','#^pPn-1# %x1R@lZhXd{%]$n??-8l>0PF08hMmD&KMH[Dhsckz*+68MG4NnMkug ','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1590734802;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (120,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589613384;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (124,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590734806;s:7:\"checked\";a:1:{s:7:\"velaris\";s:5:\"0.0.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (132,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (143,'current_theme','Velaris','yes');
INSERT INTO `wp_options` VALUES (144,'theme_mods_velaris','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (145,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (149,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (150,'new_admin_email','chelzeasalvador@gmail.com','yes');
INSERT INTO `wp_options` VALUES (153,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (189,'_transient_health-check-site-status-result','{\"good\":\"13\",\"recommended\":\"4\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (194,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (237,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (301,'acf_version','5.8.11','yes');
INSERT INTO `wp_options` VALUES (368,'_site_transient_timeout_browser_803ecde3d6ae279d397e824cbe224ba2','1590831650','no');
INSERT INTO `wp_options` VALUES (369,'_site_transient_browser_803ecde3d6ae279d397e824cbe224ba2','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.138\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (370,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1590831651','no');
INSERT INTO `wp_options` VALUES (371,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (417,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1590734806;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.8.11\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:5:\"1.2.6\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"crop-thumbnails/crop-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/crop-thumbnails\";s:4:\"slug\";s:15:\"crop-thumbnails\";s:6:\"plugin\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/crop-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/crop-thumbnails.1.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";s:3:\"svg\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/crop-thumbnails/assets/banner-1544x500.jpg?rev=626571\";s:2:\"1x\";s:69:\"https://ps.w.org/crop-thumbnails/assets/banner-772x250.jpg?rev=626571\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (423,'_site_transient_timeout_browser_ae538dc5cdadd68697a215b39624c87e','1590924415','no');
INSERT INTO `wp_options` VALUES (424,'_site_transient_browser_ae538dc5cdadd68697a215b39624c87e','a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (470,'_site_transient_timeout_theme_roots','1590736605','no');
INSERT INTO `wp_options` VALUES (471,'_site_transient_theme_roots','a:1:{s:7:\"velaris\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (4,5,'_edit_lock','1589727937:1');
INSERT INTO `wp_postmeta` VALUES (7,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (8,7,'_edit_lock','1589727779:1');
INSERT INTO `wp_postmeta` VALUES (11,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (12,9,'_edit_lock','1589694865:1');
INSERT INTO `wp_postmeta` VALUES (13,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (14,3,'_wp_trash_meta_time','1589686112');
INSERT INTO `wp_postmeta` VALUES (15,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (17,13,'_edit_lock','1590305295:1');
INSERT INTO `wp_postmeta` VALUES (18,15,'_edit_lock','1589697897:1');
INSERT INTO `wp_postmeta` VALUES (19,19,'_edit_lock','1589700904:1');
INSERT INTO `wp_postmeta` VALUES (20,21,'_edit_lock','1589699185:1');
INSERT INTO `wp_postmeta` VALUES (21,23,'_edit_lock','1589696190:1');
INSERT INTO `wp_postmeta` VALUES (22,19,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (23,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (24,25,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (25,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (26,25,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (27,25,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (28,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (29,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (30,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (31,25,'_menu_item_url','http://velaris-university.local/');
INSERT INTO `wp_postmeta` VALUES (32,25,'_menu_item_orphaned','1589700095');
INSERT INTO `wp_postmeta` VALUES (33,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (34,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (35,26,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (36,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (37,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (38,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (39,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (40,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (41,26,'_menu_item_orphaned','1589700095');
INSERT INTO `wp_postmeta` VALUES (42,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (43,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (44,27,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (45,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (46,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (47,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (48,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (49,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (50,27,'_menu_item_orphaned','1589700095');
INSERT INTO `wp_postmeta` VALUES (51,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (52,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (53,28,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (54,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (55,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (56,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (57,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (58,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (59,28,'_menu_item_orphaned','1589700095');
INSERT INTO `wp_postmeta` VALUES (60,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (61,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (62,29,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (63,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (64,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (65,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (66,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (67,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (68,29,'_menu_item_orphaned','1589700095');
INSERT INTO `wp_postmeta` VALUES (69,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (70,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (71,30,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (72,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (73,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (74,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (75,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (76,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (77,30,'_menu_item_orphaned','1589700095');
INSERT INTO `wp_postmeta` VALUES (78,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (79,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (80,31,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (81,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (82,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (83,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (84,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (85,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (86,31,'_menu_item_orphaned','1589700095');
INSERT INTO `wp_postmeta` VALUES (87,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (88,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (89,32,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (90,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (91,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (92,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (93,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (94,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (95,32,'_menu_item_orphaned','1589700095');
INSERT INTO `wp_postmeta` VALUES (96,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (97,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (98,33,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (99,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (100,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (101,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (102,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (103,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (104,33,'_menu_item_orphaned','1589700130');
INSERT INTO `wp_postmeta` VALUES (105,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (106,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (107,34,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (108,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (109,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (110,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (111,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (112,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (113,34,'_menu_item_orphaned','1589700130');
INSERT INTO `wp_postmeta` VALUES (114,35,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (115,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (116,35,'_menu_item_object_id','35');
INSERT INTO `wp_postmeta` VALUES (117,35,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (118,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (119,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (120,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (121,35,'_menu_item_url','http://velaris-university.local/');
INSERT INTO `wp_postmeta` VALUES (122,35,'_menu_item_orphaned','1589700148');
INSERT INTO `wp_postmeta` VALUES (123,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (124,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (125,36,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (126,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (127,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (128,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (129,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (130,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (132,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (133,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (134,37,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (135,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (136,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (137,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (139,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (140,37,'_menu_item_orphaned','1589700148');
INSERT INTO `wp_postmeta` VALUES (141,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (142,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (143,38,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (144,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (145,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (146,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (147,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (148,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (149,38,'_menu_item_orphaned','1589700148');
INSERT INTO `wp_postmeta` VALUES (150,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (151,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (152,39,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (153,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (154,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (155,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (156,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (157,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (158,39,'_menu_item_orphaned','1589700148');
INSERT INTO `wp_postmeta` VALUES (159,40,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (160,40,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (161,40,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (162,40,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (163,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (164,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (165,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (166,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (168,41,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (169,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (170,41,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (171,41,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (172,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (173,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (174,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (175,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (176,41,'_menu_item_orphaned','1589700148');
INSERT INTO `wp_postmeta` VALUES (177,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (178,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (179,42,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (180,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (181,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (182,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (183,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (184,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (185,42,'_menu_item_orphaned','1589700148');
INSERT INTO `wp_postmeta` VALUES (186,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (187,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (188,43,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (189,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (190,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (191,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (192,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (193,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (195,44,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (196,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (197,44,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (198,44,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (199,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (200,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (201,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (202,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (204,45,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (205,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (206,45,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (207,45,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (208,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (209,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (210,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (211,45,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (213,46,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (214,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (215,46,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (216,46,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (217,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (218,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (219,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (220,46,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (222,47,'_edit_lock','1589711455:1');
INSERT INTO `wp_postmeta` VALUES (223,49,'_edit_lock','1589780173:1');
INSERT INTO `wp_postmeta` VALUES (224,2,'_edit_lock','1589712857:1');
INSERT INTO `wp_postmeta` VALUES (225,51,'_edit_lock','1589713658:1');
INSERT INTO `wp_postmeta` VALUES (227,51,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (228,51,'_wp_trash_meta_time','1589713809');
INSERT INTO `wp_postmeta` VALUES (229,51,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (230,54,'_edit_lock','1589859791:1');
INSERT INTO `wp_postmeta` VALUES (237,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (238,1,'_wp_trash_meta_time','1589713917');
INSERT INTO `wp_postmeta` VALUES (239,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (240,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (241,57,'_edit_lock','1589780006:1');
INSERT INTO `wp_postmeta` VALUES (252,5,'_wp_old_slug','test-post');
INSERT INTO `wp_postmeta` VALUES (253,5,'_wp_old_date','2020-05-16');
INSERT INTO `wp_postmeta` VALUES (254,60,'_edit_lock','1589860443:1');
INSERT INTO `wp_postmeta` VALUES (257,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (260,57,'_wp_old_date','2020-05-17');
INSERT INTO `wp_postmeta` VALUES (263,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (266,54,'_wp_old_date','2020-05-17');
INSERT INTO `wp_postmeta` VALUES (267,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (268,64,'_edit_lock','1590308186:1');
INSERT INTO `wp_postmeta` VALUES (269,64,'_wp_old_date','2020-05-18');
INSERT INTO `wp_postmeta` VALUES (270,65,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (271,65,'_edit_lock','1589894373:1');
INSERT INTO `wp_postmeta` VALUES (272,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (273,66,'_edit_lock','1590148896:1');
INSERT INTO `wp_postmeta` VALUES (274,65,'_wp_old_date','2020-05-18');
INSERT INTO `wp_postmeta` VALUES (275,64,'_wp_old_slug','general-meeting-of-college-of-arts-and-letters');
INSERT INTO `wp_postmeta` VALUES (286,65,'event-date','July 21st 2020');
INSERT INTO `wp_postmeta` VALUES (287,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (288,73,'_edit_lock','1589866101:1');
INSERT INTO `wp_postmeta` VALUES (289,66,'event_date','20200613');
INSERT INTO `wp_postmeta` VALUES (290,66,'_event_date','field_5ec3624aae24c');
INSERT INTO `wp_postmeta` VALUES (291,65,'event_date','20200306');
INSERT INTO `wp_postmeta` VALUES (292,65,'_event_date','field_5ec3624aae24c');
INSERT INTO `wp_postmeta` VALUES (293,64,'event_date','20200910');
INSERT INTO `wp_postmeta` VALUES (294,64,'_event_date','field_5ec3624aae24c');
INSERT INTO `wp_postmeta` VALUES (295,65,'_wp_old_date','2020-05-03');
INSERT INTO `wp_postmeta` VALUES (296,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (297,75,'_edit_lock','1589895483:1');
INSERT INTO `wp_postmeta` VALUES (298,75,'event_date','20201211');
INSERT INTO `wp_postmeta` VALUES (299,75,'_event_date','field_5ec3624aae24c');
INSERT INTO `wp_postmeta` VALUES (300,64,'_wp_old_date','2020-04-12');
INSERT INTO `wp_postmeta` VALUES (301,75,'_wp_old_date','2020-12-19');
INSERT INTO `wp_postmeta` VALUES (302,76,'_edit_lock','1589961750:1');
INSERT INTO `wp_postmeta` VALUES (303,78,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (304,78,'_edit_lock','1589962309:1');
INSERT INTO `wp_postmeta` VALUES (305,78,'event_date','20191017');
INSERT INTO `wp_postmeta` VALUES (306,78,'_event_date','field_5ec3624aae24c');
INSERT INTO `wp_postmeta` VALUES (307,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (308,79,'_edit_lock','1589962342:1');
INSERT INTO `wp_postmeta` VALUES (309,79,'event_date','20190808');
INSERT INTO `wp_postmeta` VALUES (310,79,'_event_date','field_5ec3624aae24c');
INSERT INTO `wp_postmeta` VALUES (311,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (312,80,'_edit_lock','1589962399:1');
INSERT INTO `wp_postmeta` VALUES (313,80,'event_date','20181231');
INSERT INTO `wp_postmeta` VALUES (314,80,'_event_date','field_5ec3624aae24c');
INSERT INTO `wp_postmeta` VALUES (315,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (316,81,'_edit_lock','1590059482:1');
INSERT INTO `wp_postmeta` VALUES (317,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (318,82,'_edit_lock','1590059501:1');
INSERT INTO `wp_postmeta` VALUES (319,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (320,83,'_edit_lock','1590059524:1');
INSERT INTO `wp_postmeta` VALUES (321,84,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (322,84,'_edit_lock','1590227452:1');
INSERT INTO `wp_postmeta` VALUES (323,66,'related_programs','a:2:{i:0;s:2:\"82\";i:1;s:2:\"81\";}');
INSERT INTO `wp_postmeta` VALUES (324,66,'_related_programs','field_5ec667bcbc53b');
INSERT INTO `wp_postmeta` VALUES (325,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (326,87,'_edit_lock','1590308036:1');
INSERT INTO `wp_postmeta` VALUES (327,88,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (328,88,'_edit_lock','1590308055:1');
INSERT INTO `wp_postmeta` VALUES (329,88,'related_programs','a:1:{i:0;s:2:\"81\";}');
INSERT INTO `wp_postmeta` VALUES (330,88,'_related_programs','field_5ec667bcbc53b');
INSERT INTO `wp_postmeta` VALUES (331,89,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (332,89,'_edit_lock','1590308079:1');
INSERT INTO `wp_postmeta` VALUES (333,89,'related_programs','a:2:{i:0;s:2:\"82\";i:1;s:2:\"83\";}');
INSERT INTO `wp_postmeta` VALUES (334,89,'_related_programs','field_5ec667bcbc53b');
INSERT INTO `wp_postmeta` VALUES (335,89,'_wp_old_slug','dr-leonard-hofstadter');
INSERT INTO `wp_postmeta` VALUES (338,91,'_wp_attached_file','2020/05/howard.jpg');
INSERT INTO `wp_postmeta` VALUES (339,91,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:360;s:6:\"height\";i:450;s:4:\"file\";s:18:\"2020/05/howard.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"howard-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"howard-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:22;s:2:\"x2\";i:360;s:2:\"y2\";i:382;s:14:\"original_width\";i:360;s:15:\"original_height\";i:450;}}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:18:\"howard-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:63;s:2:\"x2\";i:360;s:2:\"y2\";i:297;s:14:\"original_width\";i:360;s:15:\"original_height\";i:450;}}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:18:\"howard-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:14;s:1:\"y\";i:18;s:2:\"x2\";i:326;s:2:\"y2\";i:441;s:14:\"original_width\";i:360;s:15:\"original_height\";i:450;}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (340,88,'_thumbnail_id','91');
INSERT INTO `wp_postmeta` VALUES (341,93,'_wp_attached_file','2020/05/amy.jpg');
INSERT INTO `wp_postmeta` VALUES (342,93,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:661;s:6:\"height\";i:744;s:4:\"file\";s:15:\"2020/05/amy.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"amy-267x300.jpg\";s:5:\"width\";i:267;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"amy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:13;s:1:\"y\";i:4;s:2:\"x2\";i:647;s:2:\"y2\";i:639;s:14:\"original_width\";i:661;s:15:\"original_height\";i:744;}}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:15:\"amy-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:44;s:2:\"x2\";i:661;s:2:\"y2\";i:474;s:14:\"original_width\";i:661;s:15:\"original_height\";i:744;}}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:15:\"amy-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:66;s:1:\"y\";i:7;s:2:\"x2\";i:583;s:2:\"y2\";i:707;s:14:\"original_width\";i:661;s:15:\"original_height\";i:744;}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (343,89,'_thumbnail_id','93');
INSERT INTO `wp_postmeta` VALUES (344,94,'_wp_attached_file','2020/05/sheldon.png');
INSERT INTO `wp_postmeta` VALUES (345,94,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:680;s:6:\"height\";i:842;s:4:\"file\";s:19:\"2020/05/sheldon.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sheldon-242x300.png\";s:5:\"width\";i:242;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"sheldon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:2;s:2:\"x2\";i:680;s:2:\"y2\";i:682;s:14:\"original_width\";i:680;s:15:\"original_height\";i:842;}}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:19:\"sheldon-400x260.png\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:87;s:2:\"x2\";i:680;s:2:\"y2\";i:529;s:14:\"original_width\";i:680;s:15:\"original_height\";i:842;}}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:19:\"sheldon-480x650.png\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (346,87,'_thumbnail_id','94');
INSERT INTO `wp_postmeta` VALUES (347,87,'related_programs','a:2:{i:0;s:2:\"95\";i:1;s:2:\"81\";}');
INSERT INTO `wp_postmeta` VALUES (348,87,'_related_programs','field_5ec667bcbc53b');
INSERT INTO `wp_postmeta` VALUES (349,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (350,95,'_edit_lock','1590236026:1');
INSERT INTO `wp_postmeta` VALUES (351,96,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (352,96,'_edit_lock','1590303739:1');
INSERT INTO `wp_postmeta` VALUES (353,99,'_wp_attached_file','2020/05/field.jpg');
INSERT INTO `wp_postmeta` VALUES (354,99,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:17:\"2020/05/field.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:276;s:2:\"x2\";i:1919;s:2:\"y2\";i:724;s:14:\"original_width\";i:1920;s:15:\"original_height\";i:1280;}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (355,89,'page_banner_subtitle','Amy  is Sheldon\'s wife and has a Ph.D. in Neurobiology.');
INSERT INTO `wp_postmeta` VALUES (356,89,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (357,89,'page_banner_background_image','99');
INSERT INTO `wp_postmeta` VALUES (358,89,'_page_banner_background_image','field_5eca1b99040fb');
INSERT INTO `wp_postmeta` VALUES (359,88,'page_banner_subtitle','An aerospace engineer who got his Masters at MIT. He goes into space, training as an astronaut and serving as a payload specialist.');
INSERT INTO `wp_postmeta` VALUES (360,88,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (361,88,'page_banner_background_image','99');
INSERT INTO `wp_postmeta` VALUES (362,88,'_page_banner_background_image','field_5eca1b99040fb');
INSERT INTO `wp_postmeta` VALUES (363,87,'page_banner_subtitle',' He is a theoretical physicist researching quantum mechanics and string theory, and despite his IQ of 187, he finds many routine aspects of social situations difficult to grasp. ');
INSERT INTO `wp_postmeta` VALUES (364,87,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (365,87,'page_banner_background_image','99');
INSERT INTO `wp_postmeta` VALUES (366,87,'_page_banner_background_image','field_5eca1b99040fb');
INSERT INTO `wp_postmeta` VALUES (369,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (370,13,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (371,13,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (372,13,'page_banner_background_image','103');
INSERT INTO `wp_postmeta` VALUES (373,13,'_page_banner_background_image','field_5eca1b99040fb');
INSERT INTO `wp_postmeta` VALUES (374,102,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (375,102,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (376,102,'page_banner_background_image','101');
INSERT INTO `wp_postmeta` VALUES (377,102,'_page_banner_background_image','field_5eca1b99040fb');
INSERT INTO `wp_postmeta` VALUES (378,103,'_wp_attached_file','2020/05/campus.jpg');
INSERT INTO `wp_postmeta` VALUES (379,103,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:18:\"2020/05/campus.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"campus-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"campus-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"campus-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"campus-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"campus-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:18:\"campus-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:18:\"campus-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:19:\"campus-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (380,104,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (381,104,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (382,104,'page_banner_background_image','103');
INSERT INTO `wp_postmeta` VALUES (383,104,'_page_banner_background_image','field_5eca1b99040fb');
INSERT INTO `wp_postmeta` VALUES (384,105,'_wp_attached_file','2020/05/starlight.jpg');
INSERT INTO `wp_postmeta` VALUES (385,105,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:21:\"2020/05/starlight.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"starlight-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"starlight-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"starlight-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"starlight-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"starlight-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"starlight-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"starlight-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:22:\"starlight-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:793;s:2:\"x2\";i:1919;s:2:\"y2\";i:1240;s:14:\"original_width\";i:1920;s:15:\"original_height\";i:1280;}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (386,64,'page_banner_subtitle','Sample subtitle lorem');
INSERT INTO `wp_postmeta` VALUES (387,64,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (388,64,'page_banner_background_image','105');
INSERT INTO `wp_postmeta` VALUES (389,64,'_page_banner_background_image','field_5eca1b99040fb');
INSERT INTO `wp_postmeta` VALUES (390,64,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (391,64,'_related_programs','field_5ec667bcbc53b');
INSERT INTO `wp_postmeta` VALUES (392,106,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (393,106,'_edit_lock','1590573347:1');
INSERT INTO `wp_postmeta` VALUES (396,106,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (397,106,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (398,106,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (399,106,'_page_banner_background_image','field_5eca1b99040fb');
INSERT INTO `wp_postmeta` VALUES (400,107,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (401,107,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (402,107,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (403,107,'_page_banner_background_image','field_5eca1b99040fb');
INSERT INTO `wp_postmeta` VALUES (404,106,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (405,106,'_wp_trash_meta_time','1590573496');
INSERT INTO `wp_postmeta` VALUES (406,106,'_wp_desired_post_slug','biology');
INSERT INTO `wp_postmeta` VALUES (407,108,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (408,108,'_edit_lock','1590574969:1');
INSERT INTO `wp_postmeta` VALUES (411,108,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (412,108,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (413,108,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (414,108,'_page_banner_background_image','field_5eca1b99040fb');
INSERT INTO `wp_postmeta` VALUES (415,109,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (416,109,'_page_banner_subtitle','field_5eca1b81040fa');
INSERT INTO `wp_postmeta` VALUES (417,109,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (418,109,'_page_banner_background_image','field_5eca1b99040fb');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-05-16 06:45:37','2020-05-16 06:45:37','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2020-05-17 11:11:57','2020-05-17 11:11:57','',0,'http://velaris-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-05-16 06:45:37','2020-05-16 06:45:37','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://velaris-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-05-16 06:45:37','2020-05-16 06:45:37','',0,'http://velaris-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-05-16 06:45:37','2020-05-16 06:45:37','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://velaris-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-05-17 03:28:32','2020-05-17 03:28:32','',0,'http://velaris-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-05-12 10:15:18','2020-05-12 10:15:18','Nostra litora condimentum faucibus neque fames tristique diam, lectus ridiculus cum iaculis purus aliquet hac risus, lacus morbi fermentum id massa viverra. Nulla hac leo risus parturient magnis maecenas eleifend quam platea felis dapibus, turpis congue nam enim dis penatibus vestibulum himenaeos dictum mus. Tortor inceptos sociosqu tincidunt lacinia maecenas ridiculus eu natoque per duis pulvinar, tempor cursus aptent risus class ad netus rhoncus dictum.','Test Lorem Ipsum','','publish','open','open','','test-lorem','','','2020-05-17 15:05:37','2020-05-17 15:05:37','',0,'http://velaris-university.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-05-16 10:37:18','2020-05-16 10:37:18','Nostra litora condimentum faucibus neque fames tristique diam, lectus ridiculus cum iaculis purus aliquet hac risus, lacus morbi fermentum id massa viverra. Nulla hac leo risus parturient magnis maecenas eleifend quam platea felis dapibus, turpis congue nam enim dis penatibus vestibulum himenaeos dictum mus. Tortor inceptos sociosqu tincidunt lacinia maecenas ridiculus eu natoque per duis pulvinar, tempor cursus aptent risus class ad netus rhoncus dictum.','Test Post','','inherit','closed','closed','','5-revision-v1','','','2020-05-16 10:37:18','2020-05-16 10:37:18','',5,'http://velaris-university.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-05-16 10:37:58','2020-05-16 10:37:58','Mattis tincidunt aliquam ac accumsan natoque, tellus primis iaculis ultricies, netus bibendum morbi cras. Euismod sociis at duis sociosqu mauris dictumst libero lectus iaculis posuere, odio auctor lobortis dapibus sagittis luctus neque blandit porttitor primis id, ornare maecenas nostra conubia porta montes massa est ridiculus. Aliquam pretium posuere euismod accumsan lectus fames, mollis eros praesent elementum lobortis, nisi maecenas neque pulvinar metus.','Sample Post','','publish','open','open','','sample-post','','','2020-05-17 15:02:59','2020-05-17 15:02:59','',0,'http://velaris-university.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-05-16 10:37:58','2020-05-16 10:37:58','Mattis tincidunt aliquam ac accumsan natoque, tellus primis iaculis ultricies, netus bibendum morbi cras. Euismod sociis at duis sociosqu mauris dictumst libero lectus iaculis posuere, odio auctor lobortis dapibus sagittis luctus neque blandit porttitor primis id, ornare maecenas nostra conubia porta montes massa est ridiculus. Aliquam pretium posuere euismod accumsan lectus fames, mollis eros praesent elementum lobortis, nisi maecenas neque pulvinar metus.','Sample Post','','inherit','closed','closed','','7-revision-v1','','','2020-05-16 10:37:58','2020-05-16 10:37:58','',7,'http://velaris-university.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-05-16 10:48:16','2020-05-16 10:48:16','Dignissim sociosqu nisi enim ridiculus pellentesque fringilla, auctor quisque class interdum rhoncus eu, duis nulla nam porttitor himenaeos. Ligula mi pellentesque aliquam himenaeos magna dignissim suscipit ut, aenean vehicula vulputate mauris habitasse curae. Non primis ante hendrerit congue convallis vitae proin, mus lobortis inceptos habitant pellentesque lacinia luctus feugiat, rutrum eu metus litora sagittis suspendisse. Pellentesque aliquet non scelerisque vestibulum habitasse id tincidunt a, lacus feugiat felis mattis curae dictumst cubilia eros, cras per in augue class donec blandit.','Lorem Ipsum Test','','publish','closed','closed','','lorem-ipsum','','','2020-05-17 05:56:49','2020-05-17 05:56:49','',0,'http://velaris-university.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-05-16 10:48:16','2020-05-16 10:48:16','Dignissim sociosqu nisi enim ridiculus pellentesque fringilla, auctor quisque class interdum rhoncus eu, duis nulla nam porttitor himenaeos. Ligula mi pellentesque aliquam himenaeos magna dignissim suscipit ut, aenean vehicula vulputate mauris habitasse curae. Non primis ante hendrerit congue convallis vitae proin, mus lobortis inceptos habitant pellentesque lacinia luctus feugiat, rutrum eu metus litora sagittis suspendisse. Pellentesque aliquet non scelerisque vestibulum habitasse id tincidunt a, lacus feugiat felis mattis curae dictumst cubilia eros, cras per in augue class donec blandit.','LOREM IPSUM','','inherit','closed','closed','','9-revision-v1','','','2020-05-16 10:48:16','2020-05-16 10:48:16','',9,'http://velaris-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-05-17 03:28:32','2020-05-17 03:28:32','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://velaris-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-05-17 03:28:32','2020-05-17 03:28:32','',3,'http://velaris-university.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-05-17 05:48:47','2020-05-17 05:48:47','<!-- wp:paragraph -->\r\n<p>Ornare euismod purus commodo nisl iaculis aenean sed pharetra imperdiet habitant inceptos, ad hendrerit phasellus laoreet porttitor quisque fusce dis fermentum ultricies scelerisque, neque vel suspendisse eu nisi malesuada volutpat nunc cursus viverra. Urna diam habitant primis penatibus aliquet praesent maecenas eget mus donec sem, vel et nulla vivamus leo rutrum hac eros volutpat. Maecenas mattis sagittis purus aenean torquent nam, eu curae tempor magnis inceptos laoreet auctor, dapibus neque hac convallis vel.</p>\r\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-05-24 07:30:38','2020-05-24 07:30:38','',0,'http://velaris-university.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-05-17 05:48:47','2020-05-17 05:48:47','<!-- wp:paragraph -->\n<p>Ornare euismod purus commodo nisl iaculis aenean sed pharetra imperdiet habitant inceptos, ad hendrerit phasellus laoreet porttitor quisque fusce dis fermentum ultricies scelerisque, neque vel suspendisse eu nisi malesuada volutpat nunc cursus viverra. Urna diam habitant primis penatibus aliquet praesent maecenas eget mus donec sem, vel et nulla vivamus leo rutrum hac eros volutpat. Maecenas mattis sagittis purus aenean torquent nam, eu curae tempor magnis inceptos laoreet auctor, dapibus neque hac convallis vel.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','13-revision-v1','','','2020-05-17 05:48:47','2020-05-17 05:48:47','',13,'http://velaris-university.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-05-17 05:49:29','2020-05-17 05:49:29','<!-- wp:paragraph -->\n<p>This is the privacy policy content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce blandit imperdiet proin dictum orci arcu phasellus at ac enim curabitur tincidunt nec tortor, tempor maecenas purus felis aenean rhoncus sodales justo facilisi ultricies eros potenti suscipit. Felis urna ultricies enim primis bibendum ornare nisi maecenas lacinia dignissim, massa netus pellentesque fames accumsan mi tempor id auctor venenatis, consequat parturient porta curae cubilia etiam sed mattis posuere. Feugiat pretium pellentesque ante porttitor condimentum dignissim torquent, class diam blandit augue fringilla penatibus sagittis risus, ornare pharetra libero sed duis et. Gravida tincidunt fusce suspendisse nisl luctus lectus integer vulputate, vitae arcu accumsan sem elementum porta mollis scelerisque habitasse, at platea faucibus curae nostra non nam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Viverra tristique ac consequat arcu curae non quam egestas class accumsan cursus, vivamus ullamcorper pulvinar duis est dapibus eu metus condimentum vestibulum, euismod velit habitasse nisl a leo mauris dignissim aenean quis. Interdum taciti pharetra malesuada dui senectus est feugiat magna ultrices pretium, ullamcorper et luctus cursus parturient quisque cum leo porta. Accumsan commodo nunc vivamus viverra sem ac vitae iaculis magna, torquent tincidunt aliquam vehicula neque scelerisque tempus ridiculus tristique, potenti montes sed porta posuere quis netus congue. Torquent cubilia ornare curabitur turpis eget, fames litora vel malesuada fusce, rutrum feugiat parturient iaculis.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','closed','','privacy-policy','','','2020-05-17 05:50:07','2020-05-17 05:50:07','',0,'http://velaris-university.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-05-17 05:49:29','2020-05-17 05:49:29','<!-- wp:paragraph -->\n<p>This is the privacy policy content.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','15-revision-v1','','','2020-05-17 05:49:29','2020-05-17 05:49:29','',15,'http://velaris-university.local/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-05-17 05:50:07','2020-05-17 05:50:07','<!-- wp:paragraph -->\n<p>This is the privacy policy content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fusce blandit imperdiet proin dictum orci arcu phasellus at ac enim curabitur tincidunt nec tortor, tempor maecenas purus felis aenean rhoncus sodales justo facilisi ultricies eros potenti suscipit. Felis urna ultricies enim primis bibendum ornare nisi maecenas lacinia dignissim, massa netus pellentesque fames accumsan mi tempor id auctor venenatis, consequat parturient porta curae cubilia etiam sed mattis posuere. Feugiat pretium pellentesque ante porttitor condimentum dignissim torquent, class diam blandit augue fringilla penatibus sagittis risus, ornare pharetra libero sed duis et. Gravida tincidunt fusce suspendisse nisl luctus lectus integer vulputate, vitae arcu accumsan sem elementum porta mollis scelerisque habitasse, at platea faucibus curae nostra non nam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Viverra tristique ac consequat arcu curae non quam egestas class accumsan cursus, vivamus ullamcorper pulvinar duis est dapibus eu metus condimentum vestibulum, euismod velit habitasse nisl a leo mauris dignissim aenean quis. Interdum taciti pharetra malesuada dui senectus est feugiat magna ultrices pretium, ullamcorper et luctus cursus parturient quisque cum leo porta. Accumsan commodo nunc vivamus viverra sem ac vitae iaculis magna, torquent tincidunt aliquam vehicula neque scelerisque tempus ridiculus tristique, potenti montes sed porta posuere quis netus congue. Torquent cubilia ornare curabitur turpis eget, fames litora vel malesuada fusce, rutrum feugiat parturient iaculis.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','15-revision-v1','','','2020-05-17 05:50:07','2020-05-17 05:50:07','',15,'http://velaris-university.local/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-05-17 05:56:49','2020-05-17 05:56:49','Dignissim sociosqu nisi enim ridiculus pellentesque fringilla, auctor quisque class interdum rhoncus eu, duis nulla nam porttitor himenaeos. Ligula mi pellentesque aliquam himenaeos magna dignissim suscipit ut, aenean vehicula vulputate mauris habitasse curae. Non primis ante hendrerit congue convallis vitae proin, mus lobortis inceptos habitant pellentesque lacinia luctus feugiat, rutrum eu metus litora sagittis suspendisse. Pellentesque aliquet non scelerisque vestibulum habitasse id tincidunt a, lacus feugiat felis mattis curae dictumst cubilia eros, cras per in augue class donec blandit.','Lorem Ipsum Test','','inherit','closed','closed','','9-revision-v1','','','2020-05-17 05:56:49','2020-05-17 05:56:49','',9,'http://velaris-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-05-17 06:07:03','2020-05-17 06:07:03','<!-- wp:paragraph -->\n<p>This a children page.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Condimentum potenti egestas est rutrum dapibus phasellus orci nascetur, mi pharetra fringilla cum nostra nisl dui consequat interdum, penatibus pretium metus diam dis curae natoque. Penatibus congue vestibulum platea leo rutrum neque porta, primis orci habitant pretium morbi scelerisque id, duis bibendum nam ultrices luctus facilisis. Aenean commodo tempus litora est viverra nulla fames torquent non, proin lacinia nisl dignissim placerat malesuada pellentesque phasellus, duis sollicitudin nullam dui parturient vulputate aliquet metus.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2020-05-17 07:06:21','2020-05-17 07:06:21','',13,'http://velaris-university.local/?page_id=19',1,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-05-17 06:07:03','2020-05-17 06:07:03','<!-- wp:paragraph -->\n<p>This a children page.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Condimentum potenti egestas est rutrum dapibus phasellus orci nascetur, mi pharetra fringilla cum nostra nisl dui consequat interdum, penatibus pretium metus diam dis curae natoque. Penatibus congue vestibulum platea leo rutrum neque porta, primis orci habitant pretium morbi scelerisque id, duis bibendum nam ultrices luctus facilisis. Aenean commodo tempus litora est viverra nulla fames torquent non, proin lacinia nisl dignissim placerat malesuada pellentesque phasellus, duis sollicitudin nullam dui parturient vulputate aliquet metus.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','19-revision-v1','','','2020-05-17 06:07:03','2020-05-17 06:07:03','',19,'http://velaris-university.local/19-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-05-17 06:07:47','2020-05-17 06:07:47','<!-- wp:paragraph -->\n<p>This is a children page.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dis faucibus eget praesent nibh dictumst libero, aliquet pharetra ac rutrum inceptos, interdum vestibulum hac morbi sagittis. Aliquet tortor laoreet taciti et posuere nascetur mi scelerisque, ornare duis vel condimentum vivamus natoque pharetra. Posuere quam cursus mus aptent platea, sagittis etiam vehicula fames nisi, mi primis proin maecenas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dictum habitant molestie viverra velit leo pretium euismod curabitur condimentum accumsan, gravida venenatis cum lacinia pharetra inceptos at ultricies tortor, montes eget tincidunt vestibulum senectus iaculis nascetur est primis. Auctor pharetra cubilia etiam nec enim leo at rutrum dui pellentesque imperdiet justo lobortis, ridiculus varius vitae tempus ac suspendisse eget mattis torquent non tincidunt. Volutpat odio condimentum dui cum commodo nulla imperdiet iaculis viverra molestie nostra accumsan sociis placerat, dapibus diam scelerisque aliquet laoreet bibendum fames ligula himenaeos mattis eget feugiat nam.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2020-05-17 07:06:25','2020-05-17 07:06:25','',13,'http://velaris-university.local/?page_id=21',2,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-05-17 06:07:47','2020-05-17 06:07:47','<!-- wp:paragraph -->\n<p>This is a children page.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dis faucibus eget praesent nibh dictumst libero, aliquet pharetra ac rutrum inceptos, interdum vestibulum hac morbi sagittis. Aliquet tortor laoreet taciti et posuere nascetur mi scelerisque, ornare duis vel condimentum vivamus natoque pharetra. Posuere quam cursus mus aptent platea, sagittis etiam vehicula fames nisi, mi primis proin maecenas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dictum habitant molestie viverra velit leo pretium euismod curabitur condimentum accumsan, gravida venenatis cum lacinia pharetra inceptos at ultricies tortor, montes eget tincidunt vestibulum senectus iaculis nascetur est primis. Auctor pharetra cubilia etiam nec enim leo at rutrum dui pellentesque imperdiet justo lobortis, ridiculus varius vitae tempus ac suspendisse eget mattis torquent non tincidunt. Volutpat odio condimentum dui cum commodo nulla imperdiet iaculis viverra molestie nostra accumsan sociis placerat, dapibus diam scelerisque aliquet laoreet bibendum fames ligula himenaeos mattis eget feugiat nam.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','21-revision-v1','','','2020-05-17 06:07:47','2020-05-17 06:07:47','',21,'http://velaris-university.local/21-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-05-17 06:18:47','2020-05-17 06:18:47','<!-- wp:paragraph -->\n<p>Elementum malesuada per mauris aenean eleifend facilisi congue, montes lectus non cras venenatis tempus euismod suscipit, quam ultrices sem integer primis ac. Volutpat sem pharetra augue platea suscipit hac congue lobortis donec sociosqu porttitor per rutrum fames, mi mollis mattis magnis gravida libero hendrerit condimentum tincidunt nulla quam etiam nec. Parturient ante mauris tellus ullamcorper lacinia orci erat inceptos condimentum augue primis convallis nullam, cursus suscipit sem risus class ultricies sagittis porttitor laoreet odio hac facilisi. Duis tempor egestas litora rhoncus potenti est euismod per, imperdiet ornare nascetur tellus habitant et mauris molestie primis, sollicitudin nisl condimentum porta id sed habitasse.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2020-05-17 06:18:47','2020-05-17 06:18:47','',15,'http://velaris-university.local/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-05-17 06:18:47','2020-05-17 06:18:47','<!-- wp:paragraph -->\n<p>Elementum malesuada per mauris aenean eleifend facilisi congue, montes lectus non cras venenatis tempus euismod suscipit, quam ultrices sem integer primis ac. Volutpat sem pharetra augue platea suscipit hac congue lobortis donec sociosqu porttitor per rutrum fames, mi mollis mattis magnis gravida libero hendrerit condimentum tincidunt nulla quam etiam nec. Parturient ante mauris tellus ullamcorper lacinia orci erat inceptos condimentum augue primis convallis nullam, cursus suscipit sem risus class ultricies sagittis porttitor laoreet odio hac facilisi. Duis tempor egestas litora rhoncus potenti est euismod per, imperdiet ornare nascetur tellus habitant et mauris molestie primis, sollicitudin nisl condimentum porta id sed habitasse.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','23-revision-v1','','','2020-05-17 06:18:47','2020-05-17 06:18:47','',23,'http://velaris-university.local/23-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-05-17 07:21:35','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-05-17 07:21:35','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-05-17 07:21:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:21:35','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-05-17 07:21:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:21:35','0000-00-00 00:00:00','',13,'http://velaris-university.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-05-17 07:21:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:21:35','0000-00-00 00:00:00','',13,'http://velaris-university.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-05-17 07:21:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:21:35','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-05-17 07:21:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:21:35','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-05-17 07:21:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:21:35','0000-00-00 00:00:00','',15,'http://velaris-university.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-05-17 07:21:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:21:35','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-05-17 07:22:10','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:22:10','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-05-17 07:22:10','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:22:10','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-05-17 07:22:28','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-05-17 07:22:28','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-05-17 07:23:52','2020-05-17 07:23:52',' ','','','publish','closed','closed','','36','','','2020-05-17 07:23:52','2020-05-17 07:23:52','',0,'http://velaris-university.local/?p=36',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-05-17 07:22:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:22:28','0000-00-00 00:00:00','',13,'http://velaris-university.local/?p=37',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-05-17 07:22:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:22:28','0000-00-00 00:00:00','',13,'http://velaris-university.local/?p=38',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-05-17 07:22:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:22:28','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=39',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-05-17 07:23:52','2020-05-17 07:23:52',' ','','','publish','closed','closed','','40','','','2020-05-17 07:23:52','2020-05-17 07:23:52','',0,'http://velaris-university.local/?p=40',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-05-17 07:22:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:22:28','0000-00-00 00:00:00','',15,'http://velaris-university.local/?p=41',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-05-17 07:22:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-05-17 07:22:28','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=42',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-05-17 07:30:12','2020-05-17 07:30:12',' ','','','publish','closed','closed','','43','','','2020-05-17 07:30:12','2020-05-17 07:30:12','',0,'http://velaris-university.local/?p=43',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-05-17 07:30:12','2020-05-17 07:30:12',' ','','','publish','closed','closed','','44','','','2020-05-17 07:30:12','2020-05-17 07:30:12','',0,'http://velaris-university.local/?p=44',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-05-17 07:30:32','2020-05-17 07:30:32',' ','','','publish','closed','closed','','45','','','2020-05-17 07:30:32','2020-05-17 07:30:32','',15,'http://velaris-university.local/?p=45',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-05-17 07:30:32','2020-05-17 07:30:32',' ','','','publish','closed','closed','','46','','','2020-05-17 07:30:32','2020-05-17 07:30:32','',0,'http://velaris-university.local/?p=46',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-05-17 10:33:12','2020-05-17 10:33:12','','Home','','publish','closed','closed','','home','','','2020-05-17 10:33:12','2020-05-17 10:33:12','',0,'http://velaris-university.local/?page_id=47',0,'page','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-05-17 10:33:12','2020-05-17 10:33:12','','Home','','inherit','closed','closed','','47-revision-v1','','','2020-05-17 10:33:12','2020-05-17 10:33:12','',47,'http://velaris-university.local/47-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-05-17 10:34:03','2020-05-17 10:34:03','','Blog','','publish','closed','closed','','blog','','','2020-05-17 10:34:03','2020-05-17 10:34:03','',0,'http://velaris-university.local/?page_id=49',0,'page','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-05-17 10:34:03','2020-05-17 10:34:03','','Blog','','inherit','closed','closed','','49-revision-v1','','','2020-05-17 10:34:03','2020-05-17 10:34:03','',49,'http://velaris-university.local/49-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-05-17 11:10:09','2020-05-17 11:10:09','<!-- wp:paragraph -->\n<p>Volutpat libero lobortis faucibus ridiculus justo cubilia malesuada massa, congue tempor porta non eros ornare vulputate. Duis auctor primis lacus pharetra eget volutpat euismod, fringilla montes eleifend imperdiet leo ornare, convallis fusce diam sociis augue fermentum. Mauris fusce justo non facilisis bibendum magnis, ad per dignissim fermentum consequat quis imperdiet, habitasse venenatis curabitur proin in.</p>\n<!-- /wp:paragraph -->','We won an Awards!','','trash','closed','closed','','__trashed','','','2020-05-17 11:10:09','2020-05-17 11:10:09','',0,'http://velaris-university.local/?page_id=51',0,'page','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-05-17 10:58:28','2020-05-17 10:58:28','<!-- wp:paragraph -->\n<p>Volutpat libero lobortis faucibus ridiculus justo cubilia malesuada massa, congue tempor porta non eros ornare vulputate. Duis auctor primis lacus pharetra eget volutpat euismod, fringilla montes eleifend imperdiet leo ornare, convallis fusce diam sociis augue fermentum. Mauris fusce justo non facilisis bibendum magnis, ad per dignissim fermentum consequat quis imperdiet, habitasse venenatis curabitur proin in.</p>\n<!-- /wp:paragraph -->','We won an Awards!','','inherit','closed','closed','','51-revision-v1','','','2020-05-17 10:58:28','2020-05-17 10:58:28','',51,'http://velaris-university.local/51-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-05-16 11:10:48','2020-05-16 11:10:48','<!-- wp:paragraph -->\n<p>Volutpat libero lobortis faucibus ridiculus justo cubilia malesuada massa, congue tempor porta non eros ornare vulputate. Duis auctor primis lacus pharetra eget volutpat euismod, fringilla montes eleifend imperdiet leo ornare, convallis fusce diam sociis augue fermentum. Mauris fusce justo non facilisis bibendum magnis, ad per dignissim fermentum consequat quis imperdiet, habitasse venenatis curabitur proin in.</p>\n<!-- /wp:paragraph -->','We Won an Award!','Our school won another award this year.','publish','open','open','','we-won-an-award','','','2020-05-19 03:45:31','2020-05-19 03:45:31','',0,'http://velaris-university.local/?p=54',0,'post','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-05-17 11:10:48','2020-05-17 11:10:48','<!-- wp:paragraph -->\n<p>Volutpat libero lobortis faucibus ridiculus justo cubilia malesuada massa, congue tempor porta non eros ornare vulputate. Duis auctor primis lacus pharetra eget volutpat euismod, fringilla montes eleifend imperdiet leo ornare, convallis fusce diam sociis augue fermentum. Mauris fusce justo non facilisis bibendum magnis, ad per dignissim fermentum consequat quis imperdiet, habitasse venenatis curabitur proin in.</p>\n<!-- /wp:paragraph -->','We Won an Award!','','inherit','closed','closed','','54-revision-v1','','','2020-05-17 11:10:48','2020-05-17 11:10:48','',54,'http://velaris-university.local/54-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-05-17 11:11:57','2020-05-17 11:11:57','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-05-17 11:11:57','2020-05-17 11:11:57','',1,'http://velaris-university.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-05-16 12:02:35','2020-05-16 12:02:35','<!-- wp:paragraph -->\n<p>Portus engorgio evanesco charm totalus evanesco. Drought mortis ennervate quietus reducio avada. Evanesco curse disapparate quietus stupefy aguamenti petrificus imperio imperio. Totalus engorgio engorgio finite incarcerous. Locomotor funnunculus momentum expelliarmus. Curse alohomora sonorus funnunculus bulbadox stupefy. Leviosa imperio rennervate.</p>\n<!-- /wp:paragraph -->','Spirit in the Hustler','','publish','open','open','','spirit-in-the-hustler','','','2020-05-18 05:33:26','2020-05-18 05:33:26','',0,'http://velaris-university.local/?p=57',0,'post','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-05-17 15:02:35','2020-05-17 15:02:35','<!-- wp:paragraph -->\n<p>Portus engorgio evanesco charm totalus evanesco. Drought mortis ennervate quietus reducio avada. Evanesco curse disapparate quietus stupefy aguamenti petrificus imperio imperio. Totalus engorgio engorgio finite incarcerous. Locomotor funnunculus momentum expelliarmus. Curse alohomora sonorus funnunculus bulbadox stupefy. Leviosa imperio rennervate.</p>\n<!-- /wp:paragraph -->','Spirit in the Hustler','','inherit','closed','closed','','57-revision-v1','','','2020-05-17 15:02:35','2020-05-17 15:02:35','',57,'http://velaris-university.local/57-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-05-17 15:05:37','2020-05-17 15:05:37','Nostra litora condimentum faucibus neque fames tristique diam, lectus ridiculus cum iaculis purus aliquet hac risus, lacus morbi fermentum id massa viverra. Nulla hac leo risus parturient magnis maecenas eleifend quam platea felis dapibus, turpis congue nam enim dis penatibus vestibulum himenaeos dictum mus. Tortor inceptos sociosqu tincidunt lacinia maecenas ridiculus eu natoque per duis pulvinar, tempor cursus aptent risus class ad netus rhoncus dictum.','Test Lorem Ipsum','','inherit','closed','closed','','5-revision-v1','','','2020-05-17 15:05:37','2020-05-17 15:05:37','',5,'http://velaris-university.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-05-17 15:06:32','2020-05-17 15:06:32','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sectumsempra incarcerous totalus rictusempra aparecium specialis. Alohomora immobilus funnunculus patronum. Mortis impedimenta alohomora hover nox evanesca. Funnunculus aparecium expecto legilimens ennervate quietus. Impedimenta kedavra momentum ennervate legilimens charm mortis. Pesternomi dissendium petrificus serpensortia aparecium legilimens. Alohomora aparecium leviosa engorgio lumos evanesco alohomora.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','The Smooth Shores','This is a sample test excerpt for blog.','publish','open','open','','the-smooth-shores','','','2020-05-19 03:56:26','2020-05-19 03:56:26','',0,'http://velaris-university.local/?p=60',0,'post','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-05-17 15:06:32','2020-05-17 15:06:32','<!-- wp:paragraph -->\n<p>This is a test post.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sectumsempra incarcerous totalus rictusempra aparecium specialis. Alohomora immobilus funnunculus patronum. Mortis impedimenta alohomora hover nox evanesca. Funnunculus aparecium expecto legilimens ennervate quietus. Impedimenta kedavra momentum ennervate legilimens charm mortis. Pesternomi dissendium petrificus serpensortia aparecium legilimens. Alohomora aparecium leviosa engorgio lumos evanesco alohomora.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','The Smooth Shores','','inherit','closed','closed','','60-revision-v1','','','2020-05-17 15:06:32','2020-05-17 15:06:32','',60,'http://velaris-university.local/60-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-05-16 10:44:51','2020-05-16 10:44:51','Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.\r\n\r\nNori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko chicory celtuce parsley jícama salsify.','Starlight Party','This is an excerpt.','publish','closed','closed','','poetry-day','','','2020-05-24 08:18:49','2020-05-24 08:18:49','',0,'http://velaris-university.local/?post_type=event&#038;p=64',0,'event','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-02-03 08:45:51','2020-02-03 08:45:51','This is a test event post.\r\n\r\nQuis eu officia pig shankle flank culpa reprehenderit pork belly. Tongue shoulder landjaeger, chislic labore bresaola laborum cupim tri-tip pancetta elit. Consectetur picanha irure, pork chop beef cupidatat bacon. Enim ut burgdoggen ullamco labore capicola filet mignon in ut eu. Doner pancetta venison nostrud pork loin. Esse fatback sirloin aliquip biltong ut landjaeger fugiat drumstick duis prosciutto tempor ipsum ut. Bacon in et capicola. Biltong pork bresaola boudin. Doner biltong chislic pancetta. Ipsum tenderloin ullamco.','Math Meetup','Math Meetup for students who love math.','publish','closed','closed','','math-meetup','','','2020-05-19 13:19:33','2020-05-19 13:19:33','',0,'http://velaris-university.local/?post_type=event&#038;p=65',0,'event','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-05-18 08:00:50','2020-05-18 08:00:50','Smelly cheese ricotta fromage. Brie taleggio pepper jack manchego gouda roquefort cheese slices fromage. Chalk and cheese monterey jack pecorino emmental fromage cheese on toast red leicester jarlsberg. Halloumi cheese triangles stinking bishop gouda say cheese cow lancashire monterey jack. Monterey jack. Cheddar fondue cheese and biscuits. Mozzarella pepper jack fromage chalk and cheese cow smelly cheese port-salut croque monsieur. Cheese and biscuits who moved my cheese emmental cheese and wine port-salut mascarpone cheese.','Cheese Eating Challenge','','publish','closed','closed','','cheese-eating-challenge','','','2020-05-22 12:03:27','2020-05-22 12:03:27','',0,'http://velaris-university.local/?post_type=event&#038;p=66',0,'event','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-05-19 03:45:31','2020-05-19 03:45:31','<!-- wp:paragraph -->\n<p>Volutpat libero lobortis faucibus ridiculus justo cubilia malesuada massa, congue tempor porta non eros ornare vulputate. Duis auctor primis lacus pharetra eget volutpat euismod, fringilla montes eleifend imperdiet leo ornare, convallis fusce diam sociis augue fermentum. Mauris fusce justo non facilisis bibendum magnis, ad per dignissim fermentum consequat quis imperdiet, habitasse venenatis curabitur proin in.</p>\n<!-- /wp:paragraph -->','We Won an Award!','Our school won another award this year.','inherit','closed','closed','','54-revision-v1','','','2020-05-19 03:45:31','2020-05-19 03:45:31','',54,'http://velaris-university.local/54-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-05-19 03:47:15','2020-05-19 03:47:15','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sectumsempra incarcerous totalus rictusempra aparecium specialis. Alohomora immobilus funnunculus patronum. Mortis impedimenta alohomora hover nox evanesca. Funnunculus aparecium expecto legilimens ennervate quietus. Impedimenta kedavra momentum ennervate legilimens charm mortis. Pesternomi dissendium petrificus serpensortia aparecium legilimens. Alohomora aparecium leviosa engorgio lumos evanesco alohomora.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','The Smooth Shores','This is a test post.','inherit','closed','closed','','60-revision-v1','','','2020-05-19 03:47:15','2020-05-19 03:47:15','',60,'http://velaris-university.local/60-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-05-19 03:50:20','2020-05-19 03:50:20','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sectumsempra incarcerous totalus rictusempra aparecium specialis. Alohomora immobilus funnunculus patronum. Mortis impedimenta alohomora hover nox evanesca. Funnunculus aparecium expecto legilimens ennervate quietus. Impedimenta kedavra momentum ennervate legilimens charm mortis. Pesternomi dissendium petrificus serpensortia aparecium legilimens. Alohomora aparecium leviosa engorgio lumos evanesco alohomora.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','The Smooth Shores','This is a sample test post for blog.','inherit','closed','closed','','60-revision-v1','','','2020-05-19 03:50:20','2020-05-19 03:50:20','',60,'http://velaris-university.local/60-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-05-19 03:56:07','2020-05-19 03:56:07','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sectumsempra incarcerous totalus rictusempra aparecium specialis. Alohomora immobilus funnunculus patronum. Mortis impedimenta alohomora hover nox evanesca. Funnunculus aparecium expecto legilimens ennervate quietus. Impedimenta kedavra momentum ennervate legilimens charm mortis. Pesternomi dissendium petrificus serpensortia aparecium legilimens. Alohomora aparecium leviosa engorgio lumos evanesco alohomora.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','The Smooth Shores','This is a sample test excerpt post for blog.','inherit','closed','closed','','60-revision-v1','','','2020-05-19 03:56:07','2020-05-19 03:56:07','',60,'http://velaris-university.local/60-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-05-19 03:56:26','2020-05-19 03:56:26','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sectumsempra incarcerous totalus rictusempra aparecium specialis. Alohomora immobilus funnunculus patronum. Mortis impedimenta alohomora hover nox evanesca. Funnunculus aparecium expecto legilimens ennervate quietus. Impedimenta kedavra momentum ennervate legilimens charm mortis. Pesternomi dissendium petrificus serpensortia aparecium legilimens. Alohomora aparecium leviosa engorgio lumos evanesco alohomora.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','The Smooth Shores','This is a sample test excerpt for blog.','inherit','closed','closed','','60-revision-v1','','','2020-05-19 03:56:26','2020-05-19 03:56:26','',60,'http://velaris-university.local/60-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-05-19 04:37:52','2020-05-19 04:37:52','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5ec362369856a','','','2020-05-19 04:37:52','2020-05-19 04:37:52','',0,'http://velaris-university.local/?post_type=acf-field-group&#038;p=73',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-05-19 04:37:52','2020-05-19 04:37:52','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"F j, Y\";s:13:\"return_format\";s:6:\"F j, Y\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5ec3624aae24c','','','2020-05-19 04:37:52','2020-05-19 04:37:52','',73,'http://velaris-university.local/?post_type=acf-field&p=74',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-04-19 13:35:20','2020-04-19 13:35:20','This is a test event.\r\n\r\nScelerisque curae ornare imperdiet eget sollicitudin fermentum faucibus convallis fames habitant luctus potenti rhoncus, class penatibus magnis dignissim cursus phasellus tellus risus etiam porta elementum. Turpis pellentesque viverra orci habitant proin laoreet vivamus hendrerit blandit magna, erat varius eleifend scelerisque nullam fringilla ultricies quis maecenas id quam, elementum rhoncus ac phasellus neque torquent vitae sem malesuada. Scelerisque bibendum lacinia maecenas viverra per donec, netus tempor risus tellus justo odio, orci parturient nunc erat nulla.','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2020-05-19 13:38:03','2020-05-19 13:38:03','',0,'http://velaris-university.local/?post_type=event&#038;p=75',0,'event','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-05-20 08:04:53','2020-05-20 08:04:53','','Past Events','','publish','closed','closed','','past-events','','','2020-05-20 08:04:53','2020-05-20 08:04:53','',0,'http://velaris-university.local/?page_id=76',0,'page','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-05-20 08:04:53','2020-05-20 08:04:53','','Past Events','','inherit','closed','closed','','76-revision-v1','','','2020-05-20 08:04:53','2020-05-20 08:04:53','',76,'http://velaris-university.local/76-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-05-20 08:14:11','2020-05-20 08:14:11','Hi this is a past event. Fringilla volutpat tristique penatibus laoreet diam turpis cubilia, ligula placerat magnis porta magna odio, curabitur ante senectus erat convallis cras.  Duis curabitur placerat vehicula natoque condimentum orci laoreet eget gravida parturient velit, ultrices consequat netus taciti arcu penatibus augue tortor pharetra nec.','Past Event','','publish','closed','closed','','past-event','','','2020-05-20 08:14:11','2020-05-20 08:14:11','',0,'http://velaris-university.local/?post_type=event&#038;p=78',0,'event','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-05-20 08:14:45','2020-05-20 08:14:45','Lorem ipsum dolor sit amet consectetur adipiscing elit nibh cum duis elementum, malesuada neque nostra dui sociosqu tempor proin ac orci nec vestibulum, congue donec aptent euismod purus lectus scelerisque id vehicula taciti. Fringilla volutpat tristique penatibus laoreet diam turpis cubilia, ligula placerat magnis porta magna odio, curabitur ante senectus erat convallis cras. Duis curabitur placerat vehicula natoque condimentum orci laoreet eget gravida parturient velit, ultrices consequat netus taciti arcu penatibus augue tortor pharetra nec.','Convallis Lorem','','publish','closed','closed','','convallis-lorem','','','2020-05-20 08:14:45','2020-05-20 08:14:45','',0,'http://velaris-university.local/?post_type=event&#038;p=79',0,'event','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-05-20 08:15:42','2020-05-20 08:15:42','Vel eget duis nisi pulvinar metus tellus ullamcorper varius, nec platea diam enim volutpat condimentum justo dignissim, gravida dictumst mauris sapien rhoncus integer fringilla. Vulputate convallis quam laoreet at rhoncus volutpat tempor velit purus, aptent lacus scelerisque dui ad vel ullamcorper felis, nunc ultricies semper tempus penatibus orci sodales ac. Nascetur morbi cubilia aptent est consequat vitae parturient nunc felis, nostra neque ullamcorper sollicitudin volutpat congue nec malesuada, dis nisi eros netus ad iaculis dapibus suscipit.','New Year 2018','','publish','closed','closed','','new-year-2018','','','2020-05-20 08:15:42','2020-05-20 08:15:42','',0,'http://velaris-university.local/?post_type=event&#038;p=80',0,'event','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-05-21 11:13:45','2020-05-21 11:13:45','Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line. Podcasting operational change management inside of workflows to establish a framework.','Math','','publish','closed','closed','','math','','','2020-05-21 11:13:45','2020-05-21 11:13:45','',0,'http://velaris-university.local/?post_type=program&#038;p=81',0,'program','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-05-21 11:14:04','2020-05-21 11:14:04','Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment. Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.','Biology','','publish','closed','closed','','biology','','','2020-05-21 11:14:04','2020-05-21 11:14:04','',0,'http://velaris-university.local/?post_type=program&#038;p=82',0,'program','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-05-21 11:14:27','2020-05-21 11:14:27','Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on cross-platform integration. Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.  Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition.','English','','publish','closed','closed','','english','','','2020-05-21 11:14:27','2020-05-21 11:14:27','',0,'http://velaris-university.local/?post_type=program&#038;p=83',0,'program','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-05-21 11:40:37','2020-05-21 11:40:37','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Program','related-program','publish','closed','closed','','group_5ec667a4bec2c','','','2020-05-23 09:53:10','2020-05-23 09:53:10','',0,'http://velaris-university.local/?post_type=acf-field-group&#038;p=84',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-05-21 11:40:37','2020-05-21 11:40:37','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_programs','publish','closed','closed','','field_5ec667bcbc53b','','','2020-05-21 11:42:49','2020-05-21 11:42:49','',84,'http://velaris-university.local/?post_type=acf-field&#038;p=85',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-05-23 09:40:51','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-05-23 09:40:51','0000-00-00 00:00:00','',0,'http://velaris-university.local/?p=86',0,'post','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-05-23 09:47:39','2020-05-23 09:47:39','Mauris ornare, urna ut molestie cursus, lorem odio maximus lorem, rutrum dapibus odio massa a dui. Nullam id lectus ac odio viverra dictum. Aliquam nec dapibus magna, vel hendrerit elit. Aliquam convallis eleifend commodo. Maecenas maximus mi vel metus auctor, pulvinar finibus ante posuere. Maecenas eu iaculis magna, ut convallis erat. Praesent facilisis, sapien at mattis congue, elit orci malesuada enim, nec blandit lorem quam non odio. Etiam vitae leo a turpis suscipit volutpat ac at ante. Donec efficitur mollis accumsan. Nam et tristique felis, vitae semper quam. Praesent aliquet lacus sit amet lacus tincidunt volutpat. Nullam laoreet vel sem at condimentum. Cras nec tincidunt diam. Etiam tristique quis urna quis laoreet. Curabitur vitae tincidunt lectus, eget dapibus ipsum.','Dr. Sheldon Cooper','','publish','closed','closed','','dr-sheldon-cooper','','','2020-05-24 08:16:18','2020-05-24 08:16:18','',0,'http://velaris-university.local/?post_type=professor&#038;p=87',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-05-23 09:48:30','2020-05-23 09:48:30','A sample Professor. Duis consequat dui mollis velit placerat, non gravida lectus auctor. Vivamus eget ultrices neque, vitae dapibus lectus. Duis pellentesque aliquet euismod. Proin laoreet neque a tempor luctus. Curabitur malesuada ipsum vel dapibus mattis. Sed feugiat et felis vitae vulputate. Ut sagittis, nibh ac feugiat volutpat, ipsum dui sodales lorem, ut sagittis libero lorem at tortor. Fusce vel lobortis magna. Mauris nec libero sed lectus malesuada porta. Morbi volutpat suscipit hendrerit. Nunc sit amet fringilla diam. Donec imperdiet, odio sit amet varius fringilla, lacus diam euismod lacus, id efficitur justo ex ac erat. Curabitur varius in turpis eget fermentum. Vivamus sagittis consectetur nisl. Vivamus pellentesque augue scelerisque pharetra aliquet. Integer posuere bibendum eros, in vehicula lectus rhoncus in. Ut egestas porttitor lacinia. Duis interdum mattis felis quis luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Engr. Howard Wolowitz','','publish','closed','closed','','engr-howard-wolowitz','','','2020-05-24 08:16:35','2020-05-24 08:16:35','',0,'http://velaris-university.local/?post_type=professor&#038;p=88',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-05-23 10:12:19','2020-05-23 10:12:19','Sample Three. Vivamus dictum iaculis accumsan. Pellentesque malesuada lacus at dui laoreet, in varius diam iaculis. Sed viverra nunc a blandit fermentum. Vestibulum fringilla gravida est ac consectetur. Integer varius tellus nibh, eget rutrum nisl eleifend et. Integer in eleifend velit, eu fringilla lorem. Morbi sed pharetra ipsum. Praesent mollis tincidunt magna ut maximus. Praesent id ipsum porta, tincidunt nunc semper, dapibus leo. Nullam sit amet imperdiet velit, a tincidunt elit. Cras ut tellus lectus. Etiam sollicitudin, lectus a consequat ornare, enim diam imperdiet ex, et aliquam nibh risus in urna. Morbi nec leo quam. Cras a mauris rhoncus, euismod risus eget, auctor lectus. In ac lacinia quam. Nullam id maximus dui, at consectetur nunc.','Dr. Amy Farrah Fowler','','publish','closed','closed','','dr-amy-fowler','','','2020-05-24 08:16:54','2020-05-24 08:16:54','',0,'http://velaris-university.local/?post_type=professor&#038;p=89',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-05-23 12:07:43','2020-05-23 12:07:43','','howard','','inherit','open','closed','','howard','','','2020-05-23 12:07:43','2020-05-23 12:07:43','',88,'http://velaris-university.local/wp-content/uploads/2020/05/howard.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-05-23 12:09:36','2020-05-23 12:09:36','<img class=\"alignnone size-medium wp-image-91\" src=\"http://velaris-university.local/wp-content/uploads/2020/05/howard-240x300.jpg\" alt=\"\" width=\"240\" height=\"300\" />A sample Professor. Duis consequat dui mollis velit placerat, non gravida lectus auctor. Vivamus eget ultrices neque, vitae dapibus lectus. Duis pellentesque aliquet euismod. Proin laoreet neque a tempor luctus. Curabitur malesuada ipsum vel dapibus mattis. Sed feugiat et felis vitae vulputate. Ut sagittis, nibh ac feugiat volutpat, ipsum dui sodales lorem, ut sagittis libero lorem at tortor. Fusce vel lobortis magna. Mauris nec libero sed lectus malesuada porta. Morbi volutpat suscipit hendrerit. Nunc sit amet fringilla diam. Donec imperdiet, odio sit amet varius fringilla, lacus diam euismod lacus, id efficitur justo ex ac erat. Curabitur varius in turpis eget fermentum. Vivamus sagittis consectetur nisl. Vivamus pellentesque augue scelerisque pharetra aliquet. Integer posuere bibendum eros, in vehicula lectus rhoncus in. Ut egestas porttitor lacinia. Duis interdum mattis felis quis luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Engr. Howard Wolowitz','','inherit','closed','closed','','88-autosave-v1','','','2020-05-23 12:09:36','2020-05-23 12:09:36','',88,'http://velaris-university.local/88-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-05-23 12:14:02','2020-05-23 12:14:02','','amy','','inherit','open','closed','','amy','','','2020-05-23 12:14:02','2020-05-23 12:14:02','',89,'http://velaris-university.local/wp-content/uploads/2020/05/amy.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-05-23 12:14:28','2020-05-23 12:14:28','','sheldon','','inherit','open','closed','','sheldon','','','2020-05-23 12:14:28','2020-05-23 12:14:28','',87,'http://velaris-university.local/wp-content/uploads/2020/05/sheldon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-05-23 12:16:08','2020-05-23 12:16:08','Platea aenean phasellus pharetra elementum taciti massa praesent interdum, urna pulvinar justo mi inceptos sed erat nisl, blandit sociis cum rutrum iaculis ornare aliquet. Etiam lacus montes tempus pretium sollicitudin enim cras a ad faucibus dignissim ornare parturient, feugiat habitasse convallis iaculis id nibh auctor elementum fusce hendrerit fringilla. Montes faucibus aenean ultricies magna metus eu pulvinar, porta egestas mollis justo torquent nec netus, semper imperdiet tristique curabitur quisque dis.','Physics','','publish','closed','closed','','physics','','','2020-05-23 12:16:08','2020-05-23 12:16:08','',0,'http://velaris-university.local/?post_type=program&#038;p=95',0,'program','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-05-24 07:04:39','2020-05-24 07:04:39','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Page Banner','page-banner','publish','closed','closed','','group_5eca1b339b41c','','','2020-05-24 07:04:40','2020-05-24 07:04:40','',0,'http://velaris-university.local/?post_type=acf-field-group&#038;p=96',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-05-24 07:04:40','2020-05-24 07:04:40','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_5eca1b81040fa','','','2020-05-24 07:04:40','2020-05-24 07:04:40','',96,'http://velaris-university.local/?post_type=acf-field&p=97',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-05-24 07:04:40','2020-05-24 07:04:40','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_5eca1b99040fb','','','2020-05-24 07:04:40','2020-05-24 07:04:40','',96,'http://velaris-university.local/?post_type=acf-field&p=98',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-05-24 07:08:52','2020-05-24 07:08:52','','field','','inherit','open','closed','','field','','','2020-05-24 07:08:52','2020-05-24 07:08:52','',89,'http://velaris-university.local/wp-content/uploads/2020/05/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (100,1,'2020-05-24 07:18:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-05-24 07:18:34','0000-00-00 00:00:00','',0,'http://velaris-university.local/?post_type=program&p=100',0,'program','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2020-05-24 07:29:28','2020-05-24 07:29:28','<!-- wp:paragraph -->\r\n<p>Ornare euismod purus commodo nisl iaculis aenean sed pharetra imperdiet habitant inceptos, ad hendrerit phasellus laoreet porttitor quisque fusce dis fermentum ultricies scelerisque, neque vel suspendisse eu nisi malesuada volutpat nunc cursus viverra. Urna diam habitant primis penatibus aliquet praesent maecenas eget mus donec sem, vel et nulla vivamus leo rutrum hac eros volutpat. Maecenas mattis sagittis purus aenean torquent nam, eu curae tempor magnis inceptos laoreet auctor, dapibus neque hac convallis vel.</p>\r\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','13-revision-v1','','','2020-05-24 07:29:28','2020-05-24 07:29:28','',13,'http://velaris-university.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2020-05-24 07:30:32','2020-05-24 07:30:32','','campus','','inherit','open','closed','','campus','','','2020-05-24 07:30:32','2020-05-24 07:30:32','',13,'http://velaris-university.local/wp-content/uploads/2020/05/campus.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (104,1,'2020-05-24 07:30:38','2020-05-24 07:30:38','<!-- wp:paragraph -->\r\n<p>Ornare euismod purus commodo nisl iaculis aenean sed pharetra imperdiet habitant inceptos, ad hendrerit phasellus laoreet porttitor quisque fusce dis fermentum ultricies scelerisque, neque vel suspendisse eu nisi malesuada volutpat nunc cursus viverra. Urna diam habitant primis penatibus aliquet praesent maecenas eget mus donec sem, vel et nulla vivamus leo rutrum hac eros volutpat. Maecenas mattis sagittis purus aenean torquent nam, eu curae tempor magnis inceptos laoreet auctor, dapibus neque hac convallis vel.</p>\r\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','13-revision-v1','','','2020-05-24 07:30:38','2020-05-24 07:30:38','',13,'http://velaris-university.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2020-05-24 08:15:17','2020-05-24 08:15:17','','starlight','','inherit','open','closed','','starlight','','','2020-05-24 08:15:17','2020-05-24 08:15:17','',64,'http://velaris-university.local/wp-content/uploads/2020/05/starlight.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (106,1,'2020-05-27 09:57:43','2020-05-27 09:57:43','lorem','Biology','','trash','open','open','','biology__trashed','','','2020-05-27 09:58:16','2020-05-27 09:58:16','',0,'http://velaris-university.local/?p=106',0,'post','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2020-05-27 09:57:43','2020-05-27 09:57:43','lorem','Biology','','inherit','closed','closed','','106-revision-v1','','','2020-05-27 09:57:43','2020-05-27 09:57:43','',106,'http://velaris-university.local/106-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2020-05-27 09:58:36','2020-05-27 09:58:36','Lorem Sample','Biology Is Cool','','publish','open','open','','biology-is-cool','','','2020-05-27 09:58:36','2020-05-27 09:58:36','',0,'http://velaris-university.local/?p=108',0,'post','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2020-05-27 09:58:36','2020-05-27 09:58:36','Lorem Sample','Biology Is Cool','','inherit','closed','closed','','108-revision-v1','','','2020-05-27 09:58:36','2020-05-27 09:58:36','',108,'http://velaris-university.local/108-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,6,0);
INSERT INTO `wp_term_relationships` VALUES (7,6,0);
INSERT INTO `wp_term_relationships` VALUES (36,2,0);
INSERT INTO `wp_term_relationships` VALUES (40,2,0);
INSERT INTO `wp_term_relationships` VALUES (43,4,0);
INSERT INTO `wp_term_relationships` VALUES (44,4,0);
INSERT INTO `wp_term_relationships` VALUES (45,3,0);
INSERT INTO `wp_term_relationships` VALUES (46,3,0);
INSERT INTO `wp_term_relationships` VALUES (54,5,0);
INSERT INTO `wp_term_relationships` VALUES (57,6,0);
INSERT INTO `wp_term_relationships` VALUES (60,6,0);
INSERT INTO `wp_term_relationships` VALUES (106,1,0);
INSERT INTO `wp_term_relationships` VALUES (108,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','Posts about our achievements!',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','Sample Posts for this Demo Project 😸',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Footer One','footer-one',0);
INSERT INTO `wp_terms` VALUES (4,'Footer Two','footer-two',0);
INSERT INTO `wp_terms` VALUES (5,'Awards','awards',0);
INSERT INTO `wp_terms` VALUES (6,'Sample','sample',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Aelin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','The lost princess and Queen of Terrasen, and the last surviving member of the Galathynius line.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','midnight');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"bba3c91d8abdf176aa2ac606785b0e2618d50d742c66d44347563be3b6be7507\";a:4:{s:10:\"expiration\";i:1590821162;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589611562;}s:64:\"b8710413526269a3ccba93496ff4ecbb49e2bc9600331e9e392d5fa2d81f704a\";a:4:{s:10:\"expiration\";i:1591007719;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589798119;}s:64:\"1dae08c92245db47fd4e291841fad08f569b5c68c8222afe49f1ecb4cb1cafa3\";a:4:{s:10:\"expiration\";i:1590745406;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1590572606;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','86');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (21,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_page','a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','hidetb=0&mfold=o&libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1590235824');
INSERT INTO `wp_usermeta` VALUES (25,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_professor','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_professor','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'aelin','$P$BofEzQYIntmlTq03eUYQ6/V0.lXtze1','aelin','chelzeasalvador@gmail.com','http://velaris-university.local','2020-05-16 06:45:37','',0,'Aelin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-29 15:33:37
