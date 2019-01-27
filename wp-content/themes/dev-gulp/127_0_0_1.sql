-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 27 jan 2019 om 21:36
-- Serverversie: 10.1.37-MariaDB
-- PHP-versie: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luhn-portfolio`
--
CREATE DATABASE IF NOT EXISTS `luhn-portfolio` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `luhn-portfolio`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_commentmeta`
--

CREATE TABLE `ev_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_comments`
--

CREATE TABLE `ev_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ev_comments`
--

INSERT INTO `ev_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Een WordPress commentator', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-22 11:51:42', '2019-01-22 11:51:42', 'Hoi, dit is een reactie.\nOm te beginnen met het beheren, bewerken en verwijderen van reacties ga je naar het reacties scherm op het dashboard.\nAvatars van auteurs komen van <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_links`
--

CREATE TABLE `ev_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_options`
--

CREATE TABLE `ev_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ev_options`
--

INSERT INTO `ev_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://luhn-portfolio.wordpress', 'yes'),
(2, 'home', 'http://luhn-portfolio.wordpress', 'yes'),
(3, 'blogname', 'Luhn', 'yes'),
(4, 'blogdescription', 'En nog een WordPress website', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lka.v.lv@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'luhn', 'yes'),
(41, 'stylesheet', 'luhn', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'ev_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'nl_BE', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1548622302;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1548633102;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1548676329;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1548694348;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1548159269;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(261, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/nl_BE/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"nl_BE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/nl_BE/wordpress-5.0.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1548590134;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-26 17:30:56\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/nl_BE.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(254, '_site_transient_timeout_theme_roots', '1548590169', 'no'),
(255, '_site_transient_theme_roots', 'a:2:{s:8:\"dev-gulp\";s:7:\"/themes\";s:4:\"luhn\";s:7:\"/themes\";}', 'no'),
(262, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1548590135;s:7:\"checked\";a:1:{s:4:\"luhn\";s:9:\"0.1 alpha\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(263, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1548613921;s:7:\"checked\";a:4:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:6:\"5.7.10\";s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:29:\"health-check/health-check.php\";s:5:\"1.2.5\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"health-check/health-check.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/health-check\";s:4:\"slug\";s:12:\"health-check\";s:6:\"plugin\";s:29:\"health-check/health-check.php\";s:11:\"new_version\";s:5:\"1.2.5\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/health-check/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/health-check.1.2.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/health-check/assets/icon-256x256.png?rev=1823210\";s:2:\"1x\";s:57:\"https://ps.w.org/health-check/assets/icon.svg?rev=1828244\";s:3:\"svg\";s:57:\"https://ps.w.org/health-check/assets/icon.svg?rev=1828244\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/health-check/assets/banner-1544x500.png?rev=1823210\";s:2:\"1x\";s:67:\"https://ps.w.org/health-check/assets/banner-772x250.png?rev=1823210\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(121, '_site_transient_timeout_browser_0ac1f9240df96b3586c220faef490724', '1548762729', 'no'),
(122, '_site_transient_browser_0ac1f9240df96b3586c220faef490724', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(137, 'current_theme', 'Luhn', 'yes'),
(138, 'theme_mods_luhn', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(177, '_site_transient_timeout_browser_dd20f421a8f5baa2b677979c5e3b487f', '1549039931', 'no'),
(178, '_site_transient_browser_dd20f421a8f5baa2b677979c5e3b487f', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"10.0\";s:8:\"platform\";s:6:\"iPhone\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(197, '_transient_timeout_plugin_slugs', '1548700418', 'no'),
(198, '_transient_plugin_slugs', 'a:4:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:29:\"health-check/health-check.php\";i:3;s:9:\"hello.php\";}', 'no'),
(199, 'recently_activated', 'a:2:{s:29:\"health-check/health-check.php\";i:1548614010;s:40:\"advanced-custom-fields-pro-5.7.9/acf.php\";i:1548514907;}', 'yes'),
(264, '_transient_timeout_acf_plugin_updates', '1548676538', 'no'),
(206, 'acf_version', '5.7.10', 'yes'),
(265, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:6:\"5.7.10\";}}', 'no'),
(231, '_transient_timeout_acf_plugin_info_pro', '1548600909', 'no'),
(232, '_transient_acf_plugin_info_pro', 'a:17:{s:4:\"name\";s:26:\"Advanced Custom Fields PRO\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:8:\"homepage\";s:37:\"https://www.advancedcustomfields.com/\";s:7:\"version\";s:6:\"5.7.10\";s:6:\"author\";s:13:\"Elliot Condon\";s:10:\"author_url\";s:28:\"http://www.elliotcondon.com/\";s:12:\"contributors\";s:12:\"elliotcondon\";s:8:\"requires\";s:5:\"4.4.0\";s:6:\"tested\";s:5:\"4.9.9\";s:4:\"tags\";a:90:{i:0;s:11:\"5.8.0-beta3\";i:1;s:11:\"5.8.0-beta2\";i:2;s:11:\"5.8.0-beta1\";i:3;s:5:\"5.7.9\";i:4;s:5:\"5.7.8\";i:5;s:5:\"5.7.7\";i:6;s:5:\"5.7.6\";i:7;s:5:\"5.7.5\";i:8;s:5:\"5.7.4\";i:9;s:5:\"5.7.3\";i:10;s:5:\"5.7.2\";i:11;s:5:\"5.7.1\";i:12;s:5:\"5.7.0\";i:13;s:5:\"5.6.9\";i:14;s:5:\"5.6.8\";i:15;s:5:\"5.6.7\";i:16;s:5:\"5.6.6\";i:17;s:5:\"5.6.5\";i:18;s:5:\"5.6.4\";i:19;s:5:\"5.6.3\";i:20;s:5:\"5.6.2\";i:21;s:6:\"5.6.10\";i:22;s:5:\"5.6.1\";i:23;s:11:\"5.6.0-beta2\";i:24;s:11:\"5.6.0-beta1\";i:25;s:9:\"5.6.0-RC2\";i:26;s:9:\"5.6.0-RC1\";i:27;s:5:\"5.6.0\";i:28;s:5:\"5.5.9\";i:29;s:5:\"5.5.7\";i:30;s:5:\"5.5.5\";i:31;s:5:\"5.5.3\";i:32;s:5:\"5.5.2\";i:33;s:6:\"5.5.14\";i:34;s:6:\"5.5.13\";i:35;s:6:\"5.5.12\";i:36;s:6:\"5.5.11\";i:37;s:6:\"5.5.10\";i:38;s:5:\"5.5.1\";i:39;s:5:\"5.5.0\";i:40;s:5:\"5.4.8\";i:41;s:5:\"5.4.7\";i:42;s:5:\"5.4.6\";i:43;s:5:\"5.4.5\";i:44;s:5:\"5.4.4\";i:45;s:5:\"5.4.3\";i:46;s:5:\"5.4.2\";i:47;s:5:\"5.4.1\";i:48;s:5:\"5.4.0\";i:49;s:5:\"5.3.9\";i:50;s:5:\"5.3.8\";i:51;s:5:\"5.3.7\";i:52;s:5:\"5.3.6\";i:53;s:5:\"5.3.5\";i:54;s:5:\"5.3.4\";i:55;s:5:\"5.3.3\";i:56;s:5:\"5.3.2\";i:57;s:6:\"5.3.10\";i:58;s:5:\"5.3.1\";i:59;s:5:\"5.3.0\";i:60;s:5:\"5.2.9\";i:61;s:5:\"5.2.8\";i:62;s:5:\"5.2.7\";i:63;s:5:\"5.2.6\";i:64;s:5:\"5.2.5\";i:65;s:5:\"5.2.4\";i:66;s:5:\"5.2.3\";i:67;s:5:\"5.2.2\";i:68;s:5:\"5.2.1\";i:69;s:5:\"5.2.0\";i:70;s:5:\"5.1.9\";i:71;s:5:\"5.1.8\";i:72;s:5:\"5.1.7\";i:73;s:5:\"5.1.6\";i:74;s:5:\"5.1.5\";i:75;s:5:\"5.1.4\";i:76;s:5:\"5.1.3\";i:77;s:5:\"5.1.2\";i:78;s:5:\"5.1.1\";i:79;s:5:\"5.1.0\";i:80;s:5:\"5.0.9\";i:81;s:5:\"5.0.8\";i:82;s:5:\"5.0.7\";i:83;s:5:\"5.0.6\";i:84;s:5:\"5.0.5\";i:85;s:5:\"5.0.4\";i:86;s:5:\"5.0.3\";i:87;s:5:\"5.0.2\";i:88;s:5:\"5.0.1\";i:89;s:5:\"5.0.0\";}s:6:\"tagged\";s:61:\"acf, advanced, custom, field, fields, form, repeater, content\";s:11:\"description\";s:1353:\"<p>Use the Advanced Custom Fields plugin to take full control of your WordPress edit screens & custom field data.</p>\n<p><strong>Add fields on demand.</strong> Our field builder allows you to quickly and easily add fields to WP edit screens with only the click of a few buttons!</p>\n<p><strong>Add them anywhere.</strong> Fields can be added all over WP including posts, users, taxonomy terms, media, comments and even custom options pages!</p>\n<p><strong>Show them everywhere.</strong> Load and display your custom field values in any theme template file with our hassle free developer friendly functions!</p>\n<h4>Features</h4>\n<ul>\n<li> Simple & Intuitive</li>\n<li> Powerful Functions</li>\n<li> Over 30 Field Types</li>\n<li> Extensive Documentation</li>\n<li> Millions of Users</li>\n</ul>\n<h4>Links</h4>\n<ul>\n<li> <a href=\"https://www.advancedcustomfields.com\">Website</a></li>\n<li> <a href=\"https://www.advancedcustomfields.com/resources/\">Documentation</a></li>\n<li> <a href=\"https://support.advancedcustomfields.com\">Support</a></li>\n<li> <a href=\"https://www.advancedcustomfields.com/pro/\">ACF PRO</a></li>\n</ul>\n<h4>PRO</h4>\n<p>The Advanced Custom Fields plugin is also available in a professional version which includes more fields, more functionality, and more flexibility! <a href=\"https://www.advancedcustomfields.com/pro/\">Learn more</a></p>\n\";s:12:\"installation\";s:508:\"<p>From your WordPress dashboard</p>\n<ol>\n<li> <strong>Visit</strong> Plugins > Add New</li>\n<li> <strong>Search</strong> for \"Advanced Custom Fields\"</li>\n<li> <strong>Activate</strong> Advanced Custom Fields from your Plugins page</li>\n<li> <strong>Click</strong> on the new menu item \"Custom Fields\" and create your first Custom Field Group!</li>\n<li> <strong>Read</strong> the documentation to <a href=\"https://www.advancedcustomfields.com/resources/getting-started-with-acf/\">get started</a></li>\n</ol>\n\";s:9:\"changelog\";s:6490:\"<h4>5.7.10</h4>\n<p><em>Release Date - 16 January 2019</em></p>\n<ul>\n<li> Fix - Fixed bug preventing metaboxes from saving if validation fails within Gutenberg.</li>\n<li> Fix - Fixed bug causing unload prompt to show incorrectly within Gutenberg.</li>\n<li> Fix - Fixed JS error when selecting taxonomy terms within Gutenberg.</li>\n<li> Fix - Fixed bug causing jQuery sortable issues within other plugins.</li>\n<li> Tweak - Improved loading translations by adding fallback from region to country when .mo file does not exit.</li>\n<li> Tweak - Improved punctuation throughout admin notices.</li>\n<li> Tweak - Improved performance and accuracy when loading a user field value.</li>\n<li> Dev - Added filter \'acf/get_locale\' to customize the locale used to load translations.</li>\n<li> Dev - Added filter \'acf/allow_unfiltered_html\' to customize if current user can save unfiltered HTML.</li>\n<li> Dev - Added new data storage functions <code>acf_register_store()</code> and <code>acf_get_store()</code>.</li>\n<li> Dev - Moved from .less to .scss and minified all css.</li>\n<li> i18n - Updated French translation thanks to Maxime Bernard-Jacquet.</li>\n<li> i18n - Updated Czech translation thanks to David Rychly.</li>\n</ul>\n<h4>5.7.9</h4>\n<p><em>Release Date - 17 December 2018</em></p>\n<ul>\n<li> Fix - Added custom metabox location (acf_after_title) compatibility with Gutenberg.</li>\n<li> Fix - Added dynamic metabox check compatibility with Gutenberg.</li>\n<li> Fix - Fixed bug causing required date picker fields to prevent form submit.</li>\n<li> Fix - Fixed bug preventing multi-input values from saving correctly within media modals.</li>\n<li> Fix - Fixed bug where <code>acf_form()</code> redirects to an incorrect URL for sub-sites.</li>\n<li> Fix - Fixed bug where breaking out of a sub <code>have_rows()</code> loop could produce undesired results.</li>\n<li> Dev - Added filter \'acf/connect_attachment_to_post\' to prevent connecting attachments to posts.</li>\n<li> Dev - Added JS filter \'google_map_autocomplete_args\' to customize Google Maps autocomplete settings.</li>\n</ul>\n<h4>5.7.8</h4>\n<p><em>Release Date - 7 December 2018</em></p>\n<ul>\n<li> Fix - Fixed vulnerability allowing author role to save unfiltered HTML values.</li>\n<li> Fix - Fixed all metaboxes appearing when editing a post in WP 5.0.</li>\n<li> i18n - Updated Polish translation thanks to Dariusz Zielonka.</li>\n<li> i18n - Updated Czech translation thanks to Veronika Hanzlíková.</li>\n<li> i18n - Update Turkish translation thanks to Emre Erkan.</li>\n<li> i18n - Updated Portuguese language thanks to Pedro Mendonça.</li>\n</ul>\n<h4>5.7.7</h4>\n<p><em>Release Date - 1 October 2018</em></p>\n<ul>\n<li> Fix - Fixed various plugin update issues.</li>\n<li> Tweak - Added \'language\' to Google Maps API url.</li>\n<li> Dev - Major improvements to the <code>acf.models.Postbox</code> model.</li>\n<li> Dev - Added JS filter \'check_screen_args\'.</li>\n<li> Dev - Added JS action \'check_screen_complete\'.</li>\n<li> Dev - Added action \'acf/options_page/submitbox_before_major_actions\'.</li>\n<li> Dev - Added action \'acf/options_page/submitbox_major_actions\'.</li>\n<li> i18n - Updated Portuguese language thanks to Pedro Mendonça</li>\n</ul>\n<h4>5.7.6</h4>\n<p><em>Release Date - 12 September 2018</em></p>\n<ul>\n<li> Fix - Fixed unload prompt not working.</li>\n<li> Dev - Reduced number of queries needed to populate the relationship field taxonomy filter.</li>\n<li> Dev - Added \'nav_menu_item_id\' and \'nav_menu_item_depth\' to get_field_groups() query.</li>\n<li> Dev - Reordered various actions and filters for more usefulness.</li>\n<li> i18n - Updated Polish language thanks to Dariusz Zielonka</li>\n</ul>\n<h4>5.7.5</h4>\n<p><em>Release Date - 6 September 2018</em></p>\n<ul>\n<li> Fix - Fixed bug causing multisite login redirect issues.</li>\n<li> Fix - Fixed bug causing validation issues in older versions of Firefox.</li>\n<li> Fix - Fixed bug causing duplicate Select2 instances when adding a widget via drag/drop.</li>\n<li> Dev - Improved WPML compatibility by using <code>$sitepress->get_current_language()</code> instead of <code>ICL_LANGUAGE_CODE</code>.</li>\n<li> Dev - Improved validation JS with new Validator model and logic.</li>\n</ul>\n<h4>5.7.4</h4>\n<p><em>Release Date - 30 August 2018</em></p>\n<ul>\n<li> Fix - Fixed bug causing field groups to disappear when selecting a taxonomy term with WPML active.</li>\n<li> Tweak - Added more Dark Mode styles.</li>\n<li> Tweak - Improved DB upgrade prompt, functions and AJAX logic.</li>\n<li> Tweak - Improved the \"What\'s New\" admin page seen after DB Upgrade.</li>\n<li> Dev - Added new location rules filters.</li>\n</ul>\n<h4>5.7.3</h4>\n<p><em>Release Date - 20 August 2018</em></p>\n<ul>\n<li> New - Added Dark Mode styles for the <a href=\"https://en-au.wordpress.org/plugins/dark-mode/\">Dark Mode Plugin</a>.</li>\n<li> New - Added \"Value Contains\" condition to the Select field type.</li>\n<li> New - Added support for the WooCommerce product type dropdown to trigger \"update metaboxes\".</li>\n<li> Tweak - Improved acf.screen model responsible for \"updating metaboxes\" when changing post data.</li>\n<li> Tweak - Removed user fields from the multisite \"Add New User\" page. </li>\n<li> Fix - Fixed bug preventing some tinymce customizations from working.</li>\n<li> Fix - Fixed JS bug throwing \"preference\" error in console.</li>\n<li> Dev - Added action \'acf/enqueue_uploader\' triggered after the hidden \"ACF Content\" editor is rendered.</li>\n</ul>\n<h4>5.7.2</h4>\n<p><em>Release Date - 6 August 2018</em></p>\n<ul>\n<li> Fix - Fixed bug preventing the Google Maps Field address from being customized.</li>\n<li> Fix - Improved logic to request and cache plugin update information.</li>\n<li> Fix - Fixed bug preventing JS initialization when editing widgets in accessibility mode.</li>\n<li> Fix - Added missing $parent argument to term_exists() function when adding a new term via taxonomy field popup.</li>\n<li> Fix - Fixed bug where nested Group Fields did not delete their values.</li>\n<li> Fix - Fixed JS error thrown by localStorage if cookies are not enabled.</li>\n<li> Dev - Bumped minimum WP version requirement to 4.4.</li>\n<li> Dev - Added action \'wp_nav_menu_item_custom_fields\' for compatibility with other plugins modifying the menu walker class.</li>\n<li> Dev - Added \'multiple\' to the allowed attributes for an email field.</li>\n<li> Dev - Added new ACF_Ajax class for upcoming features.</li>\n</ul>\n<h4>5.7.1</h4>\n<ul>\n<li> Core: Minor fixes and improvements</li>\n</ul>\n\";s:14:\"upgrade_notice\";s:505:\"<h4>5.2.7</h4>\n<ul>\n<li> Field class names have changed slightly in v5.2.7 from <code>field_type-{$type}</code> to <code>acf-field-{$type}</code>. This change was introduced to better optimize JS performance. The previous class names can be added back in with the following filter: https://www.advancedcustomfields.com/resources/acfcompatibility/</li>\n</ul>\n<h4>3.0.0</h4>\n<ul>\n<li> Editor is broken in WordPress 3.3</li>\n</ul>\n<h4>2.1.4</h4>\n<ul>\n<li> Adds post_id column back into acf_values</li>\n</ul>\n\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}', 'no'),
(271, '_transient_timeout_feed_8e64dca91181d71a34f358f23e985a77', '1548657098', 'no'),
(272, '_transient_feed_8e64dca91181d71a34f358f23e985a77', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:22:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Blog | Nederlands (België)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://nl-be.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Sun, 27 Jan 2019 18:09:25 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"nl-BE\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.1-beta2-44700\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"Introductie: Hoe kan je bijdragen aan WordPress?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://nl-be.wordpress.org/2018/12/19/introductie-hoe-kan-je-bijdragen-aan-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://nl-be.wordpress.org/2018/12/19/introductie-hoe-kan-je-bijdragen-aan-wordpress/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Dec 2018 10:47:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://nl-be.wordpress.org/?p=396\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:375:\"Zonder de bijdrage van duizenden vrijwilligers zou WordPress nooit geworden zijn wat het nu is: ‘s werelds meest gebruikte beheersysteem voor websites.Bijdragen aan WordPress is makkelijker dan je denkt. In dit artikel lees je wat je kan doen en waar je kan starten. Verschillende overkoepelende teams﻿ Op make.wordpress.org vind je een overzicht van alle teams [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Dave Loodts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4036:\"\n<p>Zonder de bijdrage van duizenden vrijwilligers zou WordPress nooit geworden zijn wat het nu is: ‘s werelds meest gebruikte beheersysteem voor websites.<br>Bijdragen aan WordPress is makkelijker dan je denkt.</p>\n\n\n\n<p>In dit artikel lees je wat je kan doen en waar je kan starten.<br></p>\n\n\n\n<h4><strong>Verschillende overkoepelende teams﻿</strong></h4>\n\n\n\n<p>Op <a href=\"https://make.wordpress.org/\">make.wordpress.org</a> vind je een overzicht van alle teams die aan WordPress bijdragen.<br>Het bekendste team is ‘Core’: zij werken aan de software. Maar er bestaan ook teams waarbij je helemaal geen programmeerkennis moet hebben om bij te dragen: bv documentatie, vertalingen, WordPress.tv, enz.<br>Iedereen kan dus meewerken aan WordPress.<br></p>\n\n\n\n<p>De communicatie per team gebeurd momenteel via 2 kanalen:<br>&#8211; via wordpress.org: elk team heeft zijn eigen subsite (bv documentatie: <a href=\"https://make.wordpress.org/docs/\">https://make.wordpress.org/docs/</a>)<br>&#8211; Via Slack: elk team heeft zijn eigen chatkanaal. Via Slack gebeurt de meeste interactie en ontvang je meestal het snelste antwoord op al jouw vragen betreffende ‘bijdragen aan WordPress’.<br>Meer info over WordPress op Slack. (<a href=\"https://wpbelgium.be/slack/\">https://wpbelgium.be/slack/</a>)</p>\n\n\n\n<p><br>De meeste teams hebben ook een wekelijkse meeting via Slack.<br>Deze meetings zijn voor iedereen toegankelijk en vrijblijvend. <br>Sluit je zeker eens aan bij een bepaalde meeting om mee te kijken en/of te participeren.</p>\n\n\n\n<h4><strong>Waarom zou je bijdragen aan WordPress?</strong></h4>\n\n\n\n<p>Bijdragen aan WordPress levert jou nieuwe kennis op én je helpt meteen anderen. Je leert ook nieuwe mensen kennen en maakt deel uit de WordPress Community.<br></p>\n\n\n\n<h4><strong>Hoeveel kan ik bijdragen aan WordPress?</strong></h4>\n\n\n\n<p>Dat beslis je volledig zelf.<br>Binnen WordPress bestaat het concept: Five for the future.<br>Dit concept bepaalt dat het geweldig zou zijn als iedereen 5% van z’n tijd doneert aan WordPress. Per persoon komt dit bijvoorbeeld neer op 2 uurtjes per week.<br>Elke bijdrage aan WordPress is fantastisch, hoe groot of klein ook.<br>Voel je niet verplicht maar weet dat zelfs 1 uurtje per week een grote impact kan hebben op langere termijn.<br></p>\n\n\n\n<p><strong>Engels als voertaal, maar ook lokale Nederlandstalige teams!</strong></p>\n\n\n\n<p>In de overkoepelende teams wordt hoofdzakelijk ‘Engels’ gesproken.<br>Maar er bestaan ook lokale Nederlandstalige teams die op zoek zijn naar hulp.<br><br><strong>Vertalingen</strong></p>\n\n\n\n<p>WordPress is vertaald naar Nederlands (België) en Nederlands.<br>Respectievelijk: nl_be en nl.<br>Beide teams zijn steeds op zoek naar vrijwilligers om WordPress, plugins en themes te vertalen van Engels naar Nederlands.<br>NL-BE: <a href=\"https://translate.wordpress.org/locale/nl-be\">https://translate.wordpress.org/locale/nl-be</a></p>\n\n\n\n<p>NL: <a href=\"https://translate.wordpress.org/locale/nl\">https://translate.wordpress.org/locale/nl</a><br></p>\n\n\n\n<p><strong>Community</strong></p>\n\n\n\n<p>Via dit team kan je bijdragen aan WordCamps en Meetups.<br>Meetups zijn avond-bijeenkomsten waarbij WordPress enthousiastelingen samenkomen én babbelen/bijleren over WordPress.<br></p>\n\n\n\n<p>WordCamps zijn conferenties over WordPress. <br>De meeste WordCamps hebben een aparte Contributor Day waarbij elk bijdrage-team vertegenwoordigd is. </p>\n\n\n\n<p></p>\n\n\n\n<h3><strong>Waar te starten met bijdragen?</strong></h3>\n\n\n\n<p>Aarzel nooit om vragen te stellen! Dat is belangrijk om te weten.<br>Je zal zien: de WordPress Community is een fijne bende mensen die elkaar willen helpen.<br>Als je niet weet waar te starten met bijdragen; contacteer de Belgische WordPress Community op Slack:  <a href=\"https://wpbelgium.be/slack\">https://wpbelgium.be/slack</a>.<br></p>\n\n\n\n<p>Bedankt voor jouw interesse om WordPress beter te maken.<br>We hopen dat je goesting hebt gekregen om bij te dragen.</p>\n\n\n\n<p>Alleszins, je bent van harte welkom!<br></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://nl-be.wordpress.org/2018/12/19/introductie-hoe-kan-je-bijdragen-aan-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:38:\"https://nl-be.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 27 Jan 2019 18:31:39 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Sun, 27 Jan 2019 18:19:04 GMT\";s:4:\"link\";s:64:\"<https://nl-be.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20190126130544\";}', 'no'),
(273, '_transient_timeout_feed_mod_8e64dca91181d71a34f358f23e985a77', '1548657098', 'no'),
(274, '_transient_feed_mod_8e64dca91181d71a34f358f23e985a77', '1548613898', 'no'),
(275, '_transient_timeout_feed_1c269280ae232c07e3cfc7cb1c339538', '1548657099', 'no');
INSERT INTO `ev_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(276, '_transient_feed_1c269280ae232c07e3cfc7cb1c339538', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:22:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Nederlands (België)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://nl-be.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Sun, 27 Jan 2019 18:09:25 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"nl-BE\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.1-beta2-44700\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"Introductie: Hoe kan je bijdragen aan WordPress?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://nl-be.wordpress.org/2018/12/19/introductie-hoe-kan-je-bijdragen-aan-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://nl-be.wordpress.org/2018/12/19/introductie-hoe-kan-je-bijdragen-aan-wordpress/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Dec 2018 10:47:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://nl-be.wordpress.org/?p=396\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:375:\"Zonder de bijdrage van duizenden vrijwilligers zou WordPress nooit geworden zijn wat het nu is: ‘s werelds meest gebruikte beheersysteem voor websites.Bijdragen aan WordPress is makkelijker dan je denkt. In dit artikel lees je wat je kan doen en waar je kan starten. Verschillende overkoepelende teams﻿ Op make.wordpress.org vind je een overzicht van alle teams [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Dave Loodts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4036:\"\n<p>Zonder de bijdrage van duizenden vrijwilligers zou WordPress nooit geworden zijn wat het nu is: ‘s werelds meest gebruikte beheersysteem voor websites.<br>Bijdragen aan WordPress is makkelijker dan je denkt.</p>\n\n\n\n<p>In dit artikel lees je wat je kan doen en waar je kan starten.<br></p>\n\n\n\n<h4><strong>Verschillende overkoepelende teams﻿</strong></h4>\n\n\n\n<p>Op <a href=\"https://make.wordpress.org/\">make.wordpress.org</a> vind je een overzicht van alle teams die aan WordPress bijdragen.<br>Het bekendste team is ‘Core’: zij werken aan de software. Maar er bestaan ook teams waarbij je helemaal geen programmeerkennis moet hebben om bij te dragen: bv documentatie, vertalingen, WordPress.tv, enz.<br>Iedereen kan dus meewerken aan WordPress.<br></p>\n\n\n\n<p>De communicatie per team gebeurd momenteel via 2 kanalen:<br>&#8211; via wordpress.org: elk team heeft zijn eigen subsite (bv documentatie: <a href=\"https://make.wordpress.org/docs/\">https://make.wordpress.org/docs/</a>)<br>&#8211; Via Slack: elk team heeft zijn eigen chatkanaal. Via Slack gebeurt de meeste interactie en ontvang je meestal het snelste antwoord op al jouw vragen betreffende ‘bijdragen aan WordPress’.<br>Meer info over WordPress op Slack. (<a href=\"https://wpbelgium.be/slack/\">https://wpbelgium.be/slack/</a>)</p>\n\n\n\n<p><br>De meeste teams hebben ook een wekelijkse meeting via Slack.<br>Deze meetings zijn voor iedereen toegankelijk en vrijblijvend. <br>Sluit je zeker eens aan bij een bepaalde meeting om mee te kijken en/of te participeren.</p>\n\n\n\n<h4><strong>Waarom zou je bijdragen aan WordPress?</strong></h4>\n\n\n\n<p>Bijdragen aan WordPress levert jou nieuwe kennis op én je helpt meteen anderen. Je leert ook nieuwe mensen kennen en maakt deel uit de WordPress Community.<br></p>\n\n\n\n<h4><strong>Hoeveel kan ik bijdragen aan WordPress?</strong></h4>\n\n\n\n<p>Dat beslis je volledig zelf.<br>Binnen WordPress bestaat het concept: Five for the future.<br>Dit concept bepaalt dat het geweldig zou zijn als iedereen 5% van z’n tijd doneert aan WordPress. Per persoon komt dit bijvoorbeeld neer op 2 uurtjes per week.<br>Elke bijdrage aan WordPress is fantastisch, hoe groot of klein ook.<br>Voel je niet verplicht maar weet dat zelfs 1 uurtje per week een grote impact kan hebben op langere termijn.<br></p>\n\n\n\n<p><strong>Engels als voertaal, maar ook lokale Nederlandstalige teams!</strong></p>\n\n\n\n<p>In de overkoepelende teams wordt hoofdzakelijk ‘Engels’ gesproken.<br>Maar er bestaan ook lokale Nederlandstalige teams die op zoek zijn naar hulp.<br><br><strong>Vertalingen</strong></p>\n\n\n\n<p>WordPress is vertaald naar Nederlands (België) en Nederlands.<br>Respectievelijk: nl_be en nl.<br>Beide teams zijn steeds op zoek naar vrijwilligers om WordPress, plugins en themes te vertalen van Engels naar Nederlands.<br>NL-BE: <a href=\"https://translate.wordpress.org/locale/nl-be\">https://translate.wordpress.org/locale/nl-be</a></p>\n\n\n\n<p>NL: <a href=\"https://translate.wordpress.org/locale/nl\">https://translate.wordpress.org/locale/nl</a><br></p>\n\n\n\n<p><strong>Community</strong></p>\n\n\n\n<p>Via dit team kan je bijdragen aan WordCamps en Meetups.<br>Meetups zijn avond-bijeenkomsten waarbij WordPress enthousiastelingen samenkomen én babbelen/bijleren over WordPress.<br></p>\n\n\n\n<p>WordCamps zijn conferenties over WordPress. <br>De meeste WordCamps hebben een aparte Contributor Day waarbij elk bijdrage-team vertegenwoordigd is. </p>\n\n\n\n<p></p>\n\n\n\n<h3><strong>Waar te starten met bijdragen?</strong></h3>\n\n\n\n<p>Aarzel nooit om vragen te stellen! Dat is belangrijk om te weten.<br>Je zal zien: de WordPress Community is een fijne bende mensen die elkaar willen helpen.<br>Als je niet weet waar te starten met bijdragen; contacteer de Belgische WordPress Community op Slack:  <a href=\"https://wpbelgium.be/slack\">https://wpbelgium.be/slack</a>.<br></p>\n\n\n\n<p>Bedankt voor jouw interesse om WordPress beter te maken.<br>We hopen dat je goesting hebt gekregen om bij te dragen.</p>\n\n\n\n<p>Alleszins, je bent van harte welkom!<br></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://nl-be.wordpress.org/2018/12/19/introductie-hoe-kan-je-bijdragen-aan-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:33:\"https://nl-be.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 27 Jan 2019 18:31:39 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Sun, 27 Jan 2019 18:09:25 GMT\";s:4:\"link\";s:64:\"<https://nl-be.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20190126130544\";}', 'no'),
(277, '_transient_timeout_feed_mod_1c269280ae232c07e3cfc7cb1c339538', '1548657099', 'no'),
(278, '_transient_feed_mod_1c269280ae232c07e3cfc7cb1c339538', '1548613899', 'no'),
(279, '_transient_timeout_dash_v2_229b2bb9b15d070ed7f17b4a26d0ca24', '1548657099', 'no'),
(280, '_transient_dash_v2_229b2bb9b15d070ed7f17b4a26d0ca24', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://nl-be.wordpress.org/2018/12/19/introductie-hoe-kan-je-bijdragen-aan-wordpress/\'>Introductie: Hoe kan je bijdragen aan WordPress?</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://nl-be.wordpress.org/2018/12/19/introductie-hoe-kan-je-bijdragen-aan-wordpress/\'>Introductie: Hoe kan je bijdragen aan WordPress?</a></li></ul></div>', 'no'),
(243, 'core_updater.lock', '1548516180', 'no'),
(244, '_site_transient_timeout_browser_f7416ef1ca9c1612e03447216e5b7265', '1549121130', 'no'),
(245, '_site_transient_browser_f7416ef1ca9c1612e03447216e5b7265', 'a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(269, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1548657097', 'no'),
(270, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:26:\"WordPress meetup Eindhoven\";s:3:\"url\";s:67:\"https://www.meetup.com/WordPress-Meetup-Eindhoven/events/257156203/\";s:6:\"meetup\";s:26:\"WordPress Meetup Eindhoven\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/WordPress-Meetup-Eindhoven/\";s:4:\"date\";s:19:\"2019-01-28 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:22:\"Eindhoven, Netherlands\";s:7:\"country\";s:2:\"nl\";s:8:\"latitude\";d:51.43314;s:9:\"longitude\";d:5.432063;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Beveilig je WordPress website en hou deze veilig!\";s:3:\"url\";s:65:\"https://www.meetup.com/WordPress-Hasselt-Meetup/events/258333454/\";s:6:\"meetup\";s:24:\"WordPress Hasselt Meetup\";s:10:\"meetup_url\";s:48:\"https://www.meetup.com/WordPress-Hasselt-Meetup/\";s:4:\"date\";s:19:\"2019-02-04 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Hasselt, Belgium\";s:7:\"country\";s:2:\"be\";s:8:\"latitude\";d:50.919689;s:9:\"longitude\";d:5.35386;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:13:\"WPinLille #27\";s:3:\"url\";s:50:\"https://www.meetup.com/WPinLille/events/256836737/\";s:6:\"meetup\";s:9:\"WPinLille\";s:10:\"meetup_url\";s:33:\"https://www.meetup.com/WPinLille/\";s:4:\"date\";s:19:\"2019-02-06 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Lille, France\";s:7:\"country\";s:2:\"fr\";s:8:\"latitude\";d:50.636425;s:9:\"longitude\";d:3.060836;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:24:\"WordPress Meetup Antwerp\";s:3:\"url\";s:65:\"https://www.meetup.com/Antwerp-WordPress-Meetup/events/255361408/\";s:6:\"meetup\";s:24:\"Antwerp WordPress Meetup\";s:10:\"meetup_url\";s:48:\"https://www.meetup.com/Antwerp-WordPress-Meetup/\";s:4:\"date\";s:19:\"2019-02-18 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Antwerpen, Belgium\";s:7:\"country\";s:2:\"be\";s:8:\"latitude\";d:51.22154;s:9:\"longitude\";d:4.40455;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"WordPress MeetUp Utrecht 20 februari 2019\";s:3:\"url\";s:65:\"https://www.meetup.com/WordPress-Meetup-Utrecht/events/257953710/\";s:6:\"meetup\";s:24:\"WordPress Meetup Utrecht\";s:10:\"meetup_url\";s:48:\"https://www.meetup.com/WordPress-Meetup-Utrecht/\";s:4:\"date\";s:19:\"2019-02-20 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:20:\"Utrecht, Netherlands\";s:7:\"country\";s:2:\"nl\";s:8:\"latitude\";d:52.064255;s:9:\"longitude\";d:5.108524;}}}}', 'no');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_postmeta`
--

CREATE TABLE `ev_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ev_postmeta`
--

INSERT INTO `ev_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1548523025:1'),
(4, 2, '_edit_lock', '1548435301:1'),
(8, 8, '_edit_lock', '1548520435:1'),
(7, 8, '_edit_last', '1'),
(9, 5, '_edit_last', '1'),
(10, 5, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(11, 5, '_page-content_0_title', 'field_5c4b56c97bc79'),
(12, 5, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(13, 5, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(14, 5, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(15, 5, '_page-content', 'field_5c4b54c13f041'),
(16, 19, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(17, 19, '_page-content_0_title', 'field_5c4b56c97bc79'),
(18, 19, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(19, 19, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(20, 19, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(21, 19, '_page-content', 'field_5c4b54c13f041'),
(22, 20, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(23, 20, '_page-content_0_title', 'field_5c4b56c97bc79'),
(24, 20, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(25, 20, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(26, 20, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(27, 20, '_page-content', 'field_5c4b54c13f041'),
(28, 5, 'flexible_0_title', 'Welcome'),
(54, 5, 'flexible_0_user_text', 'Where am i'),
(29, 5, '_flexible_0_title', 'field_5c4c6feebbd26'),
(30, 5, 'flexible_0_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(31, 5, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(32, 5, 'flexible', 'a:2:{i:0;s:19:\"homepage_title_text\";i:1;s:19:\"homepage_title_text\";}'),
(33, 5, '_flexible', 'field_5c4b54c13f041'),
(34, 20, 'flexible_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(35, 20, '_flexible_0_title', 'field_5c4b56c97bc79'),
(36, 20, 'flexible_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(37, 20, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(38, 20, 'flexible', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(39, 20, '_flexible', 'field_5c4b54c13f041'),
(52, 5, 'flexible_0_title_intro', 'hello there and'),
(53, 5, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(55, 5, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(56, 5, 'flexible_1_title_intro', 'let me tell you'),
(57, 5, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(58, 5, 'flexible_1_title', 'about me'),
(59, 5, '_flexible_1_title', 'field_5c4c6feebbd26'),
(60, 5, 'flexible_1_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(61, 5, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(62, 5, 'flexible_1_user_text', 'who are you'),
(63, 5, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(64, 24, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(65, 24, '_page-content_0_title', 'field_5c4b56c97bc79'),
(66, 24, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(67, 24, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(68, 24, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(69, 24, '_page-content', 'field_5c4b54c13f041'),
(70, 24, 'flexible_0_title', 'welcome'),
(71, 24, '_flexible_0_title', 'field_5c4c6feebbd26'),
(72, 24, 'flexible_0_text', 'hi, welcome i am blabla and i do blablalba but i don\'t like to blablabla too much because then i can\'t blablabla.'),
(73, 24, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(74, 24, 'flexible', 'a:2:{i:0;s:19:\"Homepage_title_text\";i:1;s:19:\"Homepage_title_text\";}'),
(75, 24, '_flexible', 'field_5c4b54c13f041'),
(76, 24, 'flexible_0_title_intro', 'hello there and'),
(77, 24, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(78, 24, 'flexible_0_user_text', 'Where am i'),
(79, 24, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(80, 24, 'flexible_1_title_intro', 'let me tell you'),
(81, 24, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(82, 24, 'flexible_1_title', 'about me'),
(83, 24, '_flexible_1_title', 'field_5c4c6feebbd26'),
(84, 24, 'flexible_1_text', 'hi, welcome i am blabla and i do blablalba but i don\'t like to blablabla too much because then i can\'t blablabla.'),
(85, 24, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(86, 24, 'flexible_1_user_text', 'Who are you'),
(87, 24, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(88, 25, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(89, 25, '_page-content_0_title', 'field_5c4b56c97bc79'),
(90, 25, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(91, 25, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(92, 25, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(93, 25, '_page-content', 'field_5c4b54c13f041'),
(94, 25, 'flexible_0_title', 'welcome'),
(95, 25, '_flexible_0_title', 'field_5c4c6feebbd26'),
(96, 25, 'flexible_0_text', 'hi, welcome i am blabla and i do blablalba but i don\'t like to blablabla too much because then i can\'t blablabla.'),
(97, 25, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(98, 25, 'flexible', 'a:2:{i:0;s:19:\"Homepage_title_text\";i:1;s:19:\"Homepage_title_text\";}'),
(99, 25, '_flexible', 'field_5c4b54c13f041'),
(100, 25, 'flexible_0_title_intro', 'hello there and'),
(101, 25, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(102, 25, 'flexible_0_user_text', 'Where am i'),
(103, 25, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(104, 25, 'flexible_1_title_intro', 'let me tell you'),
(105, 25, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(106, 25, 'flexible_1_title', 'about me'),
(107, 25, '_flexible_1_title', 'field_5c4c6feebbd26'),
(108, 25, 'flexible_1_text', 'hi, welcome i am blabla and i do blablalba but i don\'t like to blablabla too much because then i can\'t blablabla.'),
(109, 25, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(110, 25, 'flexible_1_user_text', 'Who are you'),
(111, 25, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(112, 26, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(113, 26, '_page-content_0_title', 'field_5c4b56c97bc79'),
(114, 26, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(115, 26, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(116, 26, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(117, 26, '_page-content', 'field_5c4b54c13f041'),
(118, 26, 'flexible_0_title', 'welcome'),
(119, 26, '_flexible_0_title', 'field_5c4c6feebbd26'),
(120, 26, 'flexible_0_text', 'hi, welcome i am blabla and i do blablalba but i don\'t like to blablabla too much because then i can\'t blablabla.'),
(121, 26, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(122, 26, 'flexible', 'a:2:{i:0;s:19:\"Homepage_title_text\";i:1;s:19:\"Homepage_title_text\";}'),
(123, 26, '_flexible', 'field_5c4b54c13f041'),
(124, 26, 'flexible_0_title_intro', 'hello there and'),
(125, 26, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(126, 26, 'flexible_0_user_text', 'Where am i'),
(127, 26, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(128, 26, 'flexible_1_title_intro', 'let me tell you'),
(129, 26, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(130, 26, 'flexible_1_title', 'about me'),
(131, 26, '_flexible_1_title', 'field_5c4c6feebbd26'),
(132, 26, 'flexible_1_text', 'hi, welcome i am blabla and i do blablalba but i don\'t like to blablabla too much because then i can\'t blablabla.'),
(133, 26, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(134, 26, 'flexible_1_user_text', 'Who are you'),
(135, 26, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(136, 27, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(137, 27, '_page-content_0_title', 'field_5c4b56c97bc79'),
(138, 27, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(139, 27, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(140, 27, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(141, 27, '_page-content', 'field_5c4b54c13f041'),
(142, 27, 'flexible_0_title', 'welcome'),
(143, 27, '_flexible_0_title', 'field_5c4c6feebbd26'),
(144, 27, 'flexible_0_text', 'hi, welcome i am blabla and i do blablalba but i don\'t like to blablabla too much because then i can\'t blablabla.'),
(145, 27, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(146, 27, 'flexible', 'a:2:{i:0;s:19:\"Homepage_title_text\";i:1;s:19:\"Homepage_title_text\";}'),
(147, 27, '_flexible', 'field_5c4b54c13f041'),
(148, 27, 'flexible_0_title_intro', 'hello there and'),
(149, 27, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(150, 27, 'flexible_0_user_text', 'Where am i'),
(151, 27, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(152, 27, 'flexible_1_title_intro', 'let me tell you'),
(153, 27, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(154, 27, 'flexible_1_title', 'about me'),
(155, 27, '_flexible_1_title', 'field_5c4c6feebbd26'),
(156, 27, 'flexible_1_text', 'hi, welcome i am blabla and i do blablalba but i don\'t like to blablabla too much because then i can\'t blablabla.'),
(157, 27, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(158, 27, 'flexible_1_user_text', 'Who are you'),
(159, 27, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(160, 28, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(161, 28, '_page-content_0_title', 'field_5c4b56c97bc79'),
(162, 28, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(163, 28, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(164, 28, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(165, 28, '_page-content', 'field_5c4b54c13f041'),
(166, 28, 'flexible_0_title', 'Welcome'),
(167, 28, '_flexible_0_title', 'field_5c4c6feebbd26'),
(168, 28, 'flexible_0_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(169, 28, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(170, 28, 'flexible', 'a:1:{i:0;s:19:\"homepage_title_text\";}'),
(171, 28, '_flexible', 'field_5c4b54c13f041'),
(172, 28, 'flexible_0_title_intro', 'hello there and'),
(173, 28, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(174, 28, 'flexible_0_user_text', 'Where am i'),
(175, 28, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(176, 28, 'flexible_1_title_intro', 'let me tell you'),
(177, 28, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(178, 28, 'flexible_1_title', 'about me'),
(179, 28, '_flexible_1_title', 'field_5c4c6feebbd26'),
(180, 28, 'flexible_1_text', 'hi, welcome i am blabla and i do blablalba but i don\'t like to blablabla too much because then i can\'t blablabla.'),
(181, 28, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(182, 28, 'flexible_1_user_text', 'Who are you'),
(183, 28, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(184, 29, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(185, 29, '_page-content_0_title', 'field_5c4b56c97bc79'),
(186, 29, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(187, 29, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(188, 29, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(189, 29, '_page-content', 'field_5c4b54c13f041'),
(190, 29, 'flexible_0_title', 'Welcome'),
(191, 29, '_flexible_0_title', 'field_5c4c6feebbd26'),
(192, 29, 'flexible_0_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(193, 29, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(194, 29, 'flexible', 'a:1:{i:0;s:19:\"homepage_title_text\";}'),
(195, 29, '_flexible', 'field_5c4b54c13f041'),
(196, 29, 'flexible_0_title_intro', 'hello there and'),
(197, 29, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(198, 29, 'flexible_0_user_text', 'Where am i'),
(199, 29, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(200, 29, 'flexible_1_title_intro', 'let me tell you'),
(201, 29, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(202, 29, 'flexible_1_title', 'about me'),
(203, 29, '_flexible_1_title', 'field_5c4c6feebbd26'),
(204, 29, 'flexible_1_text', 'hi, welcome i am blabla and i do blablalba but i don\'t like to blablabla too much because then i can\'t blablabla.'),
(205, 29, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(206, 29, 'flexible_1_user_text', 'Who are you'),
(207, 29, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(254, 35, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(255, 35, '_page-content', 'field_5c4b54c13f041'),
(253, 35, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(275, 36, '_page-content_0_title', 'field_5c4b56c97bc79'),
(273, 35, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(274, 36, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(272, 35, 'flexible_1_user_text', ''),
(256, 35, 'flexible_0_title', 'Welcome'),
(252, 35, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(250, 35, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(251, 35, '_page-content_0_title', 'field_5c4b56c97bc79'),
(271, 35, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(270, 35, 'flexible_1_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(269, 35, '_flexible_1_title', 'field_5c4c6feebbd26'),
(268, 35, 'flexible_1_title', 'about me'),
(267, 35, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(266, 35, 'flexible_1_title_intro', 'let me tell you'),
(265, 35, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(264, 35, 'flexible_0_user_text', 'Where am i'),
(263, 35, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(261, 35, '_flexible', 'field_5c4b54c13f041'),
(262, 35, 'flexible_0_title_intro', 'hello there and'),
(260, 35, 'flexible', 'a:2:{i:0;s:19:\"homepage_title_text\";i:1;s:19:\"homepage_title_text\";}'),
(259, 35, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(257, 35, '_flexible_0_title', 'field_5c4c6feebbd26'),
(258, 35, 'flexible_0_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(276, 36, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(277, 36, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(278, 36, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(279, 36, '_page-content', 'field_5c4b54c13f041'),
(280, 36, 'flexible_0_title', 'Welcome'),
(281, 36, '_flexible_0_title', 'field_5c4c6feebbd26'),
(282, 36, 'flexible_0_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(283, 36, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(284, 36, 'flexible', 'a:2:{i:0;s:19:\"homepage_title_text\";i:1;s:19:\"homepage_title_text\";}'),
(285, 36, '_flexible', 'field_5c4b54c13f041'),
(286, 36, 'flexible_0_title_intro', 'hello there and'),
(287, 36, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(288, 36, 'flexible_0_user_text', 'Where am i'),
(289, 36, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(290, 36, 'flexible_1_title_intro', 'let me tell you'),
(291, 36, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(292, 36, 'flexible_1_title', 'about me'),
(293, 36, '_flexible_1_title', 'field_5c4c6feebbd26'),
(294, 36, 'flexible_1_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(295, 36, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(296, 36, 'flexible_1_user_text', ''),
(297, 36, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(298, 37, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(299, 37, '_page-content_0_title', 'field_5c4b56c97bc79'),
(300, 37, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(301, 37, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(302, 37, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(303, 37, '_page-content', 'field_5c4b54c13f041'),
(304, 37, 'flexible_0_title', 'Welcome'),
(305, 37, '_flexible_0_title', 'field_5c4c6feebbd26'),
(306, 37, 'flexible_0_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(307, 37, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(308, 37, 'flexible', 'a:2:{i:0;s:19:\"homepage_title_text\";i:1;s:19:\"homepage_title_text\";}'),
(309, 37, '_flexible', 'field_5c4b54c13f041'),
(310, 37, 'flexible_0_title_intro', 'hello there and'),
(311, 37, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(312, 37, 'flexible_0_user_text', 'Where am i'),
(313, 37, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(314, 37, 'flexible_1_title_intro', 'let me tell you'),
(315, 37, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(316, 37, 'flexible_1_title', 'about me'),
(317, 37, '_flexible_1_title', 'field_5c4c6feebbd26'),
(318, 37, 'flexible_1_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(319, 37, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(320, 37, 'flexible_1_user_text', ''),
(321, 37, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(322, 38, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(323, 38, '_page-content_0_title', 'field_5c4b56c97bc79'),
(324, 38, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(325, 38, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(326, 38, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(327, 38, '_page-content', 'field_5c4b54c13f041'),
(328, 38, 'flexible_0_title', 'Welcome'),
(329, 38, '_flexible_0_title', 'field_5c4c6feebbd26'),
(330, 38, 'flexible_0_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(331, 38, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(332, 38, 'flexible', 'a:2:{i:0;s:19:\"homepage_title_text\";i:1;s:19:\"homepage_title_text\";}'),
(333, 38, '_flexible', 'field_5c4b54c13f041'),
(334, 38, 'flexible_0_title_intro', 'hello there and'),
(335, 38, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(336, 38, 'flexible_0_user_text', 'Where am i'),
(337, 38, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(338, 38, 'flexible_1_title_intro', 'let me tell you'),
(339, 38, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(340, 38, 'flexible_1_title', 'about me'),
(341, 38, '_flexible_1_title', 'field_5c4c6feebbd26'),
(342, 38, 'flexible_1_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(343, 38, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(344, 38, 'flexible_1_user_text', 'who are you'),
(345, 38, '_flexible_1_user_text', 'field_5c4c709d3c0f6'),
(346, 39, 'page-content_0_title', '<p>Hello there and &lt;span&gt;welcome&lt;/span&gt;</p>'),
(347, 39, '_page-content_0_title', 'field_5c4b56c97bc79'),
(348, 39, 'page-content_0_text', 'Hi, welcome i am blablabla and i do blablabla but i don’t like to blabla too much because then i can’t blabla'),
(349, 39, '_page-content_0_text', 'field_5c4b56e57bc7a'),
(350, 39, 'page-content', 'a:1:{i:0;s:15:\"title_with_text\";}'),
(351, 39, '_page-content', 'field_5c4b54c13f041'),
(352, 39, 'flexible_0_title', 'Welcome'),
(353, 39, '_flexible_0_title', 'field_5c4c6feebbd26'),
(354, 39, 'flexible_0_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(355, 39, '_flexible_0_text', 'field_5c4b56e57bc7a'),
(356, 39, 'flexible', 'a:2:{i:0;s:19:\"homepage_title_text\";i:1;s:19:\"homepage_title_text\";}'),
(357, 39, '_flexible', 'field_5c4b54c13f041'),
(358, 39, 'flexible_0_title_intro', 'hello there and'),
(359, 39, '_flexible_0_title_intro', 'field_5c4b56c97bc79'),
(360, 39, 'flexible_0_user_text', 'Where am i'),
(361, 39, '_flexible_0_user_text', 'field_5c4c709d3c0f6'),
(362, 39, 'flexible_1_title_intro', 'let me tell you'),
(363, 39, '_flexible_1_title_intro', 'field_5c4b56c97bc79'),
(364, 39, 'flexible_1_title', 'about me'),
(365, 39, '_flexible_1_title', 'field_5c4c6feebbd26'),
(366, 39, 'flexible_1_text', 'Hi and welcome, I am blablabla and i like to blablabla. But i don\'t like to blabla too much otherwise i can\'t blabla'),
(367, 39, '_flexible_1_text', 'field_5c4b56e57bc7a'),
(368, 39, 'flexible_1_user_text', 'who are you'),
(369, 39, '_flexible_1_user_text', 'field_5c4c709d3c0f6');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_posts`
--

CREATE TABLE `ev_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ev_posts`
--

INSERT INTO `ev_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-22 11:51:42', '2019-01-22 11:51:42', '<!-- wp:paragraph -->\n<p>Welkom bij WordPress. Dit is je eerste bericht. Bewerk of verwijder het en start dan met schrijven!</p>\n<!-- /wp:paragraph -->', 'Hallo wereld!', '', 'publish', 'open', 'open', '', 'hallo-wereld', '', '', '2019-01-22 11:51:42', '2019-01-22 11:51:42', '', 0, 'http://luhn-portfolio.wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-22 11:51:42', '2019-01-22 11:51:42', '<!-- wp:paragraph -->\n<p>Dit is een voorbeeldpagina. Het is anders dan een blog bericht omdat het op één plek blijft en tevoorschijn komt in je site navigatie (in de meeste thema\'s). De meeste mensen starten met een Over pagina dat hen voorstelt aan potentiële website bezoekers. Het zou iets als dit kunnen zeggen:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hallo daar! Ik ben een fietskoerier in het dagelijks leven en een beginnend acteur in de avonduren. Ik leef in Los Angeles, heb een leuke hond genaamd Jack en ik hou van pi&#241;a coladas. (En overvallen worden door de regen.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...of zoiets als dit:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>De XYZ Doohickey Company is opgericht in 1971 en heeft sindsdien kwalitatieve   doohickeys aan het publiek geleverd. Gevestigd in Gotham City, XYZ heeft meer dan 2000 mensen in dienst en doen allemaal fantastische dingen voor de community in Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Als nieuwe WordPress gebruiker kan je naar <a href=\"http://luhn-portfolio.wordpress/wp-admin/\">je dashboard</a> gaan om deze pagina te verwijderen en nieuwe pagina\'s toe te voegen voor je website. Veel plezier!</p>\n<!-- /wp:paragraph -->', 'Voorbeeld pagina', '', 'publish', 'closed', 'open', '', 'voorbeeld pagina', '', '', '2019-01-22 11:51:42', '2019-01-22 11:51:42', '', 0, 'http://luhn-portfolio.wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-22 11:51:42', '2019-01-22 11:51:42', '<!-- wp:heading --><h2>Wie zijn wij</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Het adres van onze website is: http://luhn-portfolio.wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welke persoonlijke data we verzamelen en waarom we dat doen</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Reacties</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Als bezoekers reacties achterlaten op de site, verzamelen we de data die getoond wordt in het reactieformulier, het IP-adres van de bezoeker en de browser user agent om spam te bestrijden.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Een geanonimiseerde string, gemaakt op basis van je e-mailadres (dit wordt ook een hash genoemd) kan worden gestuurd naar de Gravatar dienst indien je dit gebruikt. De privacybeleid pagina kun je hier vinden: https://automattic.com/privacy/. Nadat je reactie is goedgekeurd, is je profielfoto publiekelijk zichtbaar in de context van je reactie.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Als je afbeeldingen naar de website upload, moet je voorkomen dat je afbeeldingen uploadt met daarin GPS locatiegegevens (EXIF data). Bezoekers van de website kunnen de afbeeldingen van je website downloaden en deze locatiegegevens inzien.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contactformulieren</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wanneer je een reactie achterlaat op onze site, kun je aangeven of we je naam, je e-mailadres en website in een cookie opgeslagen mogen worden. Dit doen we voor jouw gemak zodat je deze gegevens niet opnieuw hoeft in te vullen voor een nieuwe reactie. Deze cookies zijn een jaar lang geldig. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Indien je een account hebt en je logt in op deze website, slaan we een tijdelijk cookie op om te bepalen of jouw browser cookies accepteert. Dit cookie bevat geen persoonlijke data en wordt verwijderd zodra je je browser sluit.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Zodra je inlogt, zullen we enkele cookies bewaren in verband met jouw login informatie en schermweergave opties. Login cookies zijn 2 dagen geldig en cookies voor schermweergave opties 1 jaar. Als je &quot;Herinner mij&quot; selecteert, wordt je login 2 weken bewaard. Zodra je uitlogt van jouw account, worden de login cookies verwijderd.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wanneer je een bericht wijzigt of publiceert wordt een aanvullende cookie door je browser opgeslagen. Deze cookie bevat geen persoonlijke data en bevat enkel het post ID van het artikel wat je hebt bewerkt. Deze cookie is na een dag verlopen.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Ingesloten inhoud van andere websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Berichten op deze website kunnen ingesloten (embedded) inhoud bevatten. Bijvoorbeeld video\'s, afbeeldingen, berichten, etc. Ingesloten inhoud van andere websites gedraagt zich exact hetzelfde alsof de bezoeker deze andere website heeft bezocht.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Deze websites kunnen gegevens over jou verzamelen, cookies gebruiken, tracking van derde partijen insluiten en je interactie met deze ingesloten inhoud monitoren, inclusief de interactie met ingesloten inhoud als je een account hebt en ingelogd bent op die website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Met wie we uw data delen</h2><!-- /wp:heading --><!-- wp:heading --><h2>Hoelang we uw data bewaren</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Wanneer je een reactie achterlaat dan wordt die reactie en de metadata van die reactie voor altijd bewaard. Op deze manier kunnen we vervolgreacties automatisch herkennen en goedkeuren in plaats van dat we ze moeten modereren.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Voor gebruikers die zich registreren op onze website (indien van toepassing), bewaren we ook persoonlijke informatie in hun gebruikersprofiel. Alle gebruikers kunnen hun persoonlijke informatie bekijken, wijzigen of verwijderen op ieder moment (enkel de gebruikersnaam kan niet gewijzigd worden). Beheerders van de website kunnen deze informatie ook bekijken en wijzigen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welke rechten heb je van je eigen gegevens</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Als je een account hebt op deze website of je hebt reacties geplaatst, kan je verzoeken om een exportbestand van je persoonlijke gegevens die we van je hebben, inclusief alle gegevens die je ons hebt gegeven. Je kan ook verzoeken dat we deze persoonlijke gegevens die we van je hebben verwijderen. Dit bevat geen data die we verplicht moeten bewaren in verband met administratieve, wettelijke of beveiligingsdoeleinden.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Waar we uw data naar toe sturen</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Bezoekerscommentaren kunnen worden gecontroleerd via een geautomatiseerde spamdetectieservice.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Uw contactgegevens</h2><!-- /wp:heading --><!-- wp:heading --><h2>Bijkomende informatie</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Hoe we uw gegevens beschermen</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De procedures die we hebben in geval van een gegevensinbreuk</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Derden waar we gegevens van ontvangen</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Welke geautomatiseerde besluitvorming en/of profilering doen we met gebruikersgegevens</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Openbaarmakingsverplichtingen van de industrie</h3><!-- /wp:heading -->', 'Privacybeleid', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-01-22 11:51:42', '2019-01-22 11:51:42', '', 0, 'http://luhn-portfolio.wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-01-22 11:52:09', '0000-00-00 00:00:00', '', 'Automatisch concept', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-22 11:52:09', '0000-00-00 00:00:00', '', 0, 'http://luhn-portfolio.wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2019-01-25 16:57:31', '2019-01-25 16:57:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-26 16:59:24', '2019-01-26 16:59:24', '', 0, 'http://luhn-portfolio.wordpress/?page_id=5', 0, 'page', '', 0),
(39, 1, '2019-01-26 16:59:23', '2019-01-26 16:59:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 16:59:23', '2019-01-26 16:59:23', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-01-25 16:53:42', '2019-01-25 16:53:42', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-25 16:53:42', '2019-01-25 16:53:42', '', 5, 'http://luhn-portfolio.wordpress/2019/01/25/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-01-25 18:26:19', '2019-01-25 18:26:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'group_5c4b546fc6067', '', '', '2019-01-26 15:36:33', '2019-01-26 15:36:33', '', 0, 'http://luhn-portfolio.wordpress/?post_type=acf-field-group&#038;p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2019-01-25 18:26:19', '2019-01-25 18:26:19', 'a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:3:{s:13:\"5c4b5501cd0c7\";a:6:{s:3:\"key\";s:13:\"5c4b5501cd0c7\";s:5:\"label\";s:4:\"text\";s:4:\"name\";s:4:\"text\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_5c4b56c97bc78\";a:6:{s:3:\"key\";s:20:\"layout_5c4b56c97bc78\";s:5:\"label\";s:25:\"Homepage title+text block\";s:4:\"name\";s:19:\"homepage_title_text\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_5c4b56171f6bb\";a:6:{s:3:\"key\";s:20:\"layout_5c4b56171f6bb\";s:5:\"label\";s:5:\"video\";s:4:\"name\";s:5:\"video\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:12:\"button_label\";s:12:\"Nieuwe regel\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}', 'flexible', 'flexible', 'publish', 'closed', 'closed', '', 'field_5c4b54c13f041', '', '', '2019-01-26 14:45:37', '2019-01-26 14:45:37', '', 8, 'http://luhn-portfolio.wordpress/?post_type=acf-field&#038;p=9', 0, 'acf-field', '', 0),
(10, 1, '2019-01-25 18:28:08', '2019-01-25 18:28:08', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5c4b5501cd0c7\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_5c4b552e97b0d', '', '', '2019-01-25 18:38:53', '2019-01-25 18:38:53', '', 9, 'http://luhn-portfolio.wordpress/?post_type=acf-field&#038;p=10', 0, 'acf-field', '', 0),
(20, 1, '2019-01-25 18:38:27', '2019-01-25 18:38:27', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-25 18:38:27', '2019-01-25 18:38:27', '', 5, 'http://luhn-portfolio.wordpress/2019/01/25/5-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-01-25 18:32:24', '2019-01-25 18:32:24', 'a:8:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5c4b56171f6bb\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'video', 'video', 'publish', 'closed', 'closed', '', 'field_5c4b562a1f6bc', '', '', '2019-01-25 18:32:24', '2019-01-25 18:32:24', '', 9, 'http://luhn-portfolio.wordpress/?post_type=acf-field&p=12', 0, 'acf-field', '', 0),
(17, 1, '2019-01-25 18:35:56', '2019-01-25 18:35:56', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5c4b56c97bc78\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title intro', 'title_intro', 'publish', 'closed', 'closed', '', 'field_5c4b56c97bc79', '', '', '2019-01-26 15:36:33', '2019-01-26 15:36:33', '', 9, 'http://luhn-portfolio.wordpress/?post_type=acf-field&#038;p=17', 0, 'acf-field', '', 0),
(18, 1, '2019-01-25 18:35:56', '2019-01-25 18:35:56', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5c4b56c97bc78\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_5c4b56e57bc7a', '', '', '2019-01-26 14:38:08', '2019-01-26 14:38:08', '', 9, 'http://luhn-portfolio.wordpress/?post_type=acf-field&#038;p=18', 2, 'acf-field', '', 0),
(19, 1, '2019-01-25 18:38:17', '2019-01-25 18:38:17', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-25 18:38:17', '2019-01-25 18:38:17', '', 5, 'http://luhn-portfolio.wordpress/2019/01/25/5-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-01-26 14:36:01', '2019-01-26 14:36:01', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5c4b56c97bc78\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5c4c6feebbd26', '', '', '2019-01-26 14:38:08', '2019-01-26 14:38:08', '', 9, 'http://luhn-portfolio.wordpress/?post_type=acf-field&#038;p=22', 1, 'acf-field', '', 0),
(23, 1, '2019-01-26 14:38:08', '2019-01-26 14:38:08', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5c4b56c97bc78\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'user text', 'user_text', 'publish', 'closed', 'closed', '', 'field_5c4c709d3c0f6', '', '', '2019-01-26 14:38:08', '2019-01-26 14:38:08', '', 9, 'http://luhn-portfolio.wordpress/?post_type=acf-field&p=23', 3, 'acf-field', '', 0),
(24, 1, '2019-01-26 14:41:12', '2019-01-26 14:41:12', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 14:41:12', '2019-01-26 14:41:12', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-01-26 14:41:26', '2019-01-26 14:41:26', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 14:41:26', '2019-01-26 14:41:26', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-01-26 14:41:31', '2019-01-26 14:41:31', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 14:41:31', '2019-01-26 14:41:31', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-01-26 14:41:43', '2019-01-26 14:41:43', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 14:41:43', '2019-01-26 14:41:43', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-01-26 14:49:24', '2019-01-26 14:49:24', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 14:49:24', '2019-01-26 14:49:24', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-01-26 14:50:55', '2019-01-26 14:50:55', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 14:50:55', '2019-01-26 14:50:55', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-01-26 15:30:28', '2019-01-26 15:30:28', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 15:30:28', '2019-01-26 15:30:28', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-01-26 15:30:36', '2019-01-26 15:30:36', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 15:30:36', '2019-01-26 15:30:36', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-01-26 15:30:43', '2019-01-26 15:30:43', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 15:30:43', '2019-01-26 15:30:43', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-01-26 15:32:04', '2019-01-26 15:32:04', '<!-- wp:paragraph -->\n<p>text 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>text 2</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-26 15:32:04', '2019-01-26 15:32:04', '', 5, 'http://luhn-portfolio.wordpress/2019/01/26/5-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_termmeta`
--

CREATE TABLE `ev_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_terms`
--

CREATE TABLE `ev_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ev_terms`
--

INSERT INTO `ev_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Geen categorie', 'geen-categorie', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_term_relationships`
--

CREATE TABLE `ev_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ev_term_relationships`
--

INSERT INTO `ev_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_term_taxonomy`
--

CREATE TABLE `ev_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ev_term_taxonomy`
--

INSERT INTO `ev_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_usermeta`
--

CREATE TABLE `ev_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ev_usermeta`
--

INSERT INTO `ev_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'anthriax'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'ev_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'ev_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'ev_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'session_tokens', 'a:2:{s:64:\"8d637000cb66b74dc1eeb97ca40981789d4152d7d6f178e9c993e3a48e69c9ab\";a:4:{s:10:\"expiration\";i:1548685820;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1548513020;}s:64:\"d78b6c5b208dcab1785c6eff441cc0dc7f6a7e9489cc39dba8227e67fa3c9a59\";a:4:{s:10:\"expiration\";i:1548786687;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1548613887;}}'),
(21, 1, 'ev_user-settings', 'mfold=o&editor=tinymce'),
(22, 1, 'ev_user-settings-time', '1548441492'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}'),
(25, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:6:\"normal\";s:23:\"acf-group_5c4b546fc6067\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ev_users`
--

CREATE TABLE `ev_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ev_users`
--

INSERT INTO `ev_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'anthriax', '$P$B3VJKSrgHAmilNDAXoYSPh2oo4find1', 'anthriax', 'lka.v.lv@gmail.com', '', '2019-01-22 11:51:42', '', 0, 'anthriax');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `ev_commentmeta`
--
ALTER TABLE `ev_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `ev_comments`
--
ALTER TABLE `ev_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexen voor tabel `ev_links`
--
ALTER TABLE `ev_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexen voor tabel `ev_options`
--
ALTER TABLE `ev_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexen voor tabel `ev_postmeta`
--
ALTER TABLE `ev_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `ev_posts`
--
ALTER TABLE `ev_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexen voor tabel `ev_termmeta`
--
ALTER TABLE `ev_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `ev_terms`
--
ALTER TABLE `ev_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexen voor tabel `ev_term_relationships`
--
ALTER TABLE `ev_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexen voor tabel `ev_term_taxonomy`
--
ALTER TABLE `ev_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexen voor tabel `ev_usermeta`
--
ALTER TABLE `ev_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `ev_users`
--
ALTER TABLE `ev_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `ev_commentmeta`
--
ALTER TABLE `ev_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `ev_comments`
--
ALTER TABLE `ev_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `ev_links`
--
ALTER TABLE `ev_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `ev_options`
--
ALTER TABLE `ev_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT voor een tabel `ev_postmeta`
--
ALTER TABLE `ev_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT voor een tabel `ev_posts`
--
ALTER TABLE `ev_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT voor een tabel `ev_termmeta`
--
ALTER TABLE `ev_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `ev_terms`
--
ALTER TABLE `ev_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `ev_term_taxonomy`
--
ALTER TABLE `ev_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `ev_usermeta`
--
ALTER TABLE `ev_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `ev_users`
--
ALTER TABLE `ev_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Gegevens worden geëxporteerd voor tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"test\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Gegevens worden geëxporteerd voor tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-01-27 20:35:49', '{\"lang\":\"nl\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexen voor tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexen voor tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexen voor tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexen voor tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexen voor tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexen voor tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexen voor tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexen voor tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexen voor tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexen voor tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `images`
--

CREATE TABLE `images` (
  `id` int(11) UNSIGNED NOT NULL,
  `imageURL` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `date`) VALUES
(1, 'test', 'tester@test', '28b662d883b6d76fd96e', '2019-01-09 12:54:28.777539'),
(3, 'testo', 'testo@testo.test', 'd6581d542c7eaf801284', '2019-01-09 14:44:40.509834'),
(4, 'brakker', 'brakkor@brakker.brak', '18144a52e0ab0417932d', '2019-01-09 14:47:25.473857'),
(5, 'brakker', 'brakson@brakker.brak', '4c88ca112f84fd19e839', '2019-01-09 14:48:02.291176'),
(6, 'loler', 'loler@loler.lo', '098f6bcd4621d373cade', '2019-01-09 15:18:33.653425'),
(7, 'ola', 'mus@st.cho', 'e0fd4cbb17dd8adc6337', '2019-01-09 15:23:08.569084'),
(8, 'ola', 'mus@st.choa', '098f6bcd4621d373cade', '2019-01-09 15:23:39.256674'),
(9, 'ola', 'mus@st.choaa', '098f6bcd4621d373cade', '2019-01-09 15:26:10.647134'),
(10, 'jok ', 'jok@jak.ji', 'cb42e130d1471239a27f', '2019-01-09 15:27:13.061104'),
(11, 'allo', 'loaa@a.a', 'e1671797c52e15f76338', '2019-01-09 15:27:39.369958'),
(12, 'a', 'a@a.c', '0096e8c22c18451b76ea', '2019-01-09 15:28:39.531136'),
(13, 'a', 'a@a.ca', 'b01abf84324066bdb4ee', '2019-01-09 15:29:14.694878'),
(14, 'a', 'a@a.caa', 'b01abf84324066bdb4ee', '2019-01-09 15:29:34.974108'),
(15, 'a', 'a@a.caaz', '62c77f3681888d0dc1eb', '2019-01-09 15:38:10.143231'),
(16, 'aa', 'a@a.caaadz', 'de8bfc8039907d732a8f', '2019-01-09 15:38:33.735382'),
(17, 'aa', 'a@a.caaadza', '361e356cd74db670b020', '2019-01-09 15:41:15.599031'),
(18, 'test', 'testa@a.d', '1cf24fb0f4e3cb4a0d5f', '2019-01-10 08:55:08.009469'),
(19, 'test', 'testa@a.da', '10e419ec037936808d29', '2019-01-10 08:56:47.457736'),
(20, 'test', 'testa@a.daa', '265e4ed1f0e7b6da053d', '2019-01-10 09:00:06.770648'),
(21, 'test', 'testa@a.daaa', 'ea107d7667b29ba008cd', '2019-01-10 09:02:06.867846'),
(22, 'test', 'testa@a.daaaa', '5a15d97556a0aee1e8dc', '2019-01-10 09:05:58.865968'),
(23, 'test', 'testa@a.daaaas', 'c6ec7deece87df89a755', '2019-01-10 09:07:43.179886'),
(24, 'test', 'testa@a.daaaas', 'c6ec7deece87df89a755', '2019-01-10 09:07:43.187883'),
(25, 'test', 'testa@a.daaaasa', '6a45381405685be7c547', '2019-01-10 09:08:33.747504'),
(26, 'test', 'testa@a.daaaasa', '6a45381405685be7c547', '2019-01-10 09:08:33.751504'),
(27, 'test', 'testa@a.daaaasad', '6f46d3176491202c17c8', '2019-01-10 09:09:16.626304'),
(28, 'test', 'testa@a.daaaasad', '6f46d3176491202c17c8', '2019-01-10 09:09:16.634304'),
(29, 'test', 'testa@a.daaaasadd', 'a2b34e7b3f4896f22a9e', '2019-01-10 09:10:28.208214'),
(30, 'dza', 'dz@zd.c', 'f4775b0bd8c1708182c7', '2019-01-10 09:11:28.484607'),
(31, 'dza', 'dz@zd.c', 'f4775b0bd8c1708182c7', '2019-01-10 09:11:28.492608'),
(32, 'dza', 'dz@zd.ca', 'ba5f8289d549ca24cf1f', '2019-01-10 09:12:16.524323'),
(33, 'dza', 'dz@zd.ca', 'ba5f8289d549ca24cf1f', '2019-01-10 09:12:16.532361'),
(34, 'dza', 'dz@zd.caa', '8bb04102bf99bae5ff81', '2019-01-10 09:17:25.932020'),
(35, 'test', 'tester@test.jojo', 'c844a6bc64bdcbd50b03', '2019-01-10 09:19:24.694812'),
(36, 'Luka', 'luka@luka.luka', 'bec170723ab9c6edef68', '2019-01-10 09:21:51.501046'),
(37, 'z', 'z@z.z', 'fbade9e36a3f36d3d676', '2019-01-10 11:02:03.657059'),
(38, 'qqqq', 'q@q.q', '3bad6af0fa4b8b330d16', '2019-01-10 11:06:19.330141'),
(39, 'abc', 'a@b.c', 'abc', '2019-01-10 11:10:10.133750');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
