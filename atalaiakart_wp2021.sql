-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 17/11/2021 às 18:55
-- Versão do servidor: 10.3.32-MariaDB
-- Versão do PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `atalaiakart_wp2021`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_commentmeta`
--

CREATE TABLE `wpmx_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_comments`
--

CREATE TABLE `wpmx_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpmx_comments`
--

INSERT INTO `wpmx_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-10-29 13:39:29', '2021-10-29 16:39:29', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_links`
--

CREATE TABLE `wpmx_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_options`
--

CREATE TABLE `wpmx_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpmx_options`
--

INSERT INTO `wpmx_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://atalaiakart.r2sites.digital', 'yes'),
(2, 'home', 'https://atalaiakart.r2sites.digital', 'yes'),
(3, 'blogname', 'Atalaia Kart', 'yes'),
(4, 'blogdescription', 'Aracaju - SE', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'suporte@r2agenciaweb.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:137:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"galerias/?$\";s:28:\"index.php?post_type=galerias\";s:41:\"galerias/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=galerias&feed=$matches[1]\";s:36:\"galerias/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=galerias&feed=$matches[1]\";s:28:\"galerias/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=galerias&paged=$matches[1]\";s:9:\"slider/?$\";s:26:\"index.php?post_type=slider\";s:39:\"slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:34:\"slider/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:26:\"slider/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=slider&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"galerias/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"galerias/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"galerias/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"galerias/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"galerias/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"galerias/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"galerias/(.+?)/embed/?$\";s:41:\"index.php?galerias=$matches[1]&embed=true\";s:27:\"galerias/(.+?)/trackback/?$\";s:35:\"index.php?galerias=$matches[1]&tb=1\";s:47:\"galerias/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?galerias=$matches[1]&feed=$matches[2]\";s:42:\"galerias/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?galerias=$matches[1]&feed=$matches[2]\";s:35:\"galerias/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?galerias=$matches[1]&paged=$matches[2]\";s:42:\"galerias/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?galerias=$matches[1]&cpage=$matches[2]\";s:31:\"galerias/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?galerias=$matches[1]&page=$matches[2]\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:47:\"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:42:\"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:85:\"/home/atalaiakart/public_html/wp-content/themes/r2agenciaweb/assets/css/css/style.css\";i:1;s:70:\"/home/atalaiakart/public_html/wp-content/themes/r2agenciaweb/style.css\";i:2;s:71:\"/home/atalaiakart/public_html/wp-content/themes/r2agenciaweb/header.php\";i:3;s:80:\"/home/atalaiakart/public_html/wp-content/themes/r2agenciaweb/page-quem-somos.php\";i:4;s:90:\"/home/atalaiakart/public_html/wp-content/themes/r2agenciaweb/page-quem-pode-participar.php\";}', 'no'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wpmx_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1651077561', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wpmx_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wpmx_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1637188772;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1637210372;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1637253571;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637253611;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637253613;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637426371;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635526893;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(122, 'https_detection_errors', 'a:0:{}', 'yes'),
(142, 'can_compress_scripts', '1', 'no'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(158, 'acf_version', '5.9.7', 'yes'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(170, 'cptui_new_install', 'false', 'yes'),
(182, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1637185788;s:7:\"checked\";a:2:{s:12:\"r2agenciaweb\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(183, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1635526307;s:7:\"version\";s:5:\"5.5.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(184, 'current_theme', 'R2 Agência Digital', 'yes'),
(185, 'theme_mods_r2agenciaweb', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(186, 'theme_switched', '', 'yes'),
(209, 'jetpack_active_modules', 'a:0:{}', 'yes'),
(213, 'ai1wm_updater', 'a:0:{}', 'yes'),
(221, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":2,\"critical\":0}', 'yes'),
(238, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(239, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(244, 'options_tipo_de_transicao_do_slider', 'fadein', 'no'),
(245, '_options_tipo_de_transicao_do_slider', 'field_60de7dc8aa48e', 'no'),
(246, 'options_usar_setas', '1', 'no'),
(247, '_options_usar_setas', 'field_60e2a3e838cba', 'no'),
(248, 'options_seta_direita', '23', 'no'),
(249, '_options_seta_direita', 'field_60defe331c078', 'no'),
(250, 'options_seta_esquerda', '24', 'no'),
(251, '_options_seta_esquerda', 'field_60defe0679830', 'no'),
(265, 'cptui_post_types', 'a:1:{s:8:\"galerias\";a:30:{s:4:\"name\";s:8:\"galerias\";s:5:\"label\";s:17:\"Galerias de Fotos\";s:14:\"singular_label\";s:16:\"Galeria de Fotos\";s:11:\"description\";s:47:\"Fotos dos eventos e notícias da instituição.\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:24:\"dashicons-format-gallery\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:7:\"Galeria\";s:9:\"all_items\";s:5:\"Todos\";s:7:\"add_new\";s:14:\"Adicionar novo\";s:12:\"add_new_item\";s:22:\"Adicionar novo Galeria\";s:9:\"edit_item\";s:14:\"Editar Galeria\";s:8:\"new_item\";s:12:\"Novo Galeria\";s:9:\"view_item\";s:11:\"Ver Galeria\";s:10:\"view_items\";s:11:\"Ver Galeria\";s:12:\"search_items\";s:17:\"Pesquisar Galeria\";s:9:\"not_found\";s:25:\"Nenhum Galeria encontrado\";s:18:\"not_found_in_trash\";s:36:\"Nenhum Galeria encontrado na lixeira\";s:6:\"parent\";s:19:\"Galeria ascendente:\";s:14:\"featured_image\";s:34:\"Imagem destacada para esse Galeria\";s:18:\"set_featured_image\";s:42:\"Definir imagem destacada para esse Galeria\";s:21:\"remove_featured_image\";s:42:\"Remover imagem destacada para esse Galeria\";s:18:\"use_featured_image\";s:44:\"Usar como imagem destacada para esse Galeria\";s:8:\"archives\";s:19:\"Arquivos de Galeria\";s:16:\"insert_into_item\";s:18:\"Inserir no Galeria\";s:21:\"uploaded_to_this_item\";s:24:\"Enviar para esse Galeria\";s:17:\"filter_items_list\";s:24:\"Filtrar lista de Galeria\";s:21:\"items_list_navigation\";s:31:\"Navegação na lista de Galeria\";s:10:\"items_list\";s:16:\"Lista de Galeria\";s:10:\"attributes\";s:20:\"Atributos de Galeria\";s:14:\"name_admin_bar\";s:7:\"Galeria\";s:14:\"item_published\";s:17:\"Galeria publicado\";s:24:\"item_published_privately\";s:35:\"Galeria publicado de forma privada.\";s:22:\"item_reverted_to_draft\";s:32:\"Galeria revertido para rascunho.\";s:14:\"item_scheduled\";s:16:\"Galeria agendado\";s:12:\"item_updated\";s:19:\"Galeria atualizado.\";s:17:\"parent_item_colon\";s:19:\"Galeria ascendente:\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(552, 'new_admin_email', 'suporte@r2agenciaweb.com.br', 'yes'),
(565, 'active_plugins', 'a:6:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:23:\"r2-slider/r2-slider.php\";}', 'yes'),
(566, 'ai1wm_secret_key', 'Ep8FJ9BhA7uU', 'yes'),
(568, 'template', 'r2agenciaweb', 'yes'),
(570, 'stylesheet', 'r2agenciaweb', 'yes'),
(571, 'ai1wm_status', 'a:3:{s:4:\"type\";s:4:\"done\";s:5:\"title\";s:40:\"Seus dados foram importados com sucesso!\";s:7:\"message\";s:533:\"You need to perform two more steps:<br /><strong>1. You must save your permalinks structure twice. <a class=\"ai1wm-no-underline\" href=\"https://atalaiakart.r2sites.digital/wp-admin/options-permalink.php#submit\" target=\"_blank\">Permalinks Settings</a></strong> <small>(opens a new window)</small><br /><strong>2. <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">Optionally, review the plugin</a>.</strong> <small>(opens a new window)</small>\";}', 'yes'),
(576, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(711, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1637185785;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(713, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:27:\"suporte@r2agenciaweb.com.br\";s:7:\"version\";s:5:\"5.8.2\";s:9:\"timestamp\";i:1636669155;}', 'no'),
(727, '_site_transient_timeout_php_check_96314025ffed7f9d1b2dac177cea1337', '1637463152', 'no'),
(728, '_site_transient_php_check_96314025ffed7f9d1b2dac177cea1337', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(751, '_transient_timeout_acf_plugin_updates', '1637217350', 'no'),
(752, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:4:\"5.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.7\";}}', 'no'),
(762, '_site_transient_timeout_browser_b4088f046bf9a570f2964ffc86d258ff', '1637705101', 'no'),
(763, '_site_transient_browser_b4088f046bf9a570f2964ffc86d258ff', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.45\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(777, '_transient_is_multi_author', '0', 'yes'),
(782, '_site_transient_timeout_theme_roots', '1637187587', 'no'),
(783, '_site_transient_theme_roots', 'a:2:{s:12:\"r2agenciaweb\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(784, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1637185788;s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:4:\"5.11\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.50\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.50.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2626840\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2626840\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:6:\"5.2.17\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:4:\"5.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.10.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.10.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2549362\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2549362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2549362\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2549362\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:27:\"maintenance/maintenance.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/maintenance\";s:4:\"slug\";s:11:\"maintenance\";s:6:\"plugin\";s:27:\"maintenance/maintenance.php\";s:11:\"new_version\";s:4:\"4.03\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/maintenance/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/maintenance.4.03.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/maintenance/assets/icon-256x256.png?rev=2160987\";s:2:\"1x\";s:64:\"https://ps.w.org/maintenance/assets/icon-128x128.png?rev=2160987\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/maintenance/assets/banner-772x250.png?rev=1637471\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.10.2\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.7\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.77\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.5.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.10.0\";s:27:\"maintenance/maintenance.php\";s:4:\"4.03\";s:23:\"r2-slider/r2-slider.php\";s:5:\"1.0.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_postmeta`
--

CREATE TABLE `wpmx_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpmx_postmeta`
--

INSERT INTO `wpmx_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(11, 9, '_form', '<div class=\"contato-form\">\n        <div class=\"row\">\n\n            <div class=\"col-md-12\">\n                [text* nome placeholder \"Nome\"]\n            </div>\n\n        </div>                              \n\n\n        <div class=\"row\">\n\n            <div class=\"col-md-6\">\n                [email* email placeholder \"E-mail\"]\n            </div>\n\n            <div class=\"col-md-6\">\n                [tel* telefone placeholder \"Telefone\"]\n            </div>\n\n        </div>\n\n        <div class=\"row\">\n\n            <div class=\"col-md-12\">\n                [select assunto \"Dúvidas\" \"Sugestões\" \"Elogios\" \"Reclamações\"]\n            </div>          \n\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-md-12\">\n                [textarea mensagem placeholder \"Mensagem\"]\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-md-12\">\n                [submit class:btn-send]\n            </div>\n        </div>\n\n</div>'),
(12, 9, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"[_site_title] \"[assunto]\"\";s:6:\"sender\";s:51:\"[_site_title] <suporte@atalaiakart.r2sites.digital>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:1823:\"<html lang=\"en\">\n  <body>\n    <table style=\"width: 100%; font-family: Open Sans, sans-serif;\">\n	  <thead style=\"background: #005c9b; text-align: left;\">\n		<th colspan=\"2\" style=\"padding: 20px; color: white; text-shadow: 1px 1px 0 rgba(0,0,0,.2);\">Contato</th>\n	  </thead>\n	  <tbody>\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>Nome:</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[nome]\n		  </td>\n		</tr>\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>E-mail</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[email]\n		  </td>\n		</tr>\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>Telefone</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[telefone]\n		  </td>\n		</tr>\n                \n                <tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>Assunto</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[assunto]\n		  </td>\n		</tr>\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>Mensagem</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[mensagem]\n		  </td>\n		</tr>\n	  </tbody>\n	  <tfoot style=\"text-align: left;\">\n	    <th colspan=\"2\" style=\"font-size: 10px; color: #005c9b; font-weight: 100; margin-top: 30px; display: block;\">\n              Mensagem enviado em <a href=\"https://valentinelegance.com.br/\" target=\"_blank\">Valentine Elegance</a>\n	    </th>\n	  </tfoot>\n    </table>\n  </body>\n</html>\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(13, 9, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:43:\"[_site_title] <suporte@r2agenciaweb.com.br>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:122:\"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(14, 9, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:27:\"Agradecemos a sua mensagem.\";s:12:\"mail_sent_ng\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:16:\"validation_error\";s:63:\"Um ou mais campos possuem um erro. Verifique e tente novamente.\";s:4:\"spam\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:24:\"O campo é obrigatório.\";s:16:\"invalid_too_long\";s:23:\"O campo é muito longo.\";s:17:\"invalid_too_short\";s:23:\"O campo é muito curto.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:26:\"O arquivo é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:12:\"invalid_date\";s:34:\"O formato de data está incorreto.\";s:14:\"date_too_early\";s:44:\"A data é anterior à mais antiga permitida.\";s:13:\"date_too_late\";s:44:\"A data é posterior à maior data permitida.\";s:14:\"invalid_number\";s:34:\"O formato de número é inválido.\";s:16:\"number_too_small\";s:46:\"O número é menor do que o mínimo permitido.\";s:16:\"number_too_large\";s:46:\"O número é maior do que o máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:13:\"invalid_email\";s:45:\"O endereço de e-mail informado é inválido.\";s:11:\"invalid_url\";s:19:\"A URL é inválida.\";s:11:\"invalid_tel\";s:35:\"O número de telefone é inválido.\";}'),
(15, 9, '_additional_settings', ''),
(16, 9, '_locale', 'pt_BR'),
(17, 10, '_edit_lock', '1635527092:1'),
(20, 13, '_edit_last', '1'),
(21, 13, '_edit_lock', '1636134776:1'),
(26, 13, 'desktop', '97'),
(27, 13, '_desktop', 'field_5f5133dfad7fb'),
(28, 13, 'mobile', '96'),
(29, 13, '_mobile', 'field_5f51347551ecc'),
(30, 13, 'link', 'https://api.whatsapp.com/send?phone=5579996866495'),
(31, 13, '_link', 'field_5f52de7051d42'),
(32, 13, 'abrir_link_em_uma_nova_janela', '1'),
(33, 13, '_abrir_link_em_uma_nova_janela', 'field_5f52e613a223b'),
(34, 16, '_edit_last', '1'),
(35, 16, '_edit_lock', '1636135293:1'),
(40, 16, 'desktop', '99'),
(41, 16, '_desktop', 'field_5f5133dfad7fb'),
(42, 16, 'mobile', '98'),
(43, 16, '_mobile', 'field_5f51347551ecc'),
(44, 16, 'link', '/precos-e-horarios'),
(45, 16, '_link', 'field_5f52de7051d42'),
(46, 16, 'abrir_link_em_uma_nova_janela', '0'),
(47, 16, '_abrir_link_em_uma_nova_janela', 'field_5f52e613a223b'),
(48, 19, '_edit_last', '1'),
(49, 19, '_edit_lock', '1635966263:1'),
(54, 19, 'desktop', '20'),
(55, 19, '_desktop', 'field_5f5133dfad7fb'),
(56, 19, 'mobile', '21'),
(57, 19, '_mobile', 'field_5f51347551ecc'),
(58, 19, 'link', ''),
(59, 19, '_link', 'field_5f52de7051d42'),
(60, 19, 'abrir_link_em_uma_nova_janela', '0'),
(61, 19, '_abrir_link_em_uma_nova_janela', 'field_5f52e613a223b'),
(62, 22, '_wp_trash_meta_status', 'publish'),
(63, 22, '_wp_trash_meta_time', '1635770451'),
(64, 23, '_wp_attached_file', '2021/11/right.png'),
(65, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:17:\"2021/11/right.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 24, '_wp_attached_file', '2021/11/left.png'),
(67, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:16:\"2021/11/left.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 26, '_edit_last', '1'),
(69, 26, '_edit_lock', '1635795631:1'),
(70, 30, '_edit_last', '1'),
(71, 30, '_edit_lock', '1635792911:1'),
(72, 34, '_edit_last', '1'),
(73, 34, '_edit_lock', '1636375725:1'),
(144, 34, 'imagem_principal', '169'),
(145, 34, '_imagem_principal', 'field_61801f64e1146'),
(146, 34, 'galeria_de_fotos', 'a:78:{i:0;s:3:\"100\";i:1;s:3:\"101\";i:2;s:3:\"102\";i:3;s:3:\"103\";i:4;s:3:\"104\";i:5;s:3:\"105\";i:6;s:3:\"106\";i:7;s:3:\"107\";i:8;s:3:\"108\";i:9;s:3:\"109\";i:10;s:3:\"110\";i:11;s:3:\"111\";i:12;s:3:\"112\";i:13;s:3:\"113\";i:14;s:3:\"114\";i:15;s:3:\"115\";i:16;s:3:\"116\";i:17;s:3:\"117\";i:18;s:3:\"118\";i:19;s:3:\"119\";i:20;s:3:\"120\";i:21;s:3:\"121\";i:22;s:3:\"122\";i:23;s:3:\"123\";i:24;s:3:\"124\";i:25;s:3:\"125\";i:26;s:3:\"126\";i:27;s:3:\"127\";i:28;s:3:\"128\";i:29;s:3:\"129\";i:30;s:3:\"130\";i:31;s:3:\"131\";i:32;s:3:\"132\";i:33;s:3:\"133\";i:34;s:3:\"134\";i:35;s:3:\"135\";i:36;s:3:\"136\";i:37;s:3:\"137\";i:38;s:3:\"138\";i:39;s:3:\"139\";i:40;s:3:\"140\";i:41;s:3:\"141\";i:42;s:3:\"142\";i:43;s:3:\"143\";i:44;s:3:\"144\";i:45;s:3:\"145\";i:46;s:3:\"146\";i:47;s:3:\"147\";i:48;s:3:\"148\";i:49;s:3:\"149\";i:50;s:3:\"150\";i:51;s:3:\"151\";i:52;s:3:\"152\";i:53;s:3:\"153\";i:54;s:3:\"154\";i:55;s:3:\"155\";i:56;s:3:\"156\";i:57;s:3:\"157\";i:58;s:3:\"158\";i:59;s:3:\"159\";i:60;s:3:\"160\";i:61;s:3:\"161\";i:62;s:3:\"162\";i:63;s:3:\"163\";i:64;s:3:\"164\";i:65;s:3:\"165\";i:66;s:3:\"166\";i:67;s:3:\"167\";i:68;s:3:\"168\";i:69;s:3:\"169\";i:70;s:3:\"170\";i:71;s:3:\"171\";i:72;s:3:\"172\";i:73;s:3:\"173\";i:74;s:3:\"174\";i:75;s:3:\"175\";i:76;s:3:\"176\";i:77;s:3:\"177\";}'),
(147, 34, '_galeria_de_fotos', 'field_61801f9be1147'),
(148, 34, 'descricao', ''),
(149, 34, '_descricao', 'field_6180238098aa1'),
(186, 77, '_edit_last', '1'),
(187, 77, '_edit_lock', '1635939114:1'),
(188, 77, 'imagem_principal', '69'),
(189, 77, '_imagem_principal', 'field_61801f64e1146'),
(190, 77, 'galeria_de_fotos', 'a:4:{i:0;s:2:\"69\";i:1;s:2:\"68\";i:2;s:2:\"67\";i:3;s:2:\"66\";}'),
(191, 77, '_galeria_de_fotos', 'field_61801f9be1147'),
(192, 77, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum nulla et dui ultrices hendrerit. Aliquam erat volutpat. Nam porta imperdiet gravida. Cras aliquam ligula eu odio rhoncus bibendum. Nam fermentum nisl leo, vel malesuada justo porta ac. Proin iaculis nibh in lectus convallis, gravida pharetra elit iaculis. Vivamus ac bibendum nisl, non blandit velit.'),
(193, 77, '_descricao', 'field_6180238098aa1'),
(194, 78, '_edit_last', '1'),
(195, 78, '_edit_lock', '1635795740:1'),
(196, 78, 'imagem_principal', '51'),
(197, 78, '_imagem_principal', 'field_61801f64e1146'),
(198, 78, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum nulla et dui ultrices hendrerit. Aliquam erat volutpat. Nam porta imperdiet gravida. Cras aliquam ligula eu odio rhoncus bibendum. Nam fermentum nisl leo, vel malesuada justo porta ac. Proin iaculis nibh in lectus convallis, gravida pharetra elit iaculis. Vivamus ac bibendum nisl, non blandit velit.'),
(199, 78, '_descricao', 'field_6180238098aa1'),
(200, 78, 'galeria_de_fotos', 'a:4:{i:0;s:2:\"51\";i:1;s:2:\"49\";i:2;s:2:\"50\";i:3;s:2:\"48\";}'),
(201, 78, '_galeria_de_fotos', 'field_61801f9be1147'),
(202, 79, '_edit_lock', '1635795783:1'),
(203, 81, '_edit_lock', '1635956680:1'),
(207, 19, '_wp_old_date', '2021-11-01'),
(208, 13, '_wp_old_date', '2021-11-01'),
(209, 89, '_wp_attached_file', '2021/11/favicon.png'),
(210, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:513;s:6:\"height\";i:511;s:4:\"file\";s:19:\"2021/11/favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 90, '_wp_attached_file', '2021/11/favicon-whats.png'),
(212, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:513;s:6:\"height\";i:513;s:4:\"file\";s:25:\"2021/11/favicon-whats.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 91, '_wp_attached_file', '2021/11/logo-horizontal.png'),
(214, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:301;s:6:\"height\";i:65;s:4:\"file\";s:27:\"2021/11/logo-horizontal.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 92, '_wp_attached_file', '2021/11/logo-vertical.png'),
(216, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:301;s:6:\"height\";i:124;s:4:\"file\";s:25:\"2021/11/logo-vertical.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 19, '_wp_trash_meta_status', 'publish'),
(233, 19, '_wp_trash_meta_time', '1636133793'),
(234, 19, '_wp_desired_post_slug', 'slide03'),
(235, 96, '_wp_attached_file', '2021/11/banner_mobile1.jpg'),
(236, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:26:\"2021/11/banner_mobile1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(237, 97, '_wp_attached_file', '2021/11/banner_desktop1.jpg'),
(238, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:650;s:4:\"file\";s:27:\"2021/11/banner_desktop1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 13, 'window', '_blank'),
(240, 13, '_window', 'field_5f52e5a0fbc90'),
(241, 98, '_wp_attached_file', '2021/11/banner_mobile2.jpg'),
(242, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:26:\"2021/11/banner_mobile2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 99, '_wp_attached_file', '2021/11/banner_desktop2.jpg'),
(244, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:650;s:4:\"file\";s:27:\"2021/11/banner_desktop2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(263, 78, '_wp_trash_meta_status', 'publish'),
(264, 78, '_wp_trash_meta_time', '1636135488'),
(265, 78, '_wp_desired_post_slug', 'galeria-003'),
(266, 77, '_wp_trash_meta_status', 'publish'),
(267, 77, '_wp_trash_meta_time', '1636135492'),
(268, 77, '_wp_desired_post_slug', 'galeria-002'),
(269, 100, '_wp_attached_file', '2021/11/atalaia-kart-galeria-1.jpg'),
(270, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2021/11/atalaia-kart-galeria-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625761843\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(271, 101, '_wp_attached_file', '2021/11/atalaia-kart-galeria-2.jpg'),
(272, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2021/11/atalaia-kart-galeria-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625761894\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(273, 102, '_wp_attached_file', '2021/11/atalaia-kart-galeria-3.jpg'),
(274, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2021/11/atalaia-kart-galeria-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625761927\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(275, 103, '_wp_attached_file', '2021/11/atalaia-kart-galeria-4.jpg'),
(276, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2021/11/atalaia-kart-galeria-4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625762270\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(277, 104, '_wp_attached_file', '2021/11/atalaia-kart-galeria-5.jpg'),
(278, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1621;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2021/11/atalaia-kart-galeria-5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625762287\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(279, 105, '_wp_attached_file', '2021/11/atalaia-kart-galeria-6.jpg'),
(280, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2021/11/atalaia-kart-galeria-6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625762349\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 106, '_wp_attached_file', '2021/11/atalaia-kart-galeria-7.jpg'),
(282, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2021/11/atalaia-kart-galeria-7.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625762486\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 107, '_wp_attached_file', '2021/11/atalaia-kart-galeria-8.jpg'),
(284, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2021/11/atalaia-kart-galeria-8.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625762549\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(285, 108, '_wp_attached_file', '2021/11/atalaia-kart-galeria-9.jpg'),
(286, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2021/11/atalaia-kart-galeria-9.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625762599\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"42\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(287, 109, '_wp_attached_file', '2021/11/atalaia-kart-galeria-10.jpg'),
(288, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-10.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625762671\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(289, 110, '_wp_attached_file', '2021/11/atalaia-kart-galeria-11.jpg'),
(290, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-11.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625762732\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(291, 111, '_wp_attached_file', '2021/11/atalaia-kart-galeria-12.jpg'),
(292, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-12.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625762743\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(293, 112, '_wp_attached_file', '2021/11/atalaia-kart-galeria-13.jpg'),
(294, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-13.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625762816\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(295, 113, '_wp_attached_file', '2021/11/atalaia-kart-galeria-14.jpg'),
(296, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-14.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763011\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(297, 114, '_wp_attached_file', '2021/11/atalaia-kart-galeria-15.jpg'),
(298, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-15.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763029\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(299, 115, '_wp_attached_file', '2021/11/atalaia-kart-galeria-16.jpg'),
(300, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-16.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763073\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(301, 116, '_wp_attached_file', '2021/11/atalaia-kart-galeria-17.jpg'),
(302, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1162;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-17.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763121\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(303, 117, '_wp_attached_file', '2021/11/atalaia-kart-galeria-18.jpg'),
(304, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-18.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763166\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 118, '_wp_attached_file', '2021/11/atalaia-kart-galeria-19.jpg'),
(306, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-19.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763220\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 119, '_wp_attached_file', '2021/11/atalaia-kart-galeria-20.jpg'),
(308, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-20.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763677\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:6:\"0.0004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 120, '_wp_attached_file', '2021/11/atalaia-kart-galeria-21.jpg'),
(310, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-21.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763685\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:8:\"0.000625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 121, '_wp_attached_file', '2021/11/atalaia-kart-galeria-22.jpg'),
(312, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-22.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763689\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:8:\"0.000625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 122, '_wp_attached_file', '2021/11/atalaia-kart-galeria-23.jpg'),
(314, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-23.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763694\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:8:\"0.000625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 123, '_wp_attached_file', '2021/11/atalaia-kart-galeria-24.jpg'),
(316, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-24.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763873\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(317, 124, '_wp_attached_file', '2021/11/atalaia-kart-galeria-25.jpg'),
(318, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-25.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763881\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 125, '_wp_attached_file', '2021/11/atalaia-kart-galeria-26.jpg'),
(320, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-26.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625763957\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(321, 126, '_wp_attached_file', '2021/11/atalaia-kart-galeria-27.jpg'),
(322, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-27.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764012\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(323, 127, '_wp_attached_file', '2021/11/atalaia-kart-galeria-28.jpg'),
(324, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-28.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764367\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(325, 128, '_wp_attached_file', '2021/11/atalaia-kart-galeria-29.jpg'),
(326, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-29.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764394\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(327, 129, '_wp_attached_file', '2021/11/atalaia-kart-galeria-30.jpg'),
(328, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-30.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764436\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(329, 130, '_wp_attached_file', '2021/11/atalaia-kart-galeria-31.jpg'),
(330, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-31.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764456\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(331, 131, '_wp_attached_file', '2021/11/atalaia-kart-galeria-32.jpg'),
(332, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-32.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764497\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 132, '_wp_attached_file', '2021/11/atalaia-kart-galeria-33.jpg'),
(334, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-33.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764519\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(335, 133, '_wp_attached_file', '2021/11/atalaia-kart-galeria-34.jpg'),
(336, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-34.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764543\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(337, 134, '_wp_attached_file', '2021/11/atalaia-kart-galeria-35.jpg'),
(338, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-35.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764554\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 135, '_wp_attached_file', '2021/11/atalaia-kart-galeria-36.jpg'),
(340, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-36.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764565\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 136, '_wp_attached_file', '2021/11/atalaia-kart-galeria-37.jpg'),
(342, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-37.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764594\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 137, '_wp_attached_file', '2021/11/atalaia-kart-galeria-38.jpg'),
(344, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-38.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764665\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 138, '_wp_attached_file', '2021/11/atalaia-kart-galeria-39.jpg'),
(346, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-39.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764678\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(347, 139, '_wp_attached_file', '2021/11/atalaia-kart-galeria-40.jpg'),
(348, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-40.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764687\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 140, '_wp_attached_file', '2021/11/atalaia-kart-galeria-41.jpg'),
(350, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-41.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764708\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(351, 141, '_wp_attached_file', '2021/11/atalaia-kart-galeria-42.jpg'),
(352, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-42.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764716\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(353, 142, '_wp_attached_file', '2021/11/atalaia-kart-galeria-43.jpg'),
(354, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-43.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764766\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(355, 143, '_wp_attached_file', '2021/11/atalaia-kart-galeria-44.jpg'),
(356, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-44.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764770\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(357, 144, '_wp_attached_file', '2021/11/atalaia-kart-galeria-45.jpg'),
(358, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-45.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764796\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 145, '_wp_attached_file', '2021/11/atalaia-kart-galeria-46.jpg'),
(360, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-46.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764857\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(361, 146, '_wp_attached_file', '2021/11/atalaia-kart-galeria-47.jpg'),
(362, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-47.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764875\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(363, 147, '_wp_attached_file', '2021/11/atalaia-kart-galeria-48.jpg'),
(364, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-48.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764902\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(365, 148, '_wp_attached_file', '2021/11/atalaia-kart-galeria-49.jpg'),
(366, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-49.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764948\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(367, 149, '_wp_attached_file', '2021/11/atalaia-kart-galeria-50.jpg'),
(368, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-50.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625764998\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(369, 150, '_wp_attached_file', '2021/11/atalaia-kart-galeria-51.jpg'),
(370, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-51.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625765009\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(371, 151, '_wp_attached_file', '2021/11/atalaia-kart-galeria-52.jpg'),
(372, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-52.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625765140\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(373, 152, '_wp_attached_file', '2021/11/atalaia-kart-galeria-53.jpg'),
(374, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-53.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625765154\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(375, 153, '_wp_attached_file', '2021/11/atalaia-kart-galeria-54.jpg');
INSERT INTO `wpmx_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(376, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-54.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625765201\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 154, '_wp_attached_file', '2021/11/atalaia-kart-galeria-55.jpg'),
(378, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-55.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625765269\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 155, '_wp_attached_file', '2021/11/atalaia-kart-galeria-56.jpg'),
(380, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-56.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625765328\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 156, '_wp_attached_file', '2021/11/atalaia-kart-galeria-57.jpg'),
(382, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-57.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625765351\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 157, '_wp_attached_file', '2021/11/atalaia-kart-galeria-58.jpg'),
(384, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-58.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625765372\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(385, 158, '_wp_attached_file', '2021/11/atalaia-kart-galeria-59.jpg'),
(386, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-59.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625765392\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(387, 159, '_wp_attached_file', '2021/11/atalaia-kart-galeria-60.jpg'),
(388, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-60.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766073\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"29\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 160, '_wp_attached_file', '2021/11/atalaia-kart-galeria-61.jpg'),
(390, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:989;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-61.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766225\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"23\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(391, 161, '_wp_attached_file', '2021/11/atalaia-kart-galeria-62.jpg'),
(392, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-62.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766279\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"31\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(393, 162, '_wp_attached_file', '2021/11/atalaia-kart-galeria-63.jpg'),
(394, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-63.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766370\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(395, 163, '_wp_attached_file', '2021/11/atalaia-kart-galeria-64.jpg'),
(396, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-64.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766373\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(397, 164, '_wp_attached_file', '2021/11/atalaia-kart-galeria-65.jpg'),
(398, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-65.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766376\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(399, 165, '_wp_attached_file', '2021/11/atalaia-kart-galeria-66.jpg'),
(400, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-66.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766376\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(401, 166, '_wp_attached_file', '2021/11/atalaia-kart-galeria-67.jpg'),
(402, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-67.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766381\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(403, 167, '_wp_attached_file', '2021/11/atalaia-kart-galeria-68.jpg'),
(404, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-68.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766394\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(405, 168, '_wp_attached_file', '2021/11/atalaia-kart-galeria-69.jpg'),
(406, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-69.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766395\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(407, 169, '_wp_attached_file', '2021/11/atalaia-kart-galeria-70.jpg'),
(408, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-70.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766435\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(409, 170, '_wp_attached_file', '2021/11/atalaia-kart-galeria-71.jpg'),
(410, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-71.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766931\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(411, 171, '_wp_attached_file', '2021/11/atalaia-kart-galeria-72.jpg'),
(412, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-72.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766931\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(413, 172, '_wp_attached_file', '2021/11/atalaia-kart-galeria-73.jpg'),
(414, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-73.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625766992\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(415, 173, '_wp_attached_file', '2021/11/atalaia-kart-galeria-74.jpg'),
(416, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-74.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625767596\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(417, 174, '_wp_attached_file', '2021/11/atalaia-kart-galeria-75.jpg'),
(418, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1645;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-75.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625768138\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(419, 175, '_wp_attached_file', '2021/11/atalaia-kart-galeria-76.jpg'),
(420, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-76.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625768142\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(421, 176, '_wp_attached_file', '2021/11/atalaia-kart-galeria-77.jpg'),
(422, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-77.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625768742\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"33\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(423, 177, '_wp_attached_file', '2021/11/atalaia-kart-galeria-78.jpg'),
(424, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2021/11/atalaia-kart-galeria-78.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1625768745\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(425, 178, '_edit_lock', '1636376154:1'),
(426, 180, '_edit_lock', '1636376163:1'),
(427, 182, '_edit_lock', '1636377096:1'),
(428, 184, '_form', '<div class=\"contato-form\">\n        <div class=\"row\">\n\n            <div class=\"col-md-6\">\n                [text* empresa placeholder \"Empresa\"]\n            </div>\n            <div class=\"col-md-6\">\n                [text* nome placeholder \"Nome\"]\n            </div>\n\n        </div>                              \n\n\n        <div class=\"row\">\n\n            <div class=\"col-md-6\">\n                [email* email placeholder \"E-mail\"]\n            </div>\n\n            <div class=\"col-md-6\">\n                [tel* telefone placeholder \"Telefone\"]\n            </div>\n\n        </div>\n\n        <div class=\"row\">\n\n            <div class=\"col-md-6\">\n<label>Tipo de Evento:\n                [select evento \"Eventos Corporativos\" \"Festas de Aniversário\" \"Mini-Campeonatos\" \"Agências de Viagens\"]\n</label>\n            </div> \n\n<div class=\"col-md-6\">\n<label>Data do Evento:\n               [date data-do-evento]\n</label>\n            </div>         \n\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-md-12\">\n                [textarea mensagem placeholder \"Mensagem\"]\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-md-12\">\n                [submit class:btn-send]\n            </div>\n        </div>\n\n</div>'),
(429, 184, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:53:\"[_site_title] <wordpress@atalaiakart.r2sites.digital>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:2312:\"<html lang=\"en\">\n  <body>\n    <table style=\"width: 100%; font-family: Open Sans, sans-serif;\">\n	  <thead style=\"background: #005c9b; text-align: left;\">\n		<th colspan=\"2\" style=\"padding: 20px; color: white; text-shadow: 1px 1px 0 rgba(0,0,0,.2);\">Contato</th>\n	  </thead>\n	  <tbody>\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>Empresa:</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[empresa]\n		  </td>\n		</tr>\n<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>Nome:</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[nome]\n		  </td>\n		</tr>\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>E-mail</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[email]\n		  </td>\n		</tr>\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>Telefone</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[telefone]\n		  </td>\n		</tr>\n                \n                <tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>Tipo de Evento</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[evento]\n		  </td>\n		</tr>\n<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>Data do Evento</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[data-do-evento]\n		  </td>\n		</tr>\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\n			<b>Mensagem</b>\n		  </td>\n		  <td style=\"padding: 10px; color: #202020;\">\n		  	[mensagem]\n		  </td>\n		</tr>\n	  </tbody>\n	  <tfoot style=\"text-align: left;\">\n	    <th colspan=\"2\" style=\"font-size: 10px; color: #005c9b; font-weight: 100; margin-top: 30px; display: block;\">\n              Mensagem enviado em <a href=\"https://valentinelegance.com.br/\" target=\"_blank\">Valentine Elegance</a>\n	    </th>\n	  </tfoot>\n    </table>\n  </body>\n</html>\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(430, 184, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:53:\"[_site_title] <wordpress@atalaiakart.r2sites.digital>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:122:\"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(431, 184, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:27:\"Agradecemos a sua mensagem.\";s:12:\"mail_sent_ng\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:16:\"validation_error\";s:63:\"Um ou mais campos possuem um erro. Verifique e tente novamente.\";s:4:\"spam\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:24:\"O campo é obrigatório.\";s:16:\"invalid_too_long\";s:23:\"O campo é muito longo.\";s:17:\"invalid_too_short\";s:23:\"O campo é muito curto.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:26:\"O arquivo é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:12:\"invalid_date\";s:34:\"O formato de data está incorreto.\";s:14:\"date_too_early\";s:44:\"A data é anterior à mais antiga permitida.\";s:13:\"date_too_late\";s:44:\"A data é posterior à maior data permitida.\";s:14:\"invalid_number\";s:34:\"O formato de número é inválido.\";s:16:\"number_too_small\";s:46:\"O número é menor do que o mínimo permitido.\";s:16:\"number_too_large\";s:46:\"O número é maior do que o máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:13:\"invalid_email\";s:45:\"O endereço de e-mail informado é inválido.\";s:11:\"invalid_url\";s:19:\"A URL é inválida.\";s:11:\"invalid_tel\";s:35:\"O número de telefone é inválido.\";}'),
(432, 184, '_additional_settings', ''),
(433, 184, '_locale', 'pt_BR');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_posts`
--

CREATE TABLE `wpmx_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpmx_posts`
--

INSERT INTO `wpmx_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-10-29 13:39:29', '2021-10-29 16:39:29', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-10-29 13:39:29', '2021-10-29 16:39:29', '', 0, 'https://atalaiakart.r2sites.digital/?p=1', 0, 'post', '', 1),
(9, 1, '2021-10-29 13:51:46', '2021-10-29 16:51:46', '<div class=\"contato-form\">\r\n        <div class=\"row\">\r\n\r\n            <div class=\"col-md-12\">\r\n                [text* nome placeholder \"Nome\"]\r\n            </div>\r\n\r\n        </div>                              \r\n\r\n\r\n        <div class=\"row\">\r\n\r\n            <div class=\"col-md-6\">\r\n                [email* email placeholder \"E-mail\"]\r\n            </div>\r\n\r\n            <div class=\"col-md-6\">\r\n                [tel* telefone placeholder \"Telefone\"]\r\n            </div>\r\n\r\n        </div>\r\n\r\n        <div class=\"row\">\r\n\r\n            <div class=\"col-md-12\">\r\n                [select assunto \"Dúvidas\" \"Sugestões\" \"Elogios\" \"Reclamações\"]\r\n            </div>          \r\n\r\n        </div>\r\n\r\n        <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n                [textarea mensagem placeholder \"Mensagem\"]\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n                [submit class:btn-send]\r\n            </div>\r\n        </div>\r\n\r\n</div>\n1\n[_site_title] \"[assunto]\"\n[_site_title] <suporte@atalaiakart.r2sites.digital>\n[_site_admin_email]\n<html lang=\"en\">\r\n  <body>\r\n    <table style=\"width: 100%; font-family: Open Sans, sans-serif;\">\r\n	  <thead style=\"background: #005c9b; text-align: left;\">\r\n		<th colspan=\"2\" style=\"padding: 20px; color: white; text-shadow: 1px 1px 0 rgba(0,0,0,.2);\">Contato</th>\r\n	  </thead>\r\n	  <tbody>\r\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>Nome:</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[nome]\r\n		  </td>\r\n		</tr>\r\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>E-mail</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[email]\r\n		  </td>\r\n		</tr>\r\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>Telefone</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[telefone]\r\n		  </td>\r\n		</tr>\r\n                \r\n                <tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>Assunto</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[assunto]\r\n		  </td>\r\n		</tr>\r\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>Mensagem</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[mensagem]\r\n		  </td>\r\n		</tr>\r\n	  </tbody>\r\n	  <tfoot style=\"text-align: left;\">\r\n	    <th colspan=\"2\" style=\"font-size: 10px; color: #005c9b; font-weight: 100; margin-top: 30px; display: block;\">\r\n              Mensagem enviado em <a href=\"https://valentinelegance.com.br/\" target=\"_blank\" rel=\"noopener\">Valentine Elegance</a>\r\n	    </th>\r\n	  </tfoot>\r\n    </table>\r\n  </body>\r\n</html>\nReply-To: [email]\n\n1\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <suporte@r2agenciaweb.com.br>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Venha nos Visitar', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1', '', '', '2021-11-16 19:06:55', '2021-11-16 22:06:55', '', 0, 'https://atalaiakart.r2sites.digital/?post_type=wpcf7_contact_form&#038;p=9', 0, 'wpcf7_contact_form', '', 0),
(10, 1, '2021-10-29 14:01:59', '2021-10-29 17:01:59', '', 'Início', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2021-10-29 14:01:59', '2021-10-29 17:01:59', '', 0, 'https://atalaiakart.r2sites.digital/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-10-29 14:01:59', '2021-10-29 17:01:59', '', 'Início', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-10-29 14:01:59', '2021-10-29 17:01:59', '', 10, 'https://atalaiakart.r2sites.digital/?p=11', 0, 'revision', '', 0),
(13, 1, '2021-11-02 09:35:42', '2021-11-02 12:35:42', '', 'slide001', '', 'publish', 'closed', 'closed', '', 'slide001', '', '', '2021-11-05 14:55:15', '2021-11-05 17:55:15', '', 0, 'https://atalaiakart.r2sites.digital/?post_type=slider&#038;p=13', 0, 'slider', '', 0),
(16, 1, '2021-11-01 09:36:03', '2021-11-01 12:36:03', '', 'slide002', '', 'publish', 'closed', 'closed', '', 'slide002', '', '', '2021-11-05 14:56:14', '2021-11-05 17:56:14', '', 0, 'https://atalaiakart.r2sites.digital/?post_type=slider&#038;p=16', 0, 'slider', '', 0),
(19, 1, '2021-10-01 09:36:23', '2021-10-01 12:36:23', '', 'slide03', '', 'trash', 'closed', 'closed', '', 'slide03__trashed', '', '', '2021-11-05 14:36:33', '2021-11-05 17:36:33', '', 0, 'https://atalaiakart.r2sites.digital/?post_type=slider&#038;p=19', 0, 'slider', '', 0),
(22, 1, '2021-11-01 09:40:51', '2021-11-01 12:40:51', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-01 12:40:51\"\n    },\n    \"page_on_front\": {\n        \"value\": \"10\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-01 12:40:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '412fb61f-bba4-4cde-9ac4-4b72d1310859', '', '', '2021-11-01 09:40:51', '2021-11-01 12:40:51', '', 0, 'https://atalaiakart.r2sites.digital/2021/11/01/412fb61f-bba4-4cde-9ac4-4b72d1310859/', 0, 'customize_changeset', '', 0),
(23, 1, '2021-11-01 10:26:57', '2021-11-01 13:26:57', '', 'right', '', 'inherit', 'open', 'closed', '', 'right', '', '', '2021-11-01 10:26:57', '2021-11-01 13:26:57', '', 0, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/right.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2021-11-01 10:27:02', '2021-11-01 13:27:02', '', 'left', '', 'inherit', 'open', 'closed', '', 'left', '', '', '2021-11-01 10:27:02', '2021-11-01 13:27:02', '', 0, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/left.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2021-11-01 14:12:26', '2021-11-01 17:12:26', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"galerias\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Galerias', 'galerias', 'publish', 'closed', 'closed', '', 'group_61801f541d556', '', '', '2021-11-01 16:42:50', '2021-11-01 19:42:50', '', 0, 'https://atalaiakart.r2sites.digital/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2021-11-01 14:12:26', '2021-11-01 17:12:26', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:43:\"Envie a imagem que será a capa da galeria.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:2;s:10:\"mime_types\";s:0:\"\";}', 'Imagem Principal', 'imagem_principal', 'publish', 'closed', 'closed', '', 'field_61801f64e1146', '', '', '2021-11-01 14:12:26', '2021-11-01 17:12:26', '', 26, 'https://atalaiakart.r2sites.digital/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2021-11-01 14:12:27', '2021-11-01 17:12:27', 'a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:131:\"Envie todas as fotos relacionadas a este evento. De preferência, fotos com as mesmas dimensões.\r\nTamanho máximo de arquivo: 2MB.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:2;s:10:\"mime_types\";s:0:\"\";}', 'Galeria de Fotos', 'galeria_de_fotos', 'publish', 'closed', 'closed', '', 'field_61801f9be1147', '', '', '2021-11-01 16:42:50', '2021-11-01 19:42:50', '', 26, 'https://atalaiakart.r2sites.digital/?post_type=acf-field&#038;p=28', 2, 'acf-field', '', 0),
(30, 1, '2021-11-01 14:18:01', '2021-11-01 17:18:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"tour_virtual\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Tour Virtual', 'tour-virtual', 'publish', 'closed', 'closed', '', 'group_618020e6cd647', '', '', '2021-11-01 14:18:06', '2021-11-01 17:18:06', '', 0, 'https://atalaiakart.r2sites.digital/?post_type=acf-field-group&#038;p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2021-11-01 14:18:01', '2021-11-01 17:18:01', 'a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:47:\"Envie as imagens para compor este tour virtual.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:2;s:10:\"mime_types\";s:0:\"\";}', 'Galeria de Fotos', 'galeria_de_fotos', 'publish', 'closed', 'closed', '', 'field_618020ee28521', '', '', '2021-11-01 14:18:06', '2021-11-01 17:18:06', '', 30, 'https://atalaiakart.r2sites.digital/?post_type=acf-field&#038;p=31', 1, 'acf-field', '', 0),
(32, 1, '2021-11-01 14:18:01', '2021-11-01 17:18:01', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:49:\"Envie a imagem que será capa deste tour virtual.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:2;s:10:\"mime_types\";s:0:\"\";}', 'Imagem Principal', 'imagem_principal', 'publish', 'closed', 'closed', '', 'field_6180212828522', '', '', '2021-11-01 14:18:06', '2021-11-01 17:18:06', '', 30, 'https://atalaiakart.r2sites.digital/?post_type=acf-field&#038;p=32', 0, 'acf-field', '', 0),
(34, 1, '2021-11-01 14:24:32', '2021-11-01 17:24:32', '', 'Galeria de Fotos', '', 'publish', 'closed', 'closed', '', 'galeria-de-fotos', '', '', '2021-11-08 09:48:45', '2021-11-08 12:48:45', '', 0, 'https://atalaiakart.r2sites.digital/?post_type=galerias&#038;p=34', 0, 'galerias', '', 0),
(70, 1, '2021-11-01 14:28:14', '2021-11-01 17:28:14', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:43:\"Adicione uma descrição para esta galeria.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'descricao', 'descricao', 'publish', 'closed', 'closed', '', 'field_6180238098aa1', '', '', '2021-11-01 16:42:50', '2021-11-01 19:42:50', '', 26, 'https://atalaiakart.r2sites.digital/?post_type=acf-field&#038;p=70', 1, 'acf-field', '', 0),
(77, 1, '2021-11-01 16:42:40', '2021-11-01 19:42:40', '', 'Galeria 002', '', 'trash', 'closed', 'closed', '', 'galeria-002__trashed', '', '', '2021-11-05 15:04:52', '2021-11-05 18:04:52', '', 0, 'https://atalaiakart.r2sites.digital/?post_type=galerias&#038;p=77', 0, 'galerias', '', 0),
(78, 1, '2021-11-01 16:43:23', '2021-11-01 19:43:23', '', 'Galeria 003', '', 'trash', 'closed', 'closed', '', 'galeria-003__trashed', '', '', '2021-11-05 15:04:48', '2021-11-05 18:04:48', '', 0, 'https://atalaiakart.r2sites.digital/?post_type=galerias&#038;p=78', 0, 'galerias', '', 0),
(79, 1, '2021-11-01 16:44:56', '2021-11-01 19:44:56', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2021-11-01 16:44:56', '2021-11-01 19:44:56', '', 0, 'https://atalaiakart.r2sites.digital/?page_id=79', 0, 'page', '', 0),
(80, 1, '2021-11-01 16:44:56', '2021-11-01 19:44:56', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2021-11-01 16:44:56', '2021-11-01 19:44:56', '', 79, 'https://atalaiakart.r2sites.digital/?p=80', 0, 'revision', '', 0),
(81, 1, '2021-11-03 13:26:32', '2021-11-03 16:26:32', '', 'Quem Somos', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2021-11-03 13:26:32', '2021-11-03 16:26:32', '', 0, 'https://atalaiakart.r2sites.digital/?page_id=81', 0, 'page', '', 0),
(82, 1, '2021-11-03 13:26:32', '2021-11-03 16:26:32', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2021-11-03 13:26:32', '2021-11-03 16:26:32', '', 81, 'https://atalaiakart.r2sites.digital/?p=82', 0, 'revision', '', 0),
(89, 1, '2021-11-04 14:34:04', '2021-11-04 17:34:04', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2021-11-04 14:34:04', '2021-11-04 17:34:04', '', 0, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/favicon.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2021-11-04 14:34:05', '2021-11-04 17:34:05', '', 'favicon-whats', '', 'inherit', 'open', 'closed', '', 'favicon-whats', '', '', '2021-11-04 14:34:05', '2021-11-04 17:34:05', '', 0, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/favicon-whats.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2021-11-04 14:34:06', '2021-11-04 17:34:06', '', 'logo-horizontal', '', 'inherit', 'open', 'closed', '', 'logo-horizontal', '', '', '2021-11-04 14:34:06', '2021-11-04 17:34:06', '', 0, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/logo-horizontal.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2021-11-04 14:34:07', '2021-11-04 17:34:07', '', 'logo-vertical', '', 'inherit', 'open', 'closed', '', 'logo-vertical', '', '', '2021-11-04 14:34:07', '2021-11-04 17:34:07', '', 0, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/logo-vertical.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2021-11-05 14:54:13', '2021-11-05 17:54:13', '', 'banner_mobile1', '', 'inherit', 'open', 'closed', '', 'banner_mobile1', '', '', '2021-11-05 14:54:13', '2021-11-05 17:54:13', '', 13, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/banner_mobile1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2021-11-05 14:54:14', '2021-11-05 17:54:14', '', 'banner_desktop1', '', 'inherit', 'open', 'closed', '', 'banner_desktop1', '', '', '2021-11-05 14:54:14', '2021-11-05 17:54:14', '', 13, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/banner_desktop1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2021-11-05 14:55:41', '2021-11-05 17:55:41', '', 'banner_mobile2', '', 'inherit', 'open', 'closed', '', 'banner_mobile2', '', '', '2021-11-05 14:55:41', '2021-11-05 17:55:41', '', 16, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/banner_mobile2.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2021-11-05 14:55:42', '2021-11-05 17:55:42', '', 'banner_desktop2', '', 'inherit', 'open', 'closed', '', 'banner_desktop2', '', '', '2021-11-05 14:55:42', '2021-11-05 17:55:42', '', 16, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/banner_desktop2.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2021-11-05 15:06:02', '2021-11-05 18:06:02', '', 'atalaia-kart-galeria (1)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-1', '', '', '2021-11-05 15:06:02', '2021-11-05 18:06:02', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2021-11-05 15:06:03', '2021-11-05 18:06:03', '', 'atalaia-kart-galeria (2)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-2', '', '', '2021-11-05 15:06:03', '2021-11-05 18:06:03', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2021-11-05 15:06:04', '2021-11-05 18:06:04', '', 'atalaia-kart-galeria (3)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-3', '', '', '2021-11-05 15:06:04', '2021-11-05 18:06:04', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2021-11-05 15:06:06', '2021-11-05 18:06:06', '', 'atalaia-kart-galeria (4)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-4', '', '', '2021-11-05 15:06:06', '2021-11-05 18:06:06', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2021-11-05 15:06:07', '2021-11-05 18:06:07', '', 'atalaia-kart-galeria (5)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-5', '', '', '2021-11-05 15:06:07', '2021-11-05 18:06:07', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2021-11-05 15:06:09', '2021-11-05 18:06:09', '', 'atalaia-kart-galeria (6)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-6', '', '', '2021-11-05 15:06:09', '2021-11-05 18:06:09', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2021-11-05 15:06:10', '2021-11-05 18:06:10', '', 'atalaia-kart-galeria (7)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-7', '', '', '2021-11-05 15:06:10', '2021-11-05 18:06:10', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2021-11-05 15:06:12', '2021-11-05 18:06:12', '', 'atalaia-kart-galeria (8)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-8', '', '', '2021-11-05 15:06:12', '2021-11-05 18:06:12', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2021-11-05 15:06:15', '2021-11-05 18:06:15', '', 'atalaia-kart-galeria (9)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-9', '', '', '2021-11-05 15:06:15', '2021-11-05 18:06:15', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2021-11-05 15:06:17', '2021-11-05 18:06:17', '', 'atalaia-kart-galeria (10)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-10', '', '', '2021-11-05 15:06:17', '2021-11-05 18:06:17', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2021-11-05 15:06:18', '2021-11-05 18:06:18', '', 'atalaia-kart-galeria (11)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-11', '', '', '2021-11-05 15:06:18', '2021-11-05 18:06:18', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2021-11-05 15:06:19', '2021-11-05 18:06:19', '', 'atalaia-kart-galeria (12)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-12', '', '', '2021-11-05 15:06:19', '2021-11-05 18:06:19', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2021-11-05 15:06:21', '2021-11-05 18:06:21', '', 'atalaia-kart-galeria (13)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-13', '', '', '2021-11-05 15:06:21', '2021-11-05 18:06:21', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2021-11-05 15:06:21', '2021-11-05 18:06:21', '', 'atalaia-kart-galeria (14)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-14', '', '', '2021-11-05 15:06:21', '2021-11-05 18:06:21', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2021-11-05 15:06:23', '2021-11-05 18:06:23', '', 'atalaia-kart-galeria (15)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-15', '', '', '2021-11-05 15:06:23', '2021-11-05 18:06:23', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2021-11-05 15:06:24', '2021-11-05 18:06:24', '', 'atalaia-kart-galeria (16)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-16', '', '', '2021-11-05 15:06:24', '2021-11-05 18:06:24', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-16.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2021-11-05 15:06:25', '2021-11-05 18:06:25', '', 'atalaia-kart-galeria (17)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-17', '', '', '2021-11-05 15:06:25', '2021-11-05 18:06:25', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-17.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2021-11-05 15:06:26', '2021-11-05 18:06:26', '', 'atalaia-kart-galeria (18)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-18', '', '', '2021-11-05 15:06:26', '2021-11-05 18:06:26', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-18.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2021-11-05 15:06:28', '2021-11-05 18:06:28', '', 'atalaia-kart-galeria (19)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-19', '', '', '2021-11-05 15:06:28', '2021-11-05 18:06:28', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-19.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2021-11-05 15:06:30', '2021-11-05 18:06:30', '', 'atalaia-kart-galeria (20)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-20', '', '', '2021-11-05 15:06:30', '2021-11-05 18:06:30', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-20.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2021-11-05 15:06:32', '2021-11-05 18:06:32', '', 'atalaia-kart-galeria (21)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-21', '', '', '2021-11-05 15:06:32', '2021-11-05 18:06:32', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-21.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2021-11-05 15:06:34', '2021-11-05 18:06:34', '', 'atalaia-kart-galeria (22)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-22', '', '', '2021-11-05 15:06:34', '2021-11-05 18:06:34', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-22.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2021-11-05 15:06:36', '2021-11-05 18:06:36', '', 'atalaia-kart-galeria (23)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-23', '', '', '2021-11-05 15:06:36', '2021-11-05 18:06:36', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-23.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2021-11-05 15:06:38', '2021-11-05 18:06:38', '', 'atalaia-kart-galeria (24)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-24', '', '', '2021-11-05 15:06:38', '2021-11-05 18:06:38', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-24.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2021-11-05 15:06:40', '2021-11-05 18:06:40', '', 'atalaia-kart-galeria (25)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-25', '', '', '2021-11-05 15:06:40', '2021-11-05 18:06:40', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-25.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2021-11-05 15:06:42', '2021-11-05 18:06:42', '', 'atalaia-kart-galeria (26)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-26', '', '', '2021-11-05 15:06:42', '2021-11-05 18:06:42', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-26.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2021-11-05 15:06:44', '2021-11-05 18:06:44', '', 'atalaia-kart-galeria (27)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-27', '', '', '2021-11-05 15:06:44', '2021-11-05 18:06:44', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-27.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2021-11-05 15:06:46', '2021-11-05 18:06:46', '', 'atalaia-kart-galeria (28)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-28', '', '', '2021-11-05 15:06:46', '2021-11-05 18:06:46', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-28.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2021-11-05 15:06:47', '2021-11-05 18:06:47', '', 'atalaia-kart-galeria (29)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-29', '', '', '2021-11-05 15:06:47', '2021-11-05 18:06:47', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-29.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2021-11-05 15:06:49', '2021-11-05 18:06:49', '', 'atalaia-kart-galeria (30)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-30', '', '', '2021-11-05 15:06:49', '2021-11-05 18:06:49', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-30.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2021-11-05 15:06:51', '2021-11-05 18:06:51', '', 'atalaia-kart-galeria (31)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-31', '', '', '2021-11-05 15:06:51', '2021-11-05 18:06:51', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-31.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2021-11-05 15:06:53', '2021-11-05 18:06:53', '', 'atalaia-kart-galeria (32)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-32', '', '', '2021-11-05 15:06:53', '2021-11-05 18:06:53', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-32.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2021-11-05 15:06:55', '2021-11-05 18:06:55', '', 'atalaia-kart-galeria (33)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-33', '', '', '2021-11-05 15:06:55', '2021-11-05 18:06:55', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-33.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2021-11-05 15:06:57', '2021-11-05 18:06:57', '', 'atalaia-kart-galeria (34)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-34', '', '', '2021-11-05 15:06:57', '2021-11-05 18:06:57', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-34.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2021-11-05 15:06:59', '2021-11-05 18:06:59', '', 'atalaia-kart-galeria (35)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-35', '', '', '2021-11-05 15:06:59', '2021-11-05 18:06:59', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-35.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2021-11-05 15:07:01', '2021-11-05 18:07:01', '', 'atalaia-kart-galeria (36)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-36', '', '', '2021-11-05 15:07:01', '2021-11-05 18:07:01', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-36.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2021-11-05 15:07:03', '2021-11-05 18:07:03', '', 'atalaia-kart-galeria (37)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-37', '', '', '2021-11-05 15:07:03', '2021-11-05 18:07:03', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-37.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2021-11-05 15:07:05', '2021-11-05 18:07:05', '', 'atalaia-kart-galeria (38)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-38', '', '', '2021-11-05 15:07:05', '2021-11-05 18:07:05', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-38.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2021-11-05 15:07:07', '2021-11-05 18:07:07', '', 'atalaia-kart-galeria (39)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-39', '', '', '2021-11-05 15:07:07', '2021-11-05 18:07:07', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-39.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2021-11-05 15:07:07', '2021-11-05 18:07:07', '', 'atalaia-kart-galeria (40)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-40', '', '', '2021-11-05 15:07:07', '2021-11-05 18:07:07', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-40.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2021-11-05 15:07:09', '2021-11-05 18:07:09', '', 'atalaia-kart-galeria (41)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-41', '', '', '2021-11-05 15:07:09', '2021-11-05 18:07:09', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-41.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2021-11-05 15:07:10', '2021-11-05 18:07:10', '', 'atalaia-kart-galeria (42)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-42', '', '', '2021-11-05 15:07:10', '2021-11-05 18:07:10', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-42.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2021-11-05 15:07:12', '2021-11-05 18:07:12', '', 'atalaia-kart-galeria (43)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-43', '', '', '2021-11-05 15:07:12', '2021-11-05 18:07:12', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-43.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2021-11-05 15:07:14', '2021-11-05 18:07:14', '', 'atalaia-kart-galeria (44)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-44', '', '', '2021-11-05 15:07:14', '2021-11-05 18:07:14', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-44.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2021-11-05 15:07:15', '2021-11-05 18:07:15', '', 'atalaia-kart-galeria (45)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-45', '', '', '2021-11-05 15:07:15', '2021-11-05 18:07:15', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-45.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2021-11-05 15:07:17', '2021-11-05 18:07:17', '', 'atalaia-kart-galeria (46)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-46', '', '', '2021-11-05 15:07:17', '2021-11-05 18:07:17', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-46.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2021-11-05 15:07:18', '2021-11-05 18:07:18', '', 'atalaia-kart-galeria (47)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-47', '', '', '2021-11-05 15:07:18', '2021-11-05 18:07:18', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-47.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2021-11-05 15:07:20', '2021-11-05 18:07:20', '', 'atalaia-kart-galeria (48)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-48', '', '', '2021-11-05 15:07:20', '2021-11-05 18:07:20', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-48.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2021-11-05 15:07:21', '2021-11-05 18:07:21', '', 'atalaia-kart-galeria (49)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-49', '', '', '2021-11-05 15:07:21', '2021-11-05 18:07:21', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-49.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2021-11-05 15:07:22', '2021-11-05 18:07:22', '', 'atalaia-kart-galeria (50)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-50', '', '', '2021-11-05 15:07:22', '2021-11-05 18:07:22', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-50.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2021-11-05 15:07:23', '2021-11-05 18:07:23', '', 'atalaia-kart-galeria (51)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-51', '', '', '2021-11-05 15:07:23', '2021-11-05 18:07:23', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-51.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2021-11-05 15:07:25', '2021-11-05 18:07:25', '', 'atalaia-kart-galeria (52)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-52', '', '', '2021-11-05 15:07:25', '2021-11-05 18:07:25', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-52.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2021-11-05 15:07:25', '2021-11-05 18:07:25', '', 'atalaia-kart-galeria (53)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-53', '', '', '2021-11-05 15:07:25', '2021-11-05 18:07:25', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-53.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2021-11-05 15:07:27', '2021-11-05 18:07:27', '', 'atalaia-kart-galeria (54)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-54', '', '', '2021-11-05 15:07:27', '2021-11-05 18:07:27', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-54.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2021-11-05 15:07:29', '2021-11-05 18:07:29', '', 'atalaia-kart-galeria (55)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-55', '', '', '2021-11-05 15:07:29', '2021-11-05 18:07:29', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-55.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2021-11-05 15:07:31', '2021-11-05 18:07:31', '', 'atalaia-kart-galeria (56)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-56', '', '', '2021-11-05 15:07:31', '2021-11-05 18:07:31', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-56.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2021-11-05 15:07:33', '2021-11-05 18:07:33', '', 'atalaia-kart-galeria (57)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-57', '', '', '2021-11-05 15:07:33', '2021-11-05 18:07:33', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-57.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2021-11-05 15:07:35', '2021-11-05 18:07:35', '', 'atalaia-kart-galeria (58)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-58', '', '', '2021-11-05 15:07:35', '2021-11-05 18:07:35', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-58.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2021-11-05 15:07:37', '2021-11-05 18:07:37', '', 'atalaia-kart-galeria (59)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-59', '', '', '2021-11-05 15:07:37', '2021-11-05 18:07:37', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-59.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2021-11-05 15:07:38', '2021-11-05 18:07:38', '', 'atalaia-kart-galeria (60)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-60', '', '', '2021-11-05 15:07:38', '2021-11-05 18:07:38', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-60.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2021-11-05 15:07:40', '2021-11-05 18:07:40', '', 'atalaia-kart-galeria (61)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-61', '', '', '2021-11-05 15:07:40', '2021-11-05 18:07:40', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-61.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2021-11-05 15:07:42', '2021-11-05 18:07:42', '', 'atalaia-kart-galeria (62)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-62', '', '', '2021-11-05 15:07:42', '2021-11-05 18:07:42', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-62.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2021-11-05 15:07:44', '2021-11-05 18:07:44', '', 'atalaia-kart-galeria (63)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-63', '', '', '2021-11-05 15:07:44', '2021-11-05 18:07:44', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-63.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2021-11-05 15:07:46', '2021-11-05 18:07:46', '', 'atalaia-kart-galeria (64)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-64', '', '', '2021-11-05 15:07:46', '2021-11-05 18:07:46', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-64.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2021-11-05 15:07:48', '2021-11-05 18:07:48', '', 'atalaia-kart-galeria (65)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-65', '', '', '2021-11-05 15:07:48', '2021-11-05 18:07:48', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-65.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2021-11-05 15:07:50', '2021-11-05 18:07:50', '', 'atalaia-kart-galeria (66)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-66', '', '', '2021-11-05 15:07:50', '2021-11-05 18:07:50', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-66.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2021-11-05 15:07:52', '2021-11-05 18:07:52', '', 'atalaia-kart-galeria (67)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-67', '', '', '2021-11-05 15:07:52', '2021-11-05 18:07:52', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-67.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2021-11-05 15:07:54', '2021-11-05 18:07:54', '', 'atalaia-kart-galeria (68)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-68', '', '', '2021-11-05 15:07:54', '2021-11-05 18:07:54', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-68.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2021-11-05 15:07:55', '2021-11-05 18:07:55', '', 'atalaia-kart-galeria (69)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-69', '', '', '2021-11-05 15:07:55', '2021-11-05 18:07:55', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-69.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2021-11-05 15:07:57', '2021-11-05 18:07:57', '', 'atalaia-kart-galeria (70)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-70', '', '', '2021-11-05 15:07:57', '2021-11-05 18:07:57', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-70.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2021-11-05 15:07:59', '2021-11-05 18:07:59', '', 'atalaia-kart-galeria (71)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-71', '', '', '2021-11-05 15:07:59', '2021-11-05 18:07:59', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-71.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2021-11-05 15:08:01', '2021-11-05 18:08:01', '', 'atalaia-kart-galeria (72)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-72', '', '', '2021-11-05 15:08:01', '2021-11-05 18:08:01', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-72.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2021-11-05 15:08:04', '2021-11-05 18:08:04', '', 'atalaia-kart-galeria (73)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-73', '', '', '2021-11-05 15:08:04', '2021-11-05 18:08:04', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-73.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2021-11-05 15:08:06', '2021-11-05 18:08:06', '', 'atalaia-kart-galeria (74)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-74', '', '', '2021-11-05 15:08:06', '2021-11-05 18:08:06', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-74.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2021-11-05 15:08:08', '2021-11-05 18:08:08', '', 'atalaia-kart-galeria (75)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-75', '', '', '2021-11-05 15:08:08', '2021-11-05 18:08:08', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-75.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2021-11-05 15:08:10', '2021-11-05 18:08:10', '', 'atalaia-kart-galeria (76)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-76', '', '', '2021-11-05 15:08:10', '2021-11-05 18:08:10', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-76.jpg', 0, 'attachment', 'image/jpeg', 0),
(176, 1, '2021-11-05 15:08:12', '2021-11-05 18:08:12', '', 'atalaia-kart-galeria (77)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-77', '', '', '2021-11-05 15:08:12', '2021-11-05 18:08:12', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-77.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2021-11-05 15:08:14', '2021-11-05 18:08:14', '', 'atalaia-kart-galeria (78)', '', 'inherit', 'open', 'closed', '', 'atalaia-kart-galeria-78', '', '', '2021-11-05 15:08:14', '2021-11-05 18:08:14', '', 34, 'https://atalaiakart.r2sites.digital/wp-content/uploads/2021/11/atalaia-kart-galeria-78.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2021-11-08 09:58:12', '2021-11-08 12:58:12', '', 'Corrida', '', 'publish', 'closed', 'closed', '', 'corrida', '', '', '2021-11-08 09:58:12', '2021-11-08 12:58:12', '', 0, 'https://atalaiakart.r2sites.digital/?page_id=178', 0, 'page', '', 0),
(179, 1, '2021-11-08 09:58:12', '2021-11-08 12:58:12', '', 'Corrida', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2021-11-08 09:58:12', '2021-11-08 12:58:12', '', 178, 'https://atalaiakart.r2sites.digital/?p=179', 0, 'revision', '', 0),
(180, 1, '2021-11-08 09:58:24', '2021-11-08 12:58:24', '', 'Eventos', '', 'publish', 'closed', 'closed', '', 'eventos', '', '', '2021-11-08 09:58:24', '2021-11-08 12:58:24', '', 0, 'https://atalaiakart.r2sites.digital/?page_id=180', 0, 'page', '', 0),
(181, 1, '2021-11-08 09:58:24', '2021-11-08 12:58:24', '', 'Eventos', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2021-11-08 09:58:24', '2021-11-08 12:58:24', '', 180, 'https://atalaiakart.r2sites.digital/?p=181', 0, 'revision', '', 0),
(182, 1, '2021-11-08 09:58:38', '2021-11-08 12:58:38', '', 'Quem pode Participar', '', 'publish', 'closed', 'closed', '', 'quem-pode-participar', '', '', '2021-11-08 09:58:38', '2021-11-08 12:58:38', '', 0, 'https://atalaiakart.r2sites.digital/?page_id=182', 0, 'page', '', 0),
(183, 1, '2021-11-08 09:58:38', '2021-11-08 12:58:38', '', 'Quem pode Participar', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2021-11-08 09:58:38', '2021-11-08 12:58:38', '', 182, 'https://atalaiakart.r2sites.digital/?p=183', 0, 'revision', '', 0);
INSERT INTO `wpmx_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(184, 1, '2021-11-08 10:31:20', '2021-11-08 13:31:20', '<div class=\"contato-form\">\r\n        <div class=\"row\">\r\n\r\n            <div class=\"col-md-6\">\r\n                [text* empresa placeholder \"Empresa\"]\r\n            </div>\r\n            <div class=\"col-md-6\">\r\n                [text* nome placeholder \"Nome\"]\r\n            </div>\r\n\r\n        </div>                              \r\n\r\n\r\n        <div class=\"row\">\r\n\r\n            <div class=\"col-md-6\">\r\n                [email* email placeholder \"E-mail\"]\r\n            </div>\r\n\r\n            <div class=\"col-md-6\">\r\n                [tel* telefone placeholder \"Telefone\"]\r\n            </div>\r\n\r\n        </div>\r\n\r\n        <div class=\"row\">\r\n\r\n            <div class=\"col-md-6\">\r\n<label>Tipo de Evento:\r\n                [select evento \"Eventos Corporativos\" \"Festas de Aniversário\" \"Mini-Campeonatos\" \"Agências de Viagens\"]\r\n</label>\r\n            </div> \r\n\r\n<div class=\"col-md-6\">\r\n<label>Data do Evento:\r\n               [date data-do-evento]\r\n</label>\r\n            </div>         \r\n\r\n        </div>\r\n\r\n        <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n                [textarea mensagem placeholder \"Mensagem\"]\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n                [submit class:btn-send]\r\n            </div>\r\n        </div>\r\n\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@atalaiakart.r2sites.digital>\n[_site_admin_email]\n<html lang=\"en\">\r\n  <body>\r\n    <table style=\"width: 100%; font-family: Open Sans, sans-serif;\">\r\n	  <thead style=\"background: #005c9b; text-align: left;\">\r\n		<th colspan=\"2\" style=\"padding: 20px; color: white; text-shadow: 1px 1px 0 rgba(0,0,0,.2);\">Contato</th>\r\n	  </thead>\r\n	  <tbody>\r\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>Empresa:</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[empresa]\r\n		  </td>\r\n		</tr>\r\n<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>Nome:</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[nome]\r\n		  </td>\r\n		</tr>\r\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>E-mail</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[email]\r\n		  </td>\r\n		</tr>\r\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>Telefone</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[telefone]\r\n		  </td>\r\n		</tr>\r\n                \r\n                <tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>Tipo de Evento</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[evento]\r\n		  </td>\r\n		</tr>\r\n<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>Data do Evento</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[data-do-evento]\r\n		  </td>\r\n		</tr>\r\n		<tr style=\"display: block; border-bottom: 1px solid #e5e5e5;\">\r\n		  <td style=\"padding: 10px; color: #202020; width: 100px;\">\r\n			<b>Mensagem</b>\r\n		  </td>\r\n		  <td style=\"padding: 10px; color: #202020;\">\r\n		  	[mensagem]\r\n		  </td>\r\n		</tr>\r\n	  </tbody>\r\n	  <tfoot style=\"text-align: left;\">\r\n	    <th colspan=\"2\" style=\"font-size: 10px; color: #005c9b; font-weight: 100; margin-top: 30px; display: block;\">\r\n              Mensagem enviado em <a href=\"https://valentinelegance.com.br/\" target=\"_blank\" rel=\"noopener\">Valentine Elegance</a>\r\n	    </th>\r\n	  </tfoot>\r\n    </table>\r\n  </body>\r\n</html>\nReply-To: [email]\n\n1\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@atalaiakart.r2sites.digital>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Orçamento para Eventos', '', 'publish', 'closed', 'closed', '', 'orcamento-para-eventos', '', '', '2021-11-08 10:36:31', '2021-11-08 13:36:31', '', 0, 'https://atalaiakart.r2sites.digital/?post_type=wpcf7_contact_form&#038;p=184', 0, 'wpcf7_contact_form', '', 0),
(185, 1, '2021-11-16 19:05:01', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-11-16 19:05:01', '0000-00-00 00:00:00', '', 0, 'https://atalaiakart.r2sites.digital/?p=185', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_termmeta`
--

CREATE TABLE `wpmx_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_terms`
--

CREATE TABLE `wpmx_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpmx_terms`
--

INSERT INTO `wpmx_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_term_relationships`
--

CREATE TABLE `wpmx_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpmx_term_relationships`
--

INSERT INTO `wpmx_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_term_taxonomy`
--

CREATE TABLE `wpmx_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpmx_term_taxonomy`
--

INSERT INTO `wpmx_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_usermeta`
--

CREATE TABLE `wpmx_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpmx_usermeta`
--

INSERT INTO `wpmx_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'R2Digital'),
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
(12, 1, 'wpmx_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpmx_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"3277defdc5d92c53a663e973804cc8f1cdd2cb4629be78abe0c8259b46d5a539\";a:4:{s:10:\"expiration\";i:1637273099;s:2:\"ip\";s:15:\"201.218.176.107\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1637100299;}}'),
(17, 1, 'wpmx_dashboard_quick_press_last_post_id', '185'),
(18, 1, 'wpmx_user-settings', 'libraryContent=upload'),
(19, 1, 'wpmx_user-settings-time', '1636135510'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"201.218.176.0\";}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpmx_users`
--

CREATE TABLE `wpmx_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpmx_users`
--

INSERT INTO `wpmx_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'R2Digital', '$P$B0Nps/y1eYIZoxiMn74PXYRLTxPbl2.', 'r2digital', 'suporte@r2agenciaweb.com.br', 'https://atalaiakart.r2sites.digital', '2021-10-29 16:39:28', '', 0, 'R2Digital');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `wpmx_commentmeta`
--
ALTER TABLE `wpmx_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpmx_comments`
--
ALTER TABLE `wpmx_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wpmx_links`
--
ALTER TABLE `wpmx_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wpmx_options`
--
ALTER TABLE `wpmx_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wpmx_postmeta`
--
ALTER TABLE `wpmx_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpmx_posts`
--
ALTER TABLE `wpmx_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wpmx_termmeta`
--
ALTER TABLE `wpmx_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpmx_terms`
--
ALTER TABLE `wpmx_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wpmx_term_relationships`
--
ALTER TABLE `wpmx_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wpmx_term_taxonomy`
--
ALTER TABLE `wpmx_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wpmx_usermeta`
--
ALTER TABLE `wpmx_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpmx_users`
--
ALTER TABLE `wpmx_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wpmx_commentmeta`
--
ALTER TABLE `wpmx_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpmx_comments`
--
ALTER TABLE `wpmx_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wpmx_links`
--
ALTER TABLE `wpmx_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpmx_options`
--
ALTER TABLE `wpmx_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=785;

--
-- AUTO_INCREMENT de tabela `wpmx_postmeta`
--
ALTER TABLE `wpmx_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT de tabela `wpmx_posts`
--
ALTER TABLE `wpmx_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de tabela `wpmx_termmeta`
--
ALTER TABLE `wpmx_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpmx_terms`
--
ALTER TABLE `wpmx_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wpmx_term_taxonomy`
--
ALTER TABLE `wpmx_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wpmx_usermeta`
--
ALTER TABLE `wpmx_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `wpmx_users`
--
ALTER TABLE `wpmx_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
