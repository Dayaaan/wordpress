-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2018 at 03:26 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-30 10:15:28', '2018-05-30 08:15:28', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Integration/wordpress', 'yes'),
(2, 'home', 'http://localhost/Integration/wordpress', 'yes'),
(3, 'blogname', 'mindgeek', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'h4rkor@hotmail.com', 'yes'),
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
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:2;s:17:"server/server.php";i:3;s:24:"wordpress-seo/wp-seo.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:79:"/home/wan2-3/sites/Integration/wordpress/wp-content/plugins/akismet/akismet.php";i:1;s:0:"";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:9:"Categorie";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:9:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:115:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:20:"wpseo_manage_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'fr_FR', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:3:{i:0;s:10:"calendar-2";i:1;s:12:"categories-3";i:2;s:15:"media_gallery-2";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:"title";s:10:"Calendrier";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:2:{i:2;a:6:{s:5:"title";s:7:"Galerie";s:7:"columns";i:3;s:4:"size";s:9:"thumbnail";s:9:"link_type";s:4:"post";s:14:"orderby_random";b:0;s:3:"ids";a:1:{i:0;i:6;}}s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1527844528;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1527847082;a:1:{s:19:"wpseo-reindex-links";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1527884128;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1527927340;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1527927774;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1527690298;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:3:{i:0;s:10:"calendar-2";i:1;s:12:"categories-3";i:2;s:15:"media_gallery-2";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:1:{s:3:"top";i:17;}}', 'yes'),
(126, '_site_transient_timeout_browser_e2c2baf850c782a42f5b7aabe9f75a43', '1528272940', 'no'),
(127, '_site_transient_browser_e2c2baf850c782a42f5b7aabe9f75a43', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"60.0";s:8:"platform";s:5:"Linux";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(145, '_transient_timeout_plugin_slugs', '1527858506', 'no'),
(146, '_transient_plugin_slugs', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:17:"server/server.php";i:3;s:9:"hello.php";i:4;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(147, 'recently_activated', 'a:4:{s:19:"akismet/akismet.php";i:1527772105;s:27:"woocommerce/woocommerce.php";i:1527752430;s:25:"woo-wallet/woo-wallet.php";i:1527674345;s:9:"hello.php";i:1527674276;}', 'yes'),
(161, 'current_theme', 'Twenty Seventeen', 'yes'),
(162, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1527671721;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(164, '_transient_twentysixteen_categories', '1', 'yes'),
(166, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1527671902;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(167, '_transient_twentyfifteen_categories', '1', 'yes'),
(178, 'theme_mods_sydney', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:16;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1527682582;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:1:{i:0;s:10:"calendar-2";}s:8:"footer-2";a:1:{i:0;s:12:"categories-3";}s:8:"footer-3";a:1:{i:0;s:15:"media_gallery-2";}}}}', 'yes'),
(191, 'wpseo', 'a:19:{s:15:"ms_defaults_set";b:0;s:7:"version";s:5:"7.5.3";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1527674282;}', 'yes'),
(192, 'wpseo_titles', 'a:65:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:42:"%%name%%, auteur sur %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:65:"Vous avez cherché %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:38:"Page non trouvée %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:64:"L’article %%POSTLINK%% est apparu en premier sur %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:1;s:23:"is-media-purge-relevant";b:0;s:20:"breadcrumbs-404crumb";s:30:"Erreur 404 : Page introuvable";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:13:"Archives pour";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:7:"Accueil";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:18:"Vous avez cherché";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:17:"stripcategorybase";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:23:"display-metabox-pt-post";b:1;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:23:"display-metabox-pt-page";b:1;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:23:"post_types-post-maintax";i:0;}', 'yes'),
(193, 'wpseo_social', 'a:18:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(194, 'wpseo_flush_rewrite', '1', 'yes'),
(195, '_transient_timeout_wpseo_link_table_inaccessible', '1559210282', 'no'),
(196, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(197, '_transient_timeout_wpseo_meta_table_inaccessible', '1559210282', 'no'),
(198, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(208, 'woocommerce_store_address', '', 'yes'),
(209, 'woocommerce_store_address_2', '', 'yes'),
(210, 'woocommerce_store_city', '', 'yes'),
(211, 'woocommerce_default_country', 'GB', 'yes'),
(212, 'woocommerce_store_postcode', '', 'yes'),
(213, 'woocommerce_allowed_countries', 'all', 'yes'),
(214, 'woocommerce_all_except_countries', '', 'yes'),
(215, 'woocommerce_specific_allowed_countries', '', 'yes'),
(216, 'woocommerce_ship_to_countries', '', 'yes'),
(217, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(218, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(219, 'woocommerce_calc_taxes', 'no', 'yes'),
(220, 'woocommerce_enable_coupons', 'yes', 'yes'),
(221, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(222, 'woocommerce_currency', 'GBP', 'yes'),
(223, 'woocommerce_currency_pos', 'left', 'yes'),
(224, 'woocommerce_price_thousand_sep', ',', 'yes'),
(225, 'woocommerce_price_decimal_sep', '.', 'yes'),
(226, 'woocommerce_price_num_decimals', '2', 'yes'),
(227, 'woocommerce_shop_page_id', '', 'yes'),
(228, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(229, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(230, 'woocommerce_weight_unit', 'kg', 'yes'),
(231, 'woocommerce_dimension_unit', 'cm', 'yes'),
(232, 'woocommerce_enable_reviews', 'yes', 'yes'),
(233, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(234, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(235, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(236, 'woocommerce_review_rating_required', 'yes', 'no'),
(237, 'woocommerce_manage_stock', 'yes', 'yes'),
(238, 'woocommerce_hold_stock_minutes', '60', 'no'),
(239, 'woocommerce_notify_low_stock', 'yes', 'no'),
(240, 'woocommerce_notify_no_stock', 'yes', 'no'),
(241, 'woocommerce_stock_email_recipient', 'h4rkor@hotmail.com', 'no'),
(242, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(243, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(244, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(245, 'woocommerce_stock_format', '', 'yes'),
(246, 'woocommerce_file_download_method', 'force', 'no'),
(247, 'woocommerce_downloads_require_login', 'no', 'no'),
(248, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(249, 'woocommerce_prices_include_tax', 'no', 'yes'),
(250, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(251, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(252, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(253, 'woocommerce_tax_classes', 'Taux réduit\nTaux Zéro', 'yes'),
(254, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(255, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(256, 'woocommerce_price_display_suffix', '', 'yes'),
(257, 'woocommerce_tax_total_display', 'itemized', 'no'),
(258, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(259, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(260, 'woocommerce_ship_to_destination', 'billing', 'no'),
(261, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(262, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(263, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(264, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(265, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(266, 'woocommerce_registration_generate_username', 'yes', 'no'),
(267, 'woocommerce_registration_generate_password', 'yes', 'no'),
(268, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(269, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(270, 'woocommerce_registration_privacy_policy_text', 'Vos données personnelles seront utilisées pour vous accompagner au cours de votre visite du site web, gérer l’accès à votre compte, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(271, 'woocommerce_checkout_privacy_policy_text', 'Vos données personnelles seront utilisées pour le traitement de votre commande, vous accompagner au cours de votre visite du site web, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(272, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(273, 'woocommerce_trash_pending_orders', '', 'no'),
(274, 'woocommerce_trash_failed_orders', '', 'no'),
(275, 'woocommerce_trash_cancelled_orders', '', 'no'),
(276, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(277, 'woocommerce_email_from_name', 'mindgeek', 'no'),
(278, 'woocommerce_email_from_address', 'h4rkor@hotmail.com', 'no'),
(279, 'woocommerce_email_header_image', '', 'no'),
(280, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(281, 'woocommerce_email_base_color', '#96588a', 'no'),
(282, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(283, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(284, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(285, 'woocommerce_cart_page_id', '', 'yes'),
(286, 'woocommerce_checkout_page_id', '', 'yes'),
(287, 'woocommerce_myaccount_page_id', '', 'yes'),
(288, 'woocommerce_terms_page_id', '', 'no'),
(289, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(290, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(291, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(292, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(293, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(294, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(295, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(296, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(297, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(298, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(299, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(300, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(301, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(302, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(303, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(304, 'woocommerce_api_enabled', 'no', 'yes'),
(305, 'woocommerce_single_image_width', '600', 'yes'),
(306, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(307, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(308, 'woocommerce_demo_store', 'no', 'no'),
(309, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"produit";s:13:"category_base";s:17:"categorie-produit";s:8:"tag_base";s:17:"etiquette-produit";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(310, 'current_theme_supports_woocommerce', 'no', 'yes'),
(311, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(312, 'rewrite_rules', 'a:121:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"server/?$";s:26:"index.php?post_type=server";s:39:"server/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=server&feed=$matches[1]";s:34:"server/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=server&feed=$matches[1]";s:26:"server/page/([0-9]{1,})/?$";s:44:"index.php?post_type=server&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:56:"server_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?server_category=$matches[1]&feed=$matches[2]";s:51:"server_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?server_category=$matches[1]&feed=$matches[2]";s:32:"server_category/([^/]+)/embed/?$";s:48:"index.php?server_category=$matches[1]&embed=true";s:44:"server_category/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?server_category=$matches[1]&paged=$matches[2]";s:26:"server_category/([^/]+)/?$";s:37:"index.php?server_category=$matches[1]";s:34:"server/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"server/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"server/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"server/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"server/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"server/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"server/([^/]+)/embed/?$";s:39:"index.php?server=$matches[1]&embed=true";s:27:"server/([^/]+)/trackback/?$";s:33:"index.php?server=$matches[1]&tb=1";s:47:"server/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?server=$matches[1]&feed=$matches[2]";s:42:"server/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?server=$matches[1]&feed=$matches[2]";s:35:"server/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?server=$matches[1]&paged=$matches[2]";s:42:"server/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?server=$matches[1]&cpage=$matches[2]";s:31:"server/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?server=$matches[1]&page=$matches[2]";s:23:"server/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"server/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"server/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"server/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"server/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"server/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(313, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(314, 'product_cat_children', 'a:0:{}', 'yes'),
(315, 'default_product_cat', '15', 'yes'),
(318, 'woocommerce_version', '3.4.1', 'yes'),
(319, 'woocommerce_db_version', '3.4.1', 'yes'),
(320, 'wpseo_sitemap_1_cache_validator', '4PM22', 'no'),
(321, 'wpseo_sitemap_product_cat_cache_validator', '3Bxdo', 'no'),
(322, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:"install";i:1;s:20:"no_secure_connection";}', 'yes'),
(323, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(324, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(325, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(326, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(327, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(328, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(329, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(330, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(331, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(332, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(333, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(334, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(335, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(338, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(339, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(340, '_transient_timeout_external_ip_address_127.0.0.1', '1528279186', 'no'),
(341, '_transient_external_ip_address_127.0.0.1', '88.191.6.1', 'no'),
(345, 'wpseo_sitemap_nav_menu_item_cache_validator', '4AjvM', 'no'),
(352, '_transient_timeout_wc_low_stock_count', '1530266678', 'no'),
(353, '_transient_wc_low_stock_count', '0', 'no'),
(354, '_transient_timeout_wc_outofstock_count', '1530266678', 'no'),
(355, '_transient_wc_outofstock_count', '0', 'no'),
(360, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(375, 'theme_mods_mindgeek', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:17;s:11:"footer-menu";i:18;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1527844334;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:9:{i:0;s:10:"calendar-2";i:1;s:12:"categories-3";i:2;s:15:"media_gallery-2";i:3;s:8:"search-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";i:6;s:10:"archives-2";i:7;s:12:"categories-2";i:8;s:6:"meta-2";}}}}', 'yes'),
(376, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(415, 'wpseo_sitemap_post_cache_validator', '4ISLs', 'no'),
(416, 'wpseo_sitemap_category_cache_validator', '4ISLz', 'no'),
(423, 'wpseo_sitemap_attachment_cache_validator', 'mKBo', 'no'),
(469, 'wpseo_sitemap_page_cache_validator', '4padp', 'no'),
(503, '_transient_timeout_wc_addons_sections', '1528357209', 'no'),
(504, '_transient_wc_addons_sections', 'a:8:{i:0;O:8:"stdClass":2:{s:4:"slug";s:9:"_featured";s:5:"label";s:8:"Featured";}i:1;O:8:"stdClass":2:{s:4:"slug";s:4:"_all";s:5:"label";s:3:"All";}i:2;O:8:"stdClass":2:{s:4:"slug";s:7:"bundles";s:5:"label";s:7:"Bundles";}i:3;O:8:"stdClass":2:{s:4:"slug";s:18:"product-extensions";s:5:"label";s:12:"Enhancements";}i:4;O:8:"stdClass":2:{s:4:"slug";s:20:"marketing-extensions";s:5:"label";s:9:"Marketing";}i:5;O:8:"stdClass":2:{s:4:"slug";s:16:"payment-gateways";s:5:"label";s:8:"Payments";}i:6;O:8:"stdClass":2:{s:4:"slug";s:12:"product-type";s:5:"label";s:12:"Product Type";}i:7;O:8:"stdClass":2:{s:4:"slug";s:10:"operations";s:5:"label";s:16:"Store Management";}}', 'no'),
(505, '_transient_timeout_wc_addons_featured', '1528357210', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(506, '_transient_wc_addons_featured', 'O:8:"stdClass":1:{s:8:"sections";a:11:{i:0;O:8:"stdClass":4:{s:6:"module";s:12:"banner_block";s:5:"title";s:50:"Take your store beyond the typical - sell anything";s:11:"description";s:81:"From services to content, there\'s no limit to what you can sell with WooCommerce.";s:5:"items";a:9:{i:0;O:8:"stdClass":6:{s:4:"href";s:139:"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:13:"Subscriptions";s:5:"image";s:71:"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png";s:11:"description";s:98:"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.";s:6:"button";s:10:"From: $199";s:6:"plugin";s:55:"woocommerce-subscriptions/woocommerce-subscriptions.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:134:"https://woocommerce.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:8:"Bookings";s:5:"image";s:66:"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png";s:11:"description";s:76:"Allow customers to book appointments for services without leaving your site.";s:6:"button";s:10:"From: $249";s:6:"plugin";s:45:"woocommerce-bookings/woocommerce-bookings.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:137:"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:11:"Memberships";s:5:"image";s:69:"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png";s:11:"description";s:76:"Give members access to restricted content or products, for a fee or for free";s:6:"button";s:10:"From: $149";s:6:"plugin";s:51:"woocommerce-memberships/woocommerce-memberships.php";}i:3;O:8:"stdClass":6:{s:4:"href";s:129:"https://woocommerce.com/products/product-bundles/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:15:"Product Bundles";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:50:"Offer customizable bundles and assembled products.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:59:"woocommerce-product-bundles/woocommerce-product-bundles.php";}i:4;O:8:"stdClass":6:{s:4:"href";s:132:"https://woocommerce.com/products/composite-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:18:"Composite Products";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:59:"Create and offer product kits with configurable components.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:65:"woocommerce-composite-products/woocommerce-composite-products.php";}i:5;O:8:"stdClass":6:{s:4:"href";s:129:"https://woocommerce.com/products/product-vendors/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:15:"Product Vendors";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:47:"Turn your store into a multi-vendor marketplace";s:6:"button";s:9:"From: $79";s:6:"plugin";s:59:"woocommerce-product-vendors/woocommerce-product-vendors.php";}i:6;O:8:"stdClass":6:{s:4:"href";s:132:"https://woocommerce.com/products/groups-woocommerce/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:22:"Groups for WooCommerce";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:94:"Sell memberships using the free &#039;Groups&#039; plugin, Groups integration and WooCommerce.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:41:"groups-woocommerce/groups-woocommerce.php";}i:7;O:8:"stdClass":6:{s:4:"href";s:136:"https://woocommerce.com/products/woocommerce-pre-orders/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:22:"WooCommerce Pre-Orders";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:60:"Allow customers to order products before they are available.";s:6:"button";s:10:"From: $129";s:6:"plugin";s:49:"woocommerce-pre-orders/woocommerce-pre-orders.php";}i:8;O:8:"stdClass":6:{s:4:"href";s:130:"https://woocommerce.com/products/chained-products/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:16:"Chained Products";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:69:"Create and sell pre-configured product bundles and discounted combos.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:61:"woocommerce-chained-products/woocommerce-chained-products.php";}}}i:1;O:8:"stdClass":1:{s:6:"module";s:16:"wcs_banner_block";}i:2;O:8:"stdClass":2:{s:6:"module";s:12:"column_start";s:9:"container";s:22:"column_container_start";}i:3;O:8:"stdClass":4:{s:6:"module";s:12:"column_block";s:5:"title";s:46:"Improve the main features of your online store";s:11:"description";s:71:"Sell more by helping customers find the products and options they want.";s:5:"items";a:9:{i:0;O:8:"stdClass":6:{s:4:"href";s:129:"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:15:"Product Add-ons";s:5:"image";s:73:"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png";s:11:"description";s:82:"Give your customers the option to customize their purchase or add personalization.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:57:"woocommerce-product-addons/woocommerce-product-addons.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:140:"https://woocommerce.com/products/woocommerce-product-search/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:14:"Product Search";s:5:"image";s:72:"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png";s:11:"description";s:67:"Make sure customers find what they want when they search your site.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:57:"woocommerce-product-search/woocommerce-product-search.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:142:"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:16:"Checkout Add-ons";s:5:"image";s:74:"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png";s:11:"description";s:89:"Highlight relevant products, offers like free shipping and other upsells during checkout.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:61:"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php";}i:3;O:8:"stdClass":6:{s:4:"href";s:147:"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:21:"Checkout Field Editor";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:128:"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:71:"woocommerce-checkout-field-editor/woocommerce-checkout-field-editor.php";}i:4;O:8:"stdClass":6:{s:4:"href";s:138:"https://woocommerce.com/products/woocommerce-social-login/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:24:"WooCommerce Social Login";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:62:"Enable Social Login for Seamless Checkout and Account Creation";s:6:"button";s:9:"From: $79";s:6:"plugin";s:53:"woocommerce-social-login/woocommerce-social-login.php";}i:5;O:8:"stdClass":6:{s:4:"href";s:135:"https://woocommerce.com/products/woocommerce-wishlists/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:21:"WooCommerce Wishlists";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:113:"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:47:"woocommerce-wishlists/woocommerce-wishlists.php";}i:6;O:8:"stdClass":6:{s:4:"href";s:126:"https://woocommerce.com/products/cart-notices/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:12:"Cart Notices";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:73:"Display dynamic, actionable messages to your customers as they check out.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:53:"woocommerce-cart-notices/woocommerce-cart-notices.php";}i:7;O:8:"stdClass":6:{s:4:"href";s:126:"https://woocommerce.com/products/cart-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:12:"Cart Add-ons";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:109:"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart";s:6:"button";s:9:"From: $29";s:6:"plugin";s:53:"woocommerce-cart-add-ons/woocommerce-cart-add-ons.php";}i:8;O:8:"stdClass":6:{s:4:"href";s:134:"https://woocommerce.com/products/woocommerce-waitlist/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:20:"WooCommerce Waitlist";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:117:"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:45:"woocommerce-waitlist/woocommerce-waitlist.php";}}}i:4;O:8:"stdClass":5:{s:6:"module";s:17:"small_light_block";s:5:"title";s:34:"Get the official WooCommerce theme";s:11:"description";s:128:"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.";s:5:"image";s:70:"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png";s:7:"buttons";a:2:{i:0;O:8:"stdClass":2:{s:4:"href";s:44:"/wp-admin/theme-install.php?theme=storefront";s:4:"text";s:7:"Install";}i:1;O:8:"stdClass":2:{s:4:"href";s:115:"https://woocommerce.com/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:4:"text";s:9:"Read More";}}}i:5;O:8:"stdClass":1:{s:6:"module";s:10:"column_end";}i:6;O:8:"stdClass":1:{s:6:"module";s:12:"column_start";}i:7;O:8:"stdClass":4:{s:6:"module";s:16:"small_dark_block";s:5:"title";s:20:"Square + WooCommerce";s:11:"description";s:176:"Keep your WooCommerce and brick-and-mortar stores in sync. Use Square to take payments both online and offline, keep inventory updated between the two and sync product changes.";s:5:"items";a:1:{i:0;O:8:"stdClass":2:{s:4:"href";s:120:"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:6:"button";s:5:"Free!";}}}i:8;O:8:"stdClass":4:{s:6:"module";s:12:"column_block";s:5:"title";s:19:"Get deeper insights";s:11:"description";s:58:"Learn how your store is performing with enhanced reporting";s:5:"items";a:8:{i:0;O:8:"stdClass":6:{s:4:"href";s:142:"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:16:"Google Analytics";s:5:"image";s:60:"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png";s:11:"description";s:93:"Understand your customers and increase revenue with the world’s leading analytics platform.";s:6:"button";s:4:"Free";s:6:"plugin";s:85:"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:138:"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:12:"Cart reports";s:5:"image";s:70:"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png";s:11:"description";s:66:"Get real-time reports on what customers are leaving in their cart.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:53:"woocommerce-cart-reports/woocommerce-cart-reports.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:139:"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:13:"Cost of Goods";s:5:"image";s:71:"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png";s:11:"description";s:64:"Easily track profit by including  cost of goods in your reports.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:55:"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php";}i:3;O:8:"stdClass":6:{s:4:"href";s:146:"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:32:"WooCommerce Google Analytics Pro";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:85:"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.";s:6:"button";s:9:"From: $29";s:6:"plugin";s:69:"woocommerce-google-analytics-pro/woocommerce-google-analytics-pro.php";}i:4;O:8:"stdClass":6:{s:4:"href";s:142:"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:28:"WooCommerce Customer History";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:125:"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:61:"woocommerce-customer-history/woocommerce-customer-history.php";}i:5;O:8:"stdClass":6:{s:4:"href";s:126:"https://woocommerce.com/products/kiss-metrics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:11:"Kissmetrics";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:79:"Easily add Kissmetrics event tracking to your WooCommerce store with one click.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:52:"woocommerce-kiss-metrics/woocommerce-kissmetrics.php";}i:6;O:8:"stdClass":6:{s:4:"href";s:122:"https://woocommerce.com/products/mixpanel/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:8:"Mixpanel";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:65:"Add event tracking powered by Mixpanel to your WooCommerce store.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:45:"woocommerce-mixpanel/woocommerce-mixpanel.php";}i:7;O:8:"stdClass":6:{s:4:"href";s:144:"https://woocommerce.com/products/woocommerce-sales-report-email/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:30:"WooCommerce Sales Report Email";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:107:"Receive emails daily, weekly or monthly with meaningful information about how your products are performing.";s:6:"button";s:9:"From: $29";s:6:"plugin";s:65:"woocommerce-sales-report-email/woocommerce-sales-report-email.php";}}}i:9;O:8:"stdClass":2:{s:6:"module";s:10:"column_end";s:9:"container";s:20:"column_container_end";}i:10;O:8:"stdClass":4:{s:6:"module";s:12:"banner_block";s:5:"title";s:40:"Promote your products and increase sales";s:11:"description";s:77:"From coupons to emails, these extensions can power up your marketing efforts.";s:5:"items";a:9:{i:0;O:8:"stdClass":6:{s:4:"href";s:127:"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:13:"Smart Coupons";s:5:"image";s:71:"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png";s:11:"description";s:106:"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.";s:6:"button";s:9:"From: $99";s:6:"plugin";s:55:"woocommerce-smart-coupons/woocommerce-smart-coupons.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:130:"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:16:"Follow Up Emails";s:5:"image";s:74:"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png";s:11:"description";s:140:"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.";s:6:"button";s:9:"From: $99";s:6:"plugin";s:61:"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:133:"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:19:"Google Product Feed";s:5:"image";s:77:"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png";s:11:"description";s:61:"Let customers find you when shopping for products via Google.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:45:"woocommerce-product-feeds/woocommerce-gpf.php";}i:3;O:8:"stdClass":6:{s:4:"href";s:129:"https://woocommerce.com/products/dynamic-pricing/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:15:"Dynamic Pricing";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:48:"Bulk discounts, role-based pricing and much more";s:6:"button";s:10:"From: $129";s:6:"plugin";s:59:"woocommerce-dynamic-pricing/woocommerce-dynamic-pricing.php";}i:4;O:8:"stdClass":6:{s:4:"href";s:144:"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:30:"WooCommerce Points and Rewards";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:102:"Reward your customers for purchases and other actions with points which can be redeemed for discounts.";s:6:"button";s:10:"From: $129";s:6:"plugin";s:65:"woocommerce-points-and-rewards/woocommerce-points-and-rewards.php";}i:5;O:8:"stdClass":6:{s:4:"href";s:126:"https://woocommerce.com/products/store-credit/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:24:"WooCommerce Store Credit";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:152:"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.";s:6:"button";s:9:"From: $29";s:6:"plugin";s:53:"woocommerce-store-credit/woocommerce-store-credit.php";}i:6;O:8:"stdClass":6:{s:4:"href";s:122:"https://woocommerce.com/products/facebook/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:24:"Facebook for WooCommerce";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:89:"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.";s:6:"button";s:4:"Free";s:6:"plugin";s:53:"facebook-for-woocommerce/facebook-for-woocommerce.php";}i:7;O:8:"stdClass":6:{s:4:"href";s:137:"https://woocommerce.com/products/newsletter-subscription/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:23:"Newsletter Subscription";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:127:"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:63:"woocommerce-subscribe-to-newsletter/subscribe-to-newsletter.php";}i:8;O:8:"stdClass":6:{s:4:"href";s:142:"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons&utm_content=featured";s:5:"title";s:28:"WooCommerce Email Customizer";s:5:"image";s:57:"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png";s:11:"description";s:125:"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:61:"woocommerce-email-customizer/woocommerce-email-customizer.php";}}}}}', 'no'),
(509, 'wpseo_sitemap_16_cache_validator', '35oXf', 'no'),
(510, 'wpseo_sitemap_17_cache_validator', '35oXq', 'no'),
(511, 'wpseo_sitemap_18_cache_validator', '35oXD', 'no'),
(512, 'wpseo_sitemap_19_cache_validator', '35oXR', 'no'),
(513, 'wpseo_sitemap_20_cache_validator', '35oY3', 'no'),
(514, 'wpseo_sitemap_21_cache_validator', '35oYh', 'no'),
(515, 'wpseo_sitemap_33_cache_validator', '35oYu', 'no'),
(516, 'wpseo_sitemap_36_cache_validator', '35oYI', 'no'),
(517, 'wpseo_sitemap_39_cache_validator', '35oYV', 'no'),
(518, 'wpseo_sitemap_49_cache_validator', '35oZ9', 'no'),
(523, 'wpseo_sitemap_62_cache_validator', '3bB3r', 'no'),
(527, 'wpseo_sitemap_55_cache_validator', '3B7yc', 'no'),
(529, 'wpseo_sitemap_61_cache_validator', '3Lzsb', 'no'),
(530, '_transient_timeout_yoast_i18n_wordpress-seo_fr_FR', '1527851770', 'no'),
(531, '_transient_yoast_i18n_wordpress-seo_fr_FR', 'O:8:"stdClass":12:{s:2:"id";s:6:"396146";s:4:"name";s:15:"French (France)";s:4:"slug";s:7:"default";s:10:"project_id";s:4:"3158";s:6:"locale";s:2:"fr";s:13:"current_count";i:1105;s:18:"untranslated_count";i:0;s:13:"waiting_count";i:0;s:11:"fuzzy_count";i:0;s:18:"percent_translated";i:100;s:9:"wp_locale";s:5:"fr_FR";s:13:"last_modified";s:19:"2018-05-31 09:53:48";}', 'no'),
(537, 'wpseo_sitemap_server_cache_validator', '4ocr8', 'no'),
(541, 'category_children', 'a:0:{}', 'yes'),
(543, 'wpseo_sitemap_server_category_cache_validator', '4PM2h', 'no'),
(546, 'acf_version', '4.4.12', 'yes'),
(547, 'wpseo_sitemap_acf_cache_validator', '4OutQ', 'no'),
(551, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(553, 'wpseo_sitemap_52_cache_validator', '3bdJ', 'no'),
(554, 'wpseo_sitemap_53_cache_validator', 'mG5i', 'no'),
(555, 'wpseo_sitemap_54_cache_validator', 'mG5t', 'no'),
(556, 'wpseo_sitemap_57_cache_validator', '4AjvV', 'no'),
(557, 'wpseo_sitemap_58_cache_validator', '4Ajw8', 'no'),
(558, 'wpseo_sitemap_59_cache_validator', '4Ajwl', 'no'),
(566, 'wpseo_taxonomy_meta', 'a:1:{s:15:"server_category";a:1:{i:21;a:2:{s:13:"wpseo_linkdex";s:2:"33";s:19:"wpseo_content_score";s:2:"30";}}}', 'yes'),
(572, 'server_category_children', 'a:0:{}', 'yes'),
(578, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.6";s:7:"version";s:5:"4.9.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1527844315;s:15:"version_checked";s:5:"4.9.6";s:12:"translations";a:0:{}}', 'no'),
(579, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1527844330;s:7:"checked";a:5:{s:8:"mindgeek";s:3:"2.0";s:6:"sydney";s:4:"1.45";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(583, '_site_transient_timeout_theme_roots', '1527846116', 'no'),
(584, '_site_transient_theme_roots', 'a:5:{s:8:"mindgeek";s:7:"/themes";s:6:"sydney";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(585, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1527844316;s:7:"checked";a:5:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:19:"akismet/akismet.php";s:5:"4.0.3";s:17:"server/server.php";s:3:"0.1";s:9:"hello.php";s:3:"1.7";s:24:"wordpress-seo/wp-seo.php";s:5:"7.5.3";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.7.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.6";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"7.5.3";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.7.5.3.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347";s:2:"1x";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435";}s:11:"banners_rtl";a:2:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435";}}}}', 'no'),
(586, '_transient_timeout_wpseo-statistics-totals', '1527930728', 'no'),
(587, '_transient_wpseo-statistics-totals', 'a:1:{i:1;a:2:{s:6:"scores";a:1:{i:0;a:4:{s:8:"seo_rank";s:2:"na";s:5:"label";s:49:"Articles <strong>sans</strong> mot-clé principal";s:5:"count";s:1:"3";s:4:"link";s:115:"http://localhost/Integration/wordpress/wp-admin/edit.php?post_status=publish&#038;post_type=post&#038;seo_filter=na";}}s:8:"division";a:5:{s:3:"bad";i:0;s:2:"ok";i:0;s:4:"good";i:0;s:2:"na";i:1;s:7:"noindex";i:0;}}}', 'no'),
(588, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1527887529', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(589, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Jun 2018 08:45:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wpfr.net/wordpress-gutenberg/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2018 09:00:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"éditeur visuel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:9:"Gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2117903";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1474:"Gutenberg arrive à grand pas, alors voici un résumé de tout ce qu&#8217;il faut savoir sur le nouvel éditeur visuel de WordPress au travers de questions / réponses ! Difficile de marcher tranquillement dans le quartier WordPress sans entendre parler de ce fameux Gutenberg ! C&#8217;est un nouvel éditeur ? C&#8217;est un nouveau page builder<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i6NQjnc9uiQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpfr.net/wordpress-gutenberg/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"13";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:37:"https://wpfr.net/wordpress-gutenberg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Résultats des élections du bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/resultats-elections-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Mar 2018 08:00:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2107099";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1521:"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/resultats-elections-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"13";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wpfr.net/resultats-elections-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Liste des candidats au bureau 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/liste-candidats-bureau-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Feb 2018 11:45:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2092699";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/liste-candidats-bureau-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/liste-candidats-bureau-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WPFR sponsor du WP Tech Lyon !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Feb 2018 07:00:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2082223";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1507:"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpfr.net/wpfr-sponsor-wptech-lyon/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"Loi anti-fraude et l’e-commerce : les informations officielles";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Jan 2018 14:51:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:10:"Extensions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"Loi anti-fraude";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2072415";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1503:"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"39";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"L’élection du bureau WPFR 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/election-bureau-wpfr-2018/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 15 Jan 2018 11:30:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2041252";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1530:"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/election-bureau-wpfr-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:43:"https://wpfr.net/election-bureau-wpfr-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"PHP Tour Montpellier 2018 : WPFR est partenaire !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Jan 2018 10:12:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2035309";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1489:"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Le point sur les certifications WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/point-certifications-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 11 Dec 2017 17:15:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=2001761";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1552:"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"maximebj";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wpfr.net/point-certifications-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"11";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/point-certifications-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"Certification WordPress par WPFR, appel à contributions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 19 Oct 2017 06:46:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1931227";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"Le 30 septembre, c’est le WordPress Translation Day 2017 !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 12 Sep 2017 12:03:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:11:"communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:10:"traduction";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1883236";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1488:"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Jb Audras";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"5ib2e4M/GYQ6P4nwVqNrxRa+hPw";s:13:"last-modified";s:29:"Fri, 01 Jun 2018 08:49:05 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Fri, 01 Jun 2018 09:12:09 GMT";s:7:"expires";s:29:"Fri, 01 Jun 2018 09:12:09 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:43:"quic=":443"; ma=2592000; v="43,42,41,39,35"";}}s:5:"build";s:14:"20130911020210";}', 'no'),
(590, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1527887529', 'no'),
(591, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1527887529', 'no'),
(592, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:4:{i:0;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:15:"WordCamp Europe";s:3:"url";s:33:"https://2018.europe.wordcamp.org/";s:6:"meetup";s:0:"";s:10:"meetup_url";s:0:"";s:4:"date";s:19:"2018-06-14 00:00:00";s:8:"location";a:4:{s:8:"location";s:16:"Belgrade, Serbia";s:7:"country";s:2:"RS";s:8:"latitude";d:44.808497000000003;s:9:"longitude";d:20.432285;}}i:1;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:17:"WordCamp Brighton";s:3:"url";s:34:"https://2018.brighton.wordcamp.org";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2018-08-17 00:00:00";s:8:"location";a:4:{s:8:"location";s:12:"Brighton, UK";s:7:"country";s:2:"GB";s:8:"latitude";d:50.832385000000002;s:9:"longitude";d:-0.13982339999999999;}}i:2;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:17:"WordCamp Nijmegen";s:3:"url";s:34:"https://2018.nijmegen.wordcamp.org";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2018-08-30 00:00:00";s:8:"location";a:4:{s:8:"location";s:25:"Nijmegen, The Netherlands";s:7:"country";s:2:"NL";s:8:"latitude";d:51.823413299999999;s:9:"longitude";d:5.8673365999999998;}}i:3;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:17:"WordCamp Lausanne";s:3:"url";s:34:"https://2018.lausanne.wordcamp.org";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2018-09-28 00:00:00";s:8:"location";a:4:{s:8:"location";s:21:"Lausanne, Switzerland";s:7:"country";s:2:"CH";s:8:"latitude";d:46.516284599999999;s:9:"longitude";d:6.6382396999999997;}}}}', 'no'),
(593, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1527844329', 'no'),
(594, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1527887529', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(595, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:5:"\n		\n	";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:79:"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Planète WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:17:"https://wpfr.net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Toute l’actualité de WordPress en français !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:8:{i:0;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"Elementor : Enquête sur un constructeur de page WordPress qui intrigue";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/mpwQv-BLxNQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:97:"https://wpmarmite.com/elementor/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=elementor";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 May 2018 06:00:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:322:"\n		        \nSi je vous dis : un plugin de constructeur de page qui présente plus de 700000 installations actives, et qui promet d’être “sans limite de conception”, vous me dites ?...\nL’article Elementor : Enquête sur un constructeur de page WordPress qui intrigue est apparu en premier sur WP Marmite.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Marmite";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:682:"<p><img width="640" height="220" src="https://wpmarmite.com/wp-content/uploads/2018/05/elementor.jpg" class="attachment-full size-full wp-post-image" alt="" /></p>\n<p>Si je vous dis : un plugin de constructeur de page qui présente plus de 700000 installations actives, et qui promet d’être “sans limite de conception”, vous me dites ?...</p>\n<p>L’article <a rel="nofollow" href="https://wpmarmite.com/elementor/">Elementor : Enquête sur un constructeur de page WordPress qui intrigue</a> est apparu en premier sur <a rel="nofollow" href="https://wpmarmite.com">WP Marmite</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/mpwQv-BLxNQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:97:"https://wpmarmite.com/elementor/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=elementor";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:66:"WPS Cleaner by WPServeur pour nettoyer et alléger votre WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/6tmA2jcWaks/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"https://wpformation.com/wps-cleaner/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 May 2018 09:32:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:642:"\n		        Lorsque l&#8217;on utilise un site WordPress depuis quelques temps, il est sûr et certain que nous avons ajouté des extensions, essayé des thèmes, inscrit des utilisateurs. Nous avons également écrit des articles, des pages, reçu des commentaires, etc. Tout cela génère nécessairement des révisions, des brouillons, des images inutilisées et de nombreuses métadonnées. Ces données [&#8230;]\n\nL’article WPS Cleaner by WPServeur pour nettoyer et alléger votre WordPress est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1442:"<p><img width="1303" height="556" src="https://wpformation.com/wp-content/uploads/2018/05/wps-cleaner.jpg" class="attachment-Large size-Large wp-post-image" alt="wps cleaner" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Lorsque l&#8217;on utilise un site WordPress depuis quelques temps, il est sûr et certain que nous avons ajouté des extensions, essayé des thèmes, inscrit des utilisateurs. Nous avons également écrit des articles, des pages, reçu des commentaires, etc. Tout cela génère nécessairement des révisions, des brouillons, des images inutilisées et de nombreuses métadonnées. Ces données [&#8230;]</p>\n<hr />\nL’article <a rel="nofollow" href="https://wpformation.com/wps-cleaner/">WPS Cleaner by WPServeur pour nettoyer et alléger votre WordPress</a> est apparu en premier sur <a href="https://wpformation.com/">WPFormation</a>.<br /> <a href="https://wpformation.com/wordpress/">Tutoriels WordPress</a>, <a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-woocommerce-e-commerce/">Woocommerce</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a>. <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src="http://feeds.feedburner.com/~r/wpfr/~4/6tmA2jcWaks" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:36:"https://wpformation.com/wps-cleaner/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:47:"14 thèmes WordPress girly à adopter en 2018 !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/LasScC7oT10/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wpformation.com/14-themes-wordpress-girly-2018/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 26 May 2018 05:10:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:604:"\n		        Vous commencez peut-être à me connaître, j&#8217;ai une sensibilité graphique très féminine. J&#8217;aime les sites minimalistes, épurés et qui comportent une bonne dose de couleurs pastel (et de rose) ! Rappelez-vous mon tout premier article publié sur WPFormation (ça ne nous rajeunit pas tout ça&#8230;) : je vous avais proposé une sélection de thèmes enfants [&#8230;]\n\nL’article 14 thèmes WordPress girly à adopter en 2018 ! est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1469:"<p><img width="2800" height="1857" src="https://wpformation.com/wp-content/uploads/2018/05/theme-wordpress-girly-2018-azalea.jpg" class="attachment-Large size-Large wp-post-image" alt="thème wordpress girly 2018 azalea" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Vous commencez peut-être à me connaître, j&#8217;ai une sensibilité graphique très féminine. J&#8217;aime les sites minimalistes, épurés et qui comportent une bonne dose de couleurs pastel (et de rose) ! Rappelez-vous mon tout premier article publié sur WPFormation (ça ne nous rajeunit pas tout ça&#8230;) : je vous avais proposé une sélection de thèmes enfants [&#8230;]</p>\n<hr />\nL’article <a rel="nofollow" href="https://wpformation.com/14-themes-wordpress-girly-2018/">14 thèmes WordPress girly à adopter en 2018 !</a> est apparu en premier sur <a href="https://wpformation.com/">WPFormation</a>.<br /> <a href="https://wpformation.com/wordpress/">Tutoriels WordPress</a>, <a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-woocommerce-e-commerce/">Woocommerce</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a>. <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src="http://feeds.feedburner.com/~r/wpfr/~4/LasScC7oT10" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wpformation.com/14-themes-wordpress-girly-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"Social Warfare : Tutoriel sur l’extension de partage social incontournable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/Ld33vsITG7E/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:107:"https://wpmarmite.com/social-warfare/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=social-warfare";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 24 May 2018 06:25:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:350:"\n		        \nSocial Warfare. Avez-vous déjà entendu parler de cette extension de partage social ? Dans son article “La vérité sur les boutons de partage (et la meilleure extension)”, Nicolas en avait...\nL’article Social Warfare : Tutoriel sur l&rsquo;extension de partage social incontournable est apparu en premier sur WP Marmite.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Marmite";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:720:"<p><img width="640" height="220" src="https://wpmarmite.com/wp-content/uploads/2018/05/social-warfare.jpg" class="attachment-full size-full wp-post-image" alt="" /></p>\n<p>Social Warfare. Avez-vous déjà entendu parler de cette extension de partage social ? Dans son article “La vérité sur les boutons de partage (et la meilleure extension)”, Nicolas en avait...</p>\n<p>L’article <a rel="nofollow" href="https://wpmarmite.com/social-warfare/">Social Warfare : Tutoriel sur l&rsquo;extension de partage social incontournable</a> est apparu en premier sur <a rel="nofollow" href="https://wpmarmite.com">WP Marmite</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/Ld33vsITG7E" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:107:"https://wpmarmite.com/social-warfare/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=social-warfare";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"Manage Privacy Options : Gérez les rôles de votre page pour la GDPR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"http://feedproxy.google.com/~r/wpfr/~3/hgl2hkSGpzg/manage-privacy-options-roles-gdpr-105235.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:66:"https://boiteaweb.fr/manage-privacy-options-roles-gdpr-105235.html";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 23 May 2018 15:51:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:438:"\n		        GPDR par-ci, RGPD, par-là. On entends que ça en ce moment, autour du 25 mai, fameuse date de « mise en service » de cette loi du même nom ou plutôt règlement général sur la protection des données. Il y a du neuf quatre neuf six Avec la sortie de la version mineure 4.9.6 de WordPress, une&#160;…\nThe post Manage Privacy Options : Gérez les rôles de votre page pour la GDPR appeared first on BoiteAWeb.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:668:"<p>GPDR par-ci, RGPD, par-là. On entends que ça en ce moment, autour du 25 mai, fameuse date de « mise en service » de cette loi du même nom ou plutôt règlement général sur la protection des données. Il y a du neuf quatre neuf six Avec la sortie de la version mineure 4.9.6 de WordPress, une&#160;…</p>\n<p>The post <a rel="nofollow" href="https://boiteaweb.fr/manage-privacy-options-roles-gdpr-105235.html">Manage Privacy Options : Gérez les rôles de votre page pour la GDPR</a> appeared first on <a rel="nofollow" href="https://boiteaweb.fr">BoiteAWeb</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/hgl2hkSGpzg" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://boiteaweb.fr/manage-privacy-options-roles-gdpr-105235.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"Cloud Act contre RGPD : Vos données personnelles enjeux d’une guerre d’états";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/edV4EED6FRk/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:100:"https://www.wpnormandie.fr/cloud-act-contre-rgpd-vos-donnees-personnelles-enjeux-dune-guerre-detats/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 May 2018 09:50:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:351:"\n		        Le 25 mai prochain entrera en vigueur le RGPD. Cette loi européenne a pour objectif de protéger vos données personnelles. Dans le même temps, presque en catimini les USA ont voté le Cloud Act qui vient « défier » le RGPD. RGPD, c’est quoi ? Le RGPD ou GPDR (en anglais) a pour but de « rendre aux citoyens [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:421:"Le 25 mai prochain entrera en vigueur le RGPD. Cette loi européenne a pour objectif de protéger vos données personnelles. Dans le même temps, presque en catimini les USA ont voté le Cloud Act qui vient « défier » le RGPD. RGPD, c’est quoi ? Le RGPD ou GPDR (en anglais) a pour but de « rendre aux citoyens [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/edV4EED6FRk" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:100:"https://www.wpnormandie.fr/cloud-act-contre-rgpd-vos-donnees-personnelles-enjeux-dune-guerre-detats/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"La version 4.9.6 de WordPress RGPD friendly est arrivée";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/bmo3zQU_D1s/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:83:"https://www.wpnormandie.fr/la-version-4-9-6-de-wordpress-rgpd-friendly-est-arrivee/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 May 2018 08:09:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:336:"\n		        La version 4.9.6 de WordPress est arrivée. C’est une mise à jour de maintenance, mais qui a la particularité d’intégré des éléments liés au RGPD qui entrera en vigueur le 25 mai. Pour en savoir plus sur le RGPD on vous engage à lire cet excellent article fait par nos amis de chez FIDAL. Pour [&#8230;]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:406:"La version 4.9.6 de WordPress est arrivée. C’est une mise à jour de maintenance, mais qui a la particularité d’intégré des éléments liés au RGPD qui entrera en vigueur le 25 mai. Pour en savoir plus sur le RGPD on vous engage à lire cet excellent article fait par nos amis de chez FIDAL. Pour [&#8230;]<img src="http://feeds.feedburner.com/~r/wpfr/~4/bmo3zQU_D1s" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:83:"https://www.wpnormandie.fr/la-version-4-9-6-de-wordpress-rgpd-friendly-est-arrivee/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"13 conseils pour bien débuter avec WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/n7t7DIX7W7U/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wpformation.com/13-conseils-pour-bien-debuter-avec-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 May 2018 06:15:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:577:"\n		        Vous êtes débutant WordPress ? Vous n&#8217;avez pas encore sauté le pas mais vous désirez créer votre premier site ou votre premier blog ? Parfait, cet article va vous intéresser puisqu&#8217;il va vous donner 13 conseils pour bien démarrer avec WordPress. C&#8217;est toujours mieux de partir sur de bonnes bases, cela vous évitera de perdre [&#8230;]\n\nL’article 13 conseils pour bien débuter avec WordPress est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1443:"<p><img width="1200" height="800" src="https://wpformation.com/wp-content/uploads/2018/05/conseils-debutant-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="conseils débutant WordPress" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Vous êtes débutant WordPress ? Vous n&#8217;avez pas encore sauté le pas mais vous désirez créer votre premier site ou votre premier blog ? Parfait, cet article va vous intéresser puisqu&#8217;il va vous donner 13 conseils pour bien démarrer avec WordPress. C&#8217;est toujours mieux de partir sur de bonnes bases, cela vous évitera de perdre [&#8230;]</p>\n<hr />\nL’article <a rel="nofollow" href="https://wpformation.com/13-conseils-pour-bien-debuter-avec-wordpress/">13 conseils pour bien débuter avec WordPress</a> est apparu en premier sur <a href="https://wpformation.com/">WPFormation</a>.<br /> <a href="https://wpformation.com/wordpress/">Tutoriels WordPress</a>, <a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-woocommerce-e-commerce/">Woocommerce</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a>. <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src="http://feeds.feedburner.com/~r/wpfr/~4/n7t7DIX7W7U" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wpformation.com/13-conseils-pour-bien-debuter-avec-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:32:"http://feeds.feedburner.com/wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:4:"wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"KYAet+lrYPUNXDXnu3WDwahXEmk";s:13:"last-modified";s:29:"Fri, 01 Jun 2018 08:44:24 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Fri, 01 Jun 2018 09:12:09 GMT";s:7:"expires";s:29:"Fri, 01 Jun 2018 09:12:09 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:43:"quic=":443"; ma=2592000; v="43,42,41,39,35"";}}s:5:"build";s:14:"20130911020210";}', 'no'),
(596, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1527887529', 'no'),
(597, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1527844329', 'no'),
(598, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1527887529', 'no'),
(599, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\'>Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/mpwQv-BLxNQ/\'>Elementor : Enquête sur un constructeur de page WordPress qui intrigue</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/6tmA2jcWaks/\'>WPS Cleaner by WPServeur pour nettoyer et alléger votre WordPress</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/LasScC7oT10/\'>14 thèmes WordPress girly à adopter en 2018 !</a></li></ul></div>', 'no'),
(601, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1527689735:1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1527687590:1'),
(6, 6, '_wp_attached_file', '2018/05/1540_10-Ancient-Mayan-Tattoo-Designs.jpg'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:810;s:4:"file";s:48:"2018/05/1540_10-Ancient-Mayan-Tattoo-Designs.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:48:"1540_10-Ancient-Mayan-Tattoo-Designs-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:48:"1540_10-Ancient-Mayan-Tattoo-Designs-600x675.jpg";s:5:"width";i:600;s:6:"height";i:675;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:48:"1540_10-Ancient-Mayan-Tattoo-Designs-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:48:"1540_10-Ancient-Mayan-Tattoo-Designs-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"1540_10-Ancient-Mayan-Tattoo-Designs-267x300.jpg";s:5:"width";i:267;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:48:"1540_10-Ancient-Mayan-Tattoo-Designs-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 8, '_wp_attached_file', '2018/05/tatoo.jpeg'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:225;s:6:"height";i:225;s:4:"file";s:18:"2018/05/tatoo.jpeg";s:5:"sizes";a:3:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"tatoo-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"tatoo-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"tatoo-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 5, '_thumbnail_id', '8'),
(15, 2, '_edit_lock', '1527758595:1'),
(16, 3, '_edit_lock', '1527670012:1'),
(17, 10, '_menu_item_type', 'custom'),
(18, 10, '_menu_item_menu_item_parent', '0'),
(19, 10, '_menu_item_object_id', '10'),
(20, 10, '_menu_item_object', 'custom'),
(21, 10, '_menu_item_target', ''),
(22, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 10, '_menu_item_xfn', ''),
(24, 10, '_menu_item_url', 'http://localhost/Integration/wordpress/'),
(25, 10, '_menu_item_orphaned', '1527674616'),
(26, 11, '_menu_item_type', 'post_type'),
(27, 11, '_menu_item_menu_item_parent', '0'),
(28, 11, '_menu_item_object_id', '2'),
(29, 11, '_menu_item_object', 'page'),
(30, 11, '_menu_item_target', ''),
(31, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 11, '_menu_item_xfn', ''),
(33, 11, '_menu_item_url', ''),
(34, 11, '_menu_item_orphaned', '1527674616'),
(36, 12, '_menu_item_type', 'custom'),
(37, 12, '_menu_item_menu_item_parent', '0'),
(38, 12, '_menu_item_object_id', '12'),
(39, 12, '_menu_item_object', 'custom'),
(40, 12, '_menu_item_target', ''),
(41, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 12, '_menu_item_xfn', ''),
(43, 12, '_menu_item_url', 'http://localhost/Integration/wordpress/orders/'),
(44, 12, '_menu_item_orphaned', '1527674700'),
(45, 13, '_menu_item_type', 'custom'),
(46, 13, '_menu_item_menu_item_parent', '0'),
(47, 13, '_menu_item_object_id', '13'),
(48, 13, '_menu_item_object', 'custom'),
(49, 13, '_menu_item_target', ''),
(50, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 13, '_menu_item_xfn', ''),
(52, 13, '_menu_item_url', 'http://localhost/Integration/wordpress/edit-account/'),
(53, 13, '_menu_item_orphaned', '1527674700'),
(54, 14, '_menu_item_type', 'custom'),
(55, 14, '_menu_item_menu_item_parent', '0'),
(56, 14, '_menu_item_object_id', '14'),
(57, 14, '_menu_item_object', 'custom'),
(58, 14, '_menu_item_target', ''),
(59, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 14, '_menu_item_xfn', ''),
(61, 14, '_menu_item_url', 'http://localhost/Integration/wordpress/customer-logout/?_wpnonce=280f7560b3'),
(62, 14, '_menu_item_orphaned', '1527674700'),
(63, 15, '_menu_item_type', 'custom'),
(64, 15, '_menu_item_menu_item_parent', '0'),
(65, 15, '_menu_item_object_id', '15'),
(66, 15, '_menu_item_object', 'custom'),
(67, 15, '_menu_item_target', ''),
(68, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 15, '_menu_item_xfn', ''),
(70, 15, '_menu_item_url', 'http://localhost/Integration/wordpress/lost-password/'),
(71, 15, '_menu_item_orphaned', '1527674700'),
(126, 22, '_edit_last', '1'),
(127, 22, '_edit_lock', '1527684320:1'),
(130, 22, '_yoast_wpseo_content_score', '30'),
(131, 22, '_yoast_wpseo_primary_category', ''),
(132, 22, '_wp_trash_meta_status', 'publish'),
(133, 22, '_wp_trash_meta_time', '1527684472'),
(134, 22, '_wp_desired_post_slug', 'troisieme-article'),
(135, 24, '_wp_attached_file', '2018/05/backgorund5.jpg'),
(136, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1024;s:4:"file";s:23:"2018/05/backgorund5.jpg";s:5:"sizes";a:10:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"backgorund5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:23:"backgorund5-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"backgorund5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"backgorund5-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"backgorund5-768x614.jpg";s:5:"width";i:768;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"backgorund5-1024x819.jpg";s:5:"width";i:1024;s:6:"height";i:819;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"backgorund5-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:23:"backgorund5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:23:"backgorund5-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"backgorund5-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(137, 1, '_edit_last', '1'),
(141, 1, '_yoast_wpseo_content_score', '60'),
(142, 1, '_yoast_wpseo_primary_category', ''),
(145, 5, '_yoast_wpseo_content_score', '30'),
(146, 5, '_yoast_wpseo_primary_category', ''),
(147, 27, '_wp_attached_file', '2018/05/4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men.jpg'),
(148, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:600;s:4:"file";s:79:"2018/05/4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men.jpg";s:5:"sizes";a:7:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:79:"4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:79:"4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men-350x382.jpg";s:5:"width";i:350;s:6:"height";i:382;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:79:"4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:79:"4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men-275x300.jpg";s:5:"width";i:275;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:79:"4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:79:"4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:79:"4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(157, 29, '_edit_last', '1'),
(158, 29, '_edit_lock', '1527689764:1'),
(161, 29, '_yoast_wpseo_content_score', '30'),
(162, 29, '_yoast_wpseo_primary_category', ''),
(163, 2, '_edit_last', '1'),
(164, 2, '_yoast_wpseo_content_score', '60'),
(165, 32, '_edit_last', '1'),
(166, 32, '_edit_lock', '1527754740:1'),
(175, 32, '_yoast_wpseo_content_score', '60'),
(176, 35, '_edit_last', '1'),
(177, 35, '_edit_lock', '1527692011:1'),
(186, 35, '_yoast_wpseo_content_score', '60'),
(187, 38, '_edit_last', '1'),
(188, 38, '_edit_lock', '1527771695:1'),
(197, 38, '_yoast_wpseo_content_score', '60'),
(198, 48, '_edit_last', '1'),
(199, 48, '_edit_lock', '1527758537:1'),
(208, 48, '_yoast_wpseo_content_score', '60'),
(209, 51, '_menu_item_type', 'post_type'),
(210, 51, '_menu_item_menu_item_parent', '0'),
(211, 51, '_menu_item_object_id', '48'),
(212, 51, '_menu_item_object', 'page'),
(213, 51, '_menu_item_target', ''),
(214, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(215, 51, '_menu_item_xfn', ''),
(216, 51, '_menu_item_url', ''),
(254, 56, '_menu_item_type', 'post_type'),
(255, 56, '_menu_item_menu_item_parent', '0'),
(256, 56, '_menu_item_object_id', '48'),
(257, 56, '_menu_item_object', 'page'),
(258, 56, '_menu_item_target', ''),
(259, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(260, 56, '_menu_item_xfn', ''),
(261, 56, '_menu_item_url', ''),
(290, 60, '_menu_item_type', 'post_type'),
(291, 60, '_menu_item_menu_item_parent', '0'),
(292, 60, '_menu_item_object_id', '2'),
(293, 60, '_menu_item_object', 'page'),
(294, 60, '_menu_item_target', ''),
(295, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(296, 60, '_menu_item_xfn', ''),
(297, 60, '_menu_item_url', ''),
(317, 64, '_menu_item_type', 'custom'),
(318, 64, '_menu_item_menu_item_parent', '0'),
(319, 64, '_menu_item_object_id', '64'),
(320, 64, '_menu_item_object', 'custom'),
(321, 64, '_menu_item_target', ''),
(322, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(323, 64, '_menu_item_xfn', ''),
(324, 64, '_menu_item_url', 'http://localhost/Integration/wordpress/wp-login.php'),
(326, 69, '_edit_last', '1'),
(327, 69, '_edit_lock', '1527771397:1'),
(328, 69, '_yoast_wpseo_primary_server_category', ''),
(329, 69, '_yoast_wpseo_content_score', '30'),
(330, 70, '_edit_last', '1'),
(331, 70, 'field_5b0fef89783dd', 'a:14:{s:3:"key";s:19:"field_5b0fef89783dd";s:5:"label";s:4:"prix";s:4:"name";s:4:"prix";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(332, 70, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"server";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(333, 70, 'position', 'normal'),
(334, 70, 'layout', 'no_box'),
(335, 70, 'hide_on_screen', ''),
(336, 70, '_edit_lock', '1527777424:1'),
(337, 69, 'prix', '2,99€ HT / Mois'),
(338, 69, '_prix', 'field_5b0fef89783dd'),
(339, 71, '_edit_last', '1'),
(340, 71, 'prix', '5,99€ HT / Mois'),
(341, 71, '_prix', 'field_5b0fef89783dd'),
(342, 71, '_yoast_wpseo_primary_server_category', '19'),
(343, 71, '_yoast_wpseo_content_score', '30'),
(344, 71, '_edit_lock', '1527771247:1'),
(345, 73, '_edit_last', '1'),
(346, 73, '_edit_lock', '1527771374:1'),
(347, 73, 'prix', '9,99€ HT / Mois'),
(348, 73, '_prix', 'field_5b0fef89783dd'),
(349, 73, '_yoast_wpseo_primary_server_category', ''),
(350, 73, '_yoast_wpseo_content_score', '60'),
(351, 74, '_edit_last', '1'),
(352, 74, '_edit_lock', '1527771296:1'),
(353, 74, 'prix', '159,99€ HT / Mois'),
(354, 74, '_prix', 'field_5b0fef89783dd'),
(355, 74, '_yoast_wpseo_primary_server_category', '20'),
(356, 74, '_yoast_wpseo_content_score', '30'),
(357, 76, '_edit_last', '1'),
(358, 76, '_edit_lock', '1527771593:1'),
(359, 76, 'prix', '319,99€ HT / Mois'),
(360, 76, '_prix', 'field_5b0fef89783dd'),
(361, 76, '_yoast_wpseo_primary_server_category', ''),
(362, 76, '_yoast_wpseo_content_score', '30'),
(363, 77, '_edit_last', '1'),
(364, 77, '_edit_lock', '1527771358:1'),
(365, 77, 'prix', '559,99€ HT / Mois'),
(366, 77, '_prix', 'field_5b0fef89783dd'),
(367, 77, '_yoast_wpseo_primary_server_category', '20'),
(368, 77, '_yoast_wpseo_content_score', '60'),
(369, 79, '_edit_last', '1'),
(370, 79, '_edit_lock', '1527771600:1'),
(371, 79, 'prix', '299,99€ HT / Mois'),
(372, 79, '_prix', 'field_5b0fef89783dd'),
(373, 79, '_yoast_wpseo_primary_server_category', ''),
(374, 79, '_yoast_wpseo_content_score', '60'),
(375, 80, '_edit_last', '1'),
(376, 80, 'prix', '489,99€ HT / Mois'),
(377, 80, '_prix', 'field_5b0fef89783dd'),
(378, 80, '_yoast_wpseo_primary_server_category', '21'),
(379, 80, '_yoast_wpseo_content_score', '60'),
(380, 80, '_edit_lock', '1527771410:1'),
(381, 81, '_edit_last', '1'),
(382, 81, '_edit_lock', '1527773627:1'),
(383, 81, 'prix', '581,99€ HT / Mois'),
(384, 81, '_prix', 'field_5b0fef89783dd'),
(385, 81, '_yoast_wpseo_primary_server_category', '21'),
(386, 81, '_yoast_wpseo_content_score', '60'),
(387, 84, '_menu_item_type', 'taxonomy'),
(388, 84, '_menu_item_menu_item_parent', '0'),
(389, 84, '_menu_item_object_id', '19'),
(390, 84, '_menu_item_object', 'server_category'),
(391, 84, '_menu_item_target', ''),
(392, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(393, 84, '_menu_item_xfn', ''),
(394, 84, '_menu_item_url', ''),
(396, 85, '_menu_item_type', 'taxonomy'),
(397, 85, '_menu_item_menu_item_parent', '0'),
(398, 85, '_menu_item_object_id', '20'),
(399, 85, '_menu_item_object', 'server_category'),
(400, 85, '_menu_item_target', ''),
(401, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(402, 85, '_menu_item_xfn', ''),
(403, 85, '_menu_item_url', ''),
(405, 86, '_menu_item_type', 'taxonomy'),
(406, 86, '_menu_item_menu_item_parent', '0'),
(407, 86, '_menu_item_object_id', '21'),
(408, 86, '_menu_item_object', 'server_category'),
(409, 86, '_menu_item_target', ''),
(410, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(411, 86, '_menu_item_xfn', ''),
(412, 86, '_menu_item_url', ''),
(414, 87, '_menu_item_type', 'taxonomy'),
(415, 87, '_menu_item_menu_item_parent', '0'),
(416, 87, '_menu_item_object_id', '19'),
(417, 87, '_menu_item_object', 'server_category'),
(418, 87, '_menu_item_target', ''),
(419, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(420, 87, '_menu_item_xfn', ''),
(421, 87, '_menu_item_url', ''),
(423, 88, '_menu_item_type', 'taxonomy'),
(424, 88, '_menu_item_menu_item_parent', '0'),
(425, 88, '_menu_item_object_id', '20'),
(426, 88, '_menu_item_object', 'server_category'),
(427, 88, '_menu_item_target', ''),
(428, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(429, 88, '_menu_item_xfn', ''),
(430, 88, '_menu_item_url', ''),
(432, 89, '_menu_item_type', 'taxonomy'),
(433, 89, '_menu_item_menu_item_parent', '0'),
(434, 89, '_menu_item_object_id', '21'),
(435, 89, '_menu_item_object', 'server_category'),
(436, 89, '_menu_item_target', ''),
(437, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(438, 89, '_menu_item_xfn', ''),
(439, 89, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-30 10:15:28', '2018-05-30 08:15:28', '<img class="alignnone size-full wp-image-27" src="http://localhost/Integration/wordpress/wp-content/uploads/2018/05/4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men.jpg" alt="" width="550" height="600" />Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-05-30 15:46:10', '2018-05-30 13:46:10', '', 0, 'http://localhost/Integration/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-30 10:15:28', '2018-05-30 08:15:28', '<main class="container">\r\n<section id="solution" class="flex">\r\n			<h2>Notre solution en 3 points</h2>\r\n			<article class="host">\r\n				<i class="fa fa-cogs" aria-hidden="true"></i>\r\n				<h3>Configuration</h3>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-area-chart" aria-hidden="true"></i>\r\n				<h3>Monitoring</h3>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-database" aria-hidden="true"></i>\r\n				<h3>Sauvegarde</h3>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n		</section>\r\n\r\n		<section id="hosting" class="flex">\r\n			<h2>Choisissez votre style d\'hébergement</h2>\r\n			<article class="host">\r\n				<i class="fa fa-users" aria-hidden="true"></i>\r\n				<h3>Serveur Mutualisé</h3>\r\n				<p class="prix">19€ / mois</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-user" aria-hidden="true"></i>\r\n				<h3>Serveur Dédié</h3>\r\n				<p class="prix">39€ / mois</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-cloud" aria-hidden="true"></i>\r\n				<h3>Service Cloud</h3>\r\n				<p class="prix">49€ / mois</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n		</section>\r\n</main>', 'Home', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-05-30 16:54:10', '2018-05-30 14:54:10', '', 0, 'http://localhost/Integration/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-05-30 10:15:28', '2018-05-30 08:15:28', '<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://localhost/Integration/wordpress.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant un article, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’identifiant de l’article que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2018-05-30 10:15:28', '2018-05-30 08:15:28', '', 0, 'http://localhost/Integration/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-05-30 10:15:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-30 10:15:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2018-05-30 10:34:29', '2018-05-30 08:34:29', 'image <strong>tattouage</strong>\r\n\r\nCeci est un tatouage main\r\n\r\n<img class="alignnone size-full wp-image-6" src="http://localhost/Integration/wordpress/wp-content/uploads/2018/05/1540_10-Ancient-Mayan-Tattoo-Designs.jpg" alt="" width="720" height="810" />', 'Tatouage main', '', 'publish', 'open', 'open', '', 'tatouage-main', '', '', '2018-05-30 15:31:14', '2018-05-30 13:31:14', '', 0, 'http://localhost/Integration/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2018-05-30 10:34:14', '2018-05-30 08:34:14', '', '1540_10-Ancient-Mayan-Tattoo-Designs', '', 'inherit', 'open', 'closed', '', '1540_10-ancient-mayan-tattoo-designs', '', '', '2018-05-30 10:34:14', '2018-05-30 08:34:14', '', 5, 'http://localhost/Integration/wordpress/wp-content/uploads/2018/05/1540_10-Ancient-Mayan-Tattoo-Designs.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-05-30 10:34:29', '2018-05-30 08:34:29', 'image <strong>tattouage</strong>\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone size-full wp-image-6" src="http://localhost/Integration/wordpress/wp-content/uploads/2018/05/1540_10-Ancient-Mayan-Tattoo-Designs.jpg" alt="" width="720" height="810" />', 'Tatouage main', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-05-30 10:34:29', '2018-05-30 08:34:29', '', 5, 'http://localhost/Integration/wordpress/2018/05/30/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-05-30 10:36:16', '2018-05-30 08:36:16', '', 'tatoo', '', 'inherit', 'open', 'closed', '', 'tatoo', '', '', '2018-05-30 10:36:16', '2018-05-30 08:36:16', '', 5, 'http://localhost/Integration/wordpress/wp-content/uploads/2018/05/tatoo.jpeg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-05-30 10:50:36', '2018-05-30 08:50:36', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n&nbsp;\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n...ou bien quelque chose comme cela :\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/Integration/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-05-30 10:50:36', '2018-05-30 08:50:36', '', 2, 'http://localhost/Integration/wordpress/2018/05/30/2-autosave-v1/', 0, 'revision', '', 0),
(10, 1, '2018-05-30 12:03:35', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-30 12:03:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2018-05-30 12:03:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-30 12:03:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2018-05-30 12:05:00', '0000-00-00 00:00:00', '', 'Commandes', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-30 12:05:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2018-05-30 12:05:00', '0000-00-00 00:00:00', '', 'Détails du compte', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-30 12:05:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2018-05-30 12:05:00', '0000-00-00 00:00:00', '', 'Déconnexion', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-30 12:05:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2018-05-30 12:05:00', '0000-00-00 00:00:00', '', 'Mot de passe perdu', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-30 12:05:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?p=15', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-05-30 14:47:30', '2018-05-30 12:47:30', 'troisieme article', 'troisieme article', '', 'trash', 'open', 'open', '', 'troisieme-article__trashed', '', '', '2018-05-30 14:47:52', '2018-05-30 12:47:52', '', 0, 'http://localhost/Integration/wordpress/?p=22', 0, 'post', '', 0),
(23, 1, '2018-05-30 14:47:30', '2018-05-30 12:47:30', 'troisieme article', 'troisieme article', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-05-30 14:47:30', '2018-05-30 12:47:30', '', 22, 'http://localhost/Integration/wordpress/2018/05/30/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-05-30 15:24:48', '2018-05-30 13:24:48', '', 'backgorund5', '', 'inherit', 'open', 'closed', '', 'backgorund5', '', '', '2018-05-30 15:24:48', '2018-05-30 13:24:48', '', 1, 'http://localhost/Integration/wordpress/wp-content/uploads/2018/05/backgorund5.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-05-30 15:25:31', '2018-05-30 13:25:31', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-05-30 15:25:31', '2018-05-30 13:25:31', '', 1, 'http://localhost/Integration/wordpress/2018/05/30/1-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-05-30 15:31:14', '2018-05-30 13:31:14', 'image <strong>tattouage</strong>\r\n\r\nCeci est un tatouage main\r\n\r\n<img class="alignnone size-full wp-image-6" src="http://localhost/Integration/wordpress/wp-content/uploads/2018/05/1540_10-Ancient-Mayan-Tattoo-Designs.jpg" alt="" width="720" height="810" />', 'Tatouage main', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-05-30 15:31:14', '2018-05-30 13:31:14', '', 5, 'http://localhost/Integration/wordpress/2018/05/30/5-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-05-30 15:42:41', '2018-05-30 13:42:41', '', '4008a3ca5e5b34708cd57a19e84f2ee0--head-tattoos-tattoo-design-for-men', '', 'inherit', 'open', 'closed', '', '4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men', '', '', '2018-05-30 15:42:41', '2018-05-30 13:42:41', '', 1, 'http://localhost/Integration/wordpress/wp-content/uploads/2018/05/4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-05-30 15:42:49', '2018-05-30 13:42:49', '<img class="alignnone size-full wp-image-27" src="http://localhost/Integration/wordpress/wp-content/uploads/2018/05/4008a3ca5e5b34708cd57a19e84f2ee0-head-tattoos-tattoo-design-for-men.jpg" alt="" width="550" height="600" />Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-05-30 15:42:49', '2018-05-30 13:42:49', '', 1, 'http://localhost/Integration/wordpress/2018/05/30/1-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-05-30 16:18:17', '2018-05-30 14:18:17', 'troisieme article', 'troisieme article', '', 'publish', 'open', 'open', '', 'troisieme-article', '', '', '2018-05-30 16:18:17', '2018-05-30 14:18:17', '', 0, 'http://localhost/Integration/wordpress/?p=29', 0, 'post', '', 0),
(30, 1, '2018-05-30 16:18:17', '2018-05-30 14:18:17', 'troisieme article', 'troisieme article', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-05-30 16:18:17', '2018-05-30 14:18:17', '', 29, 'http://localhost/Integration/wordpress/2018/05/30/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-05-30 16:42:16', '2018-05-30 14:42:16', '<h2>Notre solution en 3 points</h2>\r\n			<section class="solution">\r\n				<div class="column">\r\n					<i class="fas fa-cogs"></i>\r\n					<h3>Configuration</h3>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, consectetur adipisicing elit</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-chart-area"></i>\r\n					<h3>Monitoring</h3>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, consectetur adipisicing elit</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-database"></i>\r\n					<h3>Sauvegarde</h3>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, consectetur adipisicing elit</p>\r\n				</div>\r\n			</section>\r\n			<h2>Choisissez votre style d\'hébergement</h2>\r\n			<section class="hebergement">\r\n				<div class="column">\r\n					<i class="fas fa-users"></i>\r\n					<h3>Serveur Mutualisé</h3>\r\n					<h4>19€/ mois</h4>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas voluptatum adipisci illum voluptatem voluptate, perferendis saepe tempora, quam nisi dolores sequi molestiae distinctio. Quos hic atque nesciunt dolor, ut, fugiat.</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-user"></i>\r\n					<h3>Serveur Dédié</h3>\r\n					<h4>39€/ mois</h4>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas voluptatum adipisci illum voluptatem voluptate, perferendis saepe tempora, quam nisi dolores sequi molestiae distinctio. Quos hic atque nesciunt dolor, ut, fugiat.</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-cloud"></i>\r\n					<h3>Service Cloud</h3>\r\n					<h4>49€/ mois</h4>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas voluptatum adipisci illum voluptatem voluptate, perferendis saepe tempora, quam nisi dolores sequi molestiae distinctio. Quos hic atque nesciunt dolor, ut, fugiat.</p>\r\n				</div>\r\n			</section>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-30 16:42:16', '2018-05-30 14:42:16', '', 2, 'http://localhost/Integration/wordpress/2018/05/30/2-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-05-30 16:43:39', '2018-05-30 14:43:39', '<main class="dedie container">\r\n		<h2>Le serveur dedié</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n		<section class="flex">\r\n            <article>\r\n                <h3 class="option">Serveur dédié GAME</h3>\r\n                <ul>\r\n                    <li>Intel  E5-1650v2</li>\r\n                    <li>E5-1650v2 - 6c/12t</li>\r\n                    <li>3,5 / 3,9 GHz - 128 Go RAM</li>\r\n                    <li>DDR3 ECC 1600 MHz</li>\r\n                    <li>2x480Go SSD RAID SOFT</li>\r\n                </ul>\r\n                <h3>159,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Serveur dédié STOCKAGE</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>E5-2620v3 - 6c/12t</li>\r\n                    <li>2,4 / 3,2 GHz - 64 Go RAM</li>\r\n                    <li>DDR4 ECC 1866 MHz</li>\r\n                    <li>12x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbps</li>\r\n\r\n                </ul>\r\n                <h3>319,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Serveur dédié HAUT DE GAMME</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>2x E5-2690v3 - 24c/48t</li>\r\n                    <li>2,6 / 3,4 GHz - 128 Go RAM</li>\r\n                    <li>DDR4 ECC 2133 MHz</li>\r\n                    <li>2x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbp</li>\r\n                </ul>\r\n                <h3>559,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n		</section>\r\n	</main>', 'Serveur dédié', '', 'publish', 'closed', 'closed', '', 'serveur-dedie', '', '', '2018-05-30 16:54:48', '2018-05-30 14:54:48', '', 0, 'http://localhost/Integration/wordpress/?page_id=32', 0, 'page', '', 0),
(34, 1, '2018-05-30 16:43:39', '2018-05-30 14:43:39', '<h2>Le serveur dedié</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<section class="flex">\r\n    <article>\r\n        <h3 class="option">Serveur dédié GAME</h3>\r\n        <ul>\r\n            <li>Intel  E5-1650v2</li>\r\n            <li>E5-1650v2 - 6c/12t</li>\r\n            <li>3,5 / 3,9 GHz - 128 Go RAM</li>\r\n            <li>DDR3 ECC 1600 MHz</li>\r\n            <li>2x480Go SSD RAID SOFT</li>\r\n        </ul>\r\n        <h3>159,99€ HT / Mois</h3>\r\n        <a href="#">Commander</a>\r\n    </article>\r\n    <article>\r\n        <h3 class="option">Serveur dédié STOCKAGE</h3>\r\n        <ul>\r\n            <li>Intel  Xeon E5</li>\r\n            <li>E5-2620v3 - 6c/12t</li>\r\n            <li>2,4 / 3,2 GHz - 64 Go RAM</li>\r\n            <li>DDR4 ECC 1866 MHz</li>\r\n            <li>12x4To SAS RAID SOFT</li>\r\n            <li>vRack 10 Gbps</li>\r\n\r\n        </ul>\r\n        <h3>319,99€ HT / Mois</h3>\r\n        <a href="#">Commander</a>\r\n    </article>\r\n    <article>\r\n        <h3 class="option">Serveur dédié HAUT DE GAMME</h3>\r\n        <ul>\r\n            <li>Intel  Xeon E5</li>\r\n            <li>2x E5-2690v3 - 24c/48t</li>\r\n            <li>2,6 / 3,4 GHz - 128 Go RAM</li>\r\n            <li>DDR4 ECC 2133 MHz</li>\r\n            <li>2x4To SAS RAID SOFT</li>\r\n            <li>vRack 10 Gbp</li>\r\n        </ul>\r\n        <h3>559,99€ HT / Mois</h3>\r\n        <a href="#">Commander</a>\r\n    </article>\r\n</section>\r\n', 'Serveur dédié', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-05-30 16:43:39', '2018-05-30 14:43:39', '', 32, 'http://localhost/Integration/wordpress/2018/05/30/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-05-30 16:44:44', '2018-05-30 14:44:44', '<main class="mutualise container">\r\n		<h2>Le serveur mutualisé</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n		<section class="flex">\r\n            <article>\r\n                <h3 class="option">Perso - 100 Go</h3>\r\n                <p>Un nom de domaine offert, idéal pour votre site perso.</p>\r\n                <ul>\r\n                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n                    <li>Aliquam tincidunt mauris eu risus.</li>\r\n                    <li>Vestibulum auctor dapibus neque.</li>\r\n                </ul>\r\n                <h3>2,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Pro - 250 Go</h3>\r\n                <p>Un nom de domaine offert, la solution professionnelle.</p>\r\n                <ul>\r\n                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n                    <li>Aliquam tincidunt mauris eu risus.</li>\r\n                    <li>Vestibulum auctor dapibus neque.</li>\r\n                </ul>\r\n                <h3>5,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Performance - 500 Go</h3>\r\n                <p>Un nom de domaine offert, pensé pour les sites techniques.</p>\r\n                <ul>\r\n                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n                    <li>Aliquam tincidunt mauris eu risus.</li>\r\n                    <li>Vestibulum auctor dapibus neque.</li>\r\n                </ul>\r\n                <h3>9,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n		</section>\r\n	</main>', 'Serveur mutualisé', '', 'publish', 'closed', 'closed', '', 'serveur-mutualise', '', '', '2018-05-30 16:55:47', '2018-05-30 14:55:47', '', 0, 'http://localhost/Integration/wordpress/?page_id=35', 0, 'page', '', 0),
(37, 1, '2018-05-30 16:44:44', '2018-05-30 14:44:44', '		<h2>Le serveur mutualisé</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n		<section class="flex">\r\n            <article>\r\n                <h3 class="option">Perso - 100 Go</h3>\r\n                <p>Un nom de domaine offert, idéal pour votre site perso.</p>\r\n                <ul>\r\n                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n                    <li>Aliquam tincidunt mauris eu risus.</li>\r\n                    <li>Vestibulum auctor dapibus neque.</li>\r\n                </ul>\r\n                <h3>2,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Pro - 250 Go</h3>\r\n                <p>Un nom de domaine offert, la solution professionnelle.</p>\r\n                <ul>\r\n                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n                    <li>Aliquam tincidunt mauris eu risus.</li>\r\n                    <li>Vestibulum auctor dapibus neque.</li>\r\n                </ul>\r\n                <h3>5,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Performance - 500 Go</h3>\r\n                <p>Un nom de domaine offert, pensé pour les sites techniques.</p>\r\n                <ul>\r\n                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n                    <li>Aliquam tincidunt mauris eu risus.</li>\r\n                    <li>Vestibulum auctor dapibus neque.</li>\r\n                </ul>\r\n                <h3>9,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n		</section>', 'Serveur mutualisé', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-05-30 16:44:44', '2018-05-30 14:44:44', '', 35, 'http://localhost/Integration/wordpress/2018/05/30/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-05-30 16:45:57', '2018-05-30 14:45:57', '<main class="cloud container">\r\n		<h2>Le cloud</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n		<section class="flex">\r\n            <article>\r\n                <h3 class="option">Cloud STARTER</h3>\r\n                <ul>\r\n                    <li>Intel  E5-1650v2</li>\r\n                    <li>E5-1650v2 - 6c/12t</li>\r\n                    <li>3,5 / 3,9 GHz - 128 Go RAM</li>\r\n                    <li>DDR3 ECC 1600 MHz</li>\r\n                    <li>2x480Go SSD RAID SOFT</li>\r\n                </ul>\r\n                <h3>299,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Cloud EVASION</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>E5-2620v3 - 6c/12t</li>\r\n                    <li>2,4 / 3,2 GHz - 64 Go RAM</li>\r\n                    <li>DDR4 ECC 1866 MHz</li>\r\n                    <li>12x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbps</li>\r\n\r\n                </ul>\r\n                <h3>489,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Cloud LIBERTY</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>2x E5-2690v3 - 24c/48t</li>\r\n                    <li>2,6 / 3,4 GHz - 128 Go RAM</li>\r\n                    <li>DDR4 ECC 2133 MHz</li>\r\n                    <li>2x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbp</li>\r\n                </ul>\r\n                <h3>581,99€ HT / Mois</h3>\r\n                <a href="http://localhost/Integration/wordpress/server/cloud-liberty/">Commander</a>\r\n            </article>\r\n		</section>\r\n	</main>', 'cloud', '', 'publish', 'closed', 'closed', '', 'cloud', '', '', '2018-05-31 15:03:39', '2018-05-31 13:03:39', '', 0, 'http://localhost/Integration/wordpress/?page_id=38', 0, 'page', '', 0),
(40, 1, '2018-05-30 16:45:57', '2018-05-30 14:45:57', '		<h2>Le cloud</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n		<section class="flex">\r\n            <article>\r\n                <h3 class="option">Cloud STARTER</h3>\r\n                <ul>\r\n                    <li>Intel  E5-1650v2</li>\r\n                    <li>E5-1650v2 - 6c/12t</li>\r\n                    <li>3,5 / 3,9 GHz - 128 Go RAM</li>\r\n                    <li>DDR3 ECC 1600 MHz</li>\r\n                    <li>2x480Go SSD RAID SOFT</li>\r\n                </ul>\r\n                <h3>299,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Cloud EVASION</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>E5-2620v3 - 6c/12t</li>\r\n                    <li>2,4 / 3,2 GHz - 64 Go RAM</li>\r\n                    <li>DDR4 ECC 1866 MHz</li>\r\n                    <li>12x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbps</li>\r\n\r\n                </ul>\r\n                <h3>489,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Cloud LIBERTY</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>2x E5-2690v3 - 24c/48t</li>\r\n                    <li>2,6 / 3,4 GHz - 128 Go RAM</li>\r\n                    <li>DDR4 ECC 2133 MHz</li>\r\n                    <li>2x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbp</li>\r\n                </ul>\r\n                <h3>581,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n		</section>', 'cloud', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-05-30 16:45:57', '2018-05-30 14:45:57', '', 38, 'http://localhost/Integration/wordpress/2018/05/30/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-05-30 16:48:01', '2018-05-30 14:48:01', '<main class="container>\r\n<h2>Notre solution en 3 points</h2>\r\n			<section class="solution">\r\n				<div class="column">\r\n					<i class="fas fa-cogs"></i>\r\n					<h3>Configuration</h3>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, consectetur adipisicing elit</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-chart-area"></i>\r\n					<h3>Monitoring</h3>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, consectetur adipisicing elit</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-database"></i>\r\n					<h3>Sauvegarde</h3>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, consectetur adipisicing elit</p>\r\n				</div>\r\n			</section>\r\n			<h2>Choisissez votre style d\'hébergement</h2>\r\n			<section class="hebergement">\r\n				<div class="column">\r\n					<i class="fas fa-users"></i>\r\n					<h3>Serveur Mutualisé</h3>\r\n					<h4>19€/ mois</h4>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas voluptatum adipisci illum voluptatem voluptate, perferendis saepe tempora, quam nisi dolores sequi molestiae distinctio. Quos hic atque nesciunt dolor, ut, fugiat.</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-user"></i>\r\n					<h3>Serveur Dédié</h3>\r\n					<h4>39€/ mois</h4>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas voluptatum adipisci illum voluptatem voluptate, perferendis saepe tempora, quam nisi dolores sequi molestiae distinctio. Quos hic atque nesciunt dolor, ut, fugiat.</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-cloud"></i>\r\n					<h3>Service Cloud</h3>\r\n					<h4>49€/ mois</h4>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas voluptatum adipisci illum voluptatem voluptate, perferendis saepe tempora, quam nisi dolores sequi molestiae distinctio. Quos hic atque nesciunt dolor, ut, fugiat.</p>\r\n				</div>\r\n			</section>\r\n</main>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-30 16:48:01', '2018-05-30 14:48:01', '', 2, 'http://localhost/Integration/wordpress/2018/05/30/2-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-05-30 16:48:51', '2018-05-30 14:48:51', '<h2>Notre solution en 3 points</h2>\r\n			<section class="solution">\r\n				<div class="column">\r\n					<i class="fas fa-cogs"></i>\r\n					<h3>Configuration</h3>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, consectetur adipisicing elit</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-chart-area"></i>\r\n					<h3>Monitoring</h3>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, consectetur adipisicing elit</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-database"></i>\r\n					<h3>Sauvegarde</h3>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, consectetur adipisicing elit</p>\r\n				</div>\r\n			</section>\r\n			<h2>Choisissez votre style d\'hébergement</h2>\r\n			<section class="hebergement">\r\n				<div class="column">\r\n					<i class="fas fa-users"></i>\r\n					<h3>Serveur Mutualisé</h3>\r\n					<h4>19€/ mois</h4>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas voluptatum adipisci illum voluptatem voluptate, perferendis saepe tempora, quam nisi dolores sequi molestiae distinctio. Quos hic atque nesciunt dolor, ut, fugiat.</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-user"></i>\r\n					<h3>Serveur Dédié</h3>\r\n					<h4>39€/ mois</h4>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas voluptatum adipisci illum voluptatem voluptate, perferendis saepe tempora, quam nisi dolores sequi molestiae distinctio. Quos hic atque nesciunt dolor, ut, fugiat.</p>\r\n				</div>\r\n				<div class="column">\r\n					<i class="fas fa-cloud"></i>\r\n					<h3>Service Cloud</h3>\r\n					<h4>49€/ mois</h4>\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas voluptatum adipisci illum voluptatem voluptate, perferendis saepe tempora, quam nisi dolores sequi molestiae distinctio. Quos hic atque nesciunt dolor, ut, fugiat.</p>\r\n				</div>\r\n			</section>\r\n', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-30 16:48:51', '2018-05-30 14:48:51', '', 2, 'http://localhost/Integration/wordpress/2018/05/30/2-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-05-30 16:52:44', '2018-05-30 14:52:44', '<section id="solution" class="flex">\r\n			<h2>Notre solution en 3 points</h2>\r\n			<article class="host">\r\n				<i class="fa fa-cogs" aria-hidden="true"></i>\r\n				<h3>Configuration</h3>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-area-chart" aria-hidden="true"></i>\r\n				<h3>Monitoring</h3>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-database" aria-hidden="true"></i>\r\n				<h3>Sauvegarde</h3>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n		</section>\r\n\r\n		<section id="hosting" class="flex">\r\n			<h2>Choisissez votre style d\'hébergement</h2>\r\n			<article class="host">\r\n				<i class="fa fa-users" aria-hidden="true"></i>\r\n				<h3>Serveur Mutualisé</h3>\r\n				<p class="prix">19€ / mois</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-user" aria-hidden="true"></i>\r\n				<h3>Serveur Dédié</h3>\r\n				<p class="prix">39€ / mois</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-cloud" aria-hidden="true"></i>\r\n				<h3>Service Cloud</h3>\r\n				<p class="prix">49€ / mois</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n		</section>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-30 16:52:44', '2018-05-30 14:52:44', '', 2, 'http://localhost/Integration/wordpress/2018/05/30/2-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-05-30 16:54:10', '2018-05-30 14:54:10', '<main class="container">\r\n<section id="solution" class="flex">\r\n			<h2>Notre solution en 3 points</h2>\r\n			<article class="host">\r\n				<i class="fa fa-cogs" aria-hidden="true"></i>\r\n				<h3>Configuration</h3>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-area-chart" aria-hidden="true"></i>\r\n				<h3>Monitoring</h3>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-database" aria-hidden="true"></i>\r\n				<h3>Sauvegarde</h3>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n		</section>\r\n\r\n		<section id="hosting" class="flex">\r\n			<h2>Choisissez votre style d\'hébergement</h2>\r\n			<article class="host">\r\n				<i class="fa fa-users" aria-hidden="true"></i>\r\n				<h3>Serveur Mutualisé</h3>\r\n				<p class="prix">19€ / mois</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-user" aria-hidden="true"></i>\r\n				<h3>Serveur Dédié</h3>\r\n				<p class="prix">39€ / mois</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n			<article class="host">\r\n				<i class="fa fa-cloud" aria-hidden="true"></i>\r\n				<h3>Service Cloud</h3>\r\n				<p class="prix">49€ / mois</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n			</article>\r\n		</section>\r\n</main>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-30 16:54:10', '2018-05-30 14:54:10', '', 2, 'http://localhost/Integration/wordpress/2018/05/30/2-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-05-30 16:54:48', '2018-05-30 14:54:48', '<main class="dedie container">\r\n		<h2>Le serveur dedié</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n		<section class="flex">\r\n            <article>\r\n                <h3 class="option">Serveur dédié GAME</h3>\r\n                <ul>\r\n                    <li>Intel  E5-1650v2</li>\r\n                    <li>E5-1650v2 - 6c/12t</li>\r\n                    <li>3,5 / 3,9 GHz - 128 Go RAM</li>\r\n                    <li>DDR3 ECC 1600 MHz</li>\r\n                    <li>2x480Go SSD RAID SOFT</li>\r\n                </ul>\r\n                <h3>159,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Serveur dédié STOCKAGE</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>E5-2620v3 - 6c/12t</li>\r\n                    <li>2,4 / 3,2 GHz - 64 Go RAM</li>\r\n                    <li>DDR4 ECC 1866 MHz</li>\r\n                    <li>12x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbps</li>\r\n\r\n                </ul>\r\n                <h3>319,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Serveur dédié HAUT DE GAMME</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>2x E5-2690v3 - 24c/48t</li>\r\n                    <li>2,6 / 3,4 GHz - 128 Go RAM</li>\r\n                    <li>DDR4 ECC 2133 MHz</li>\r\n                    <li>2x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbp</li>\r\n                </ul>\r\n                <h3>559,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n		</section>\r\n	</main>', 'Serveur dédié', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-05-30 16:54:48', '2018-05-30 14:54:48', '', 32, 'http://localhost/Integration/wordpress/2018/05/30/32-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-05-30 16:55:47', '2018-05-30 14:55:47', '<main class="mutualise container">\r\n		<h2>Le serveur mutualisé</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n		<section class="flex">\r\n            <article>\r\n                <h3 class="option">Perso - 100 Go</h3>\r\n                <p>Un nom de domaine offert, idéal pour votre site perso.</p>\r\n                <ul>\r\n                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n                    <li>Aliquam tincidunt mauris eu risus.</li>\r\n                    <li>Vestibulum auctor dapibus neque.</li>\r\n                </ul>\r\n                <h3>2,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Pro - 250 Go</h3>\r\n                <p>Un nom de domaine offert, la solution professionnelle.</p>\r\n                <ul>\r\n                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n                    <li>Aliquam tincidunt mauris eu risus.</li>\r\n                    <li>Vestibulum auctor dapibus neque.</li>\r\n                </ul>\r\n                <h3>5,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Performance - 500 Go</h3>\r\n                <p>Un nom de domaine offert, pensé pour les sites techniques.</p>\r\n                <ul>\r\n                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n                    <li>Aliquam tincidunt mauris eu risus.</li>\r\n                    <li>Vestibulum auctor dapibus neque.</li>\r\n                </ul>\r\n                <h3>9,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n		</section>\r\n	</main>', 'Serveur mutualisé', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-05-30 16:55:47', '2018-05-30 14:55:47', '', 35, 'http://localhost/Integration/wordpress/2018/05/30/35-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(47, 1, '2018-05-30 16:56:25', '2018-05-30 14:56:25', '<main class="cloud container">\r\n		<h2>Le cloud</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n		<section class="flex">\r\n            <article>\r\n                <h3 class="option">Cloud STARTER</h3>\r\n                <ul>\r\n                    <li>Intel  E5-1650v2</li>\r\n                    <li>E5-1650v2 - 6c/12t</li>\r\n                    <li>3,5 / 3,9 GHz - 128 Go RAM</li>\r\n                    <li>DDR3 ECC 1600 MHz</li>\r\n                    <li>2x480Go SSD RAID SOFT</li>\r\n                </ul>\r\n                <h3>299,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Cloud EVASION</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>E5-2620v3 - 6c/12t</li>\r\n                    <li>2,4 / 3,2 GHz - 64 Go RAM</li>\r\n                    <li>DDR4 ECC 1866 MHz</li>\r\n                    <li>12x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbps</li>\r\n\r\n                </ul>\r\n                <h3>489,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Cloud LIBERTY</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>2x E5-2690v3 - 24c/48t</li>\r\n                    <li>2,6 / 3,4 GHz - 128 Go RAM</li>\r\n                    <li>DDR4 ECC 2133 MHz</li>\r\n                    <li>2x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbp</li>\r\n                </ul>\r\n                <h3>581,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n		</section>\r\n	</main>', 'cloud', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-05-30 16:56:25', '2018-05-30 14:56:25', '', 38, 'http://localhost/Integration/wordpress/2018/05/30/38-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-05-30 17:18:48', '2018-05-30 15:18:48', '<main class="container contact">\r\n		<h2>Contactez-nous </h2>\r\n		<div class="flex">\r\n            <article>\r\n                <h3><i class="fa fa-send" aria-hidden="true"></i></h3>\r\n				<abbr title="e-mail">Mail :</abbr><a href="mailto:contact@3wa.fr"> contact@3wa.fr</a>\r\n            </article>\r\n            <article>\r\n            	<h3><i class="fa fa-phone" aria-hidden="true"></i></h3>\r\n				<abbr title="Téléphone">Tel :</abbr><a href="tel:+33140581972"> +33 1 40 58 19 72</a>\r\n            </article>\r\n			<article>\r\n				<h3><i class="fa fa-envelope" aria-hidden="true"></i></h3>\r\n				<address>\r\n					<strong>MindGeek</strong><br>\r\n					46, rue René Clair<br>\r\n					75018 Paris<br>\r\n				</address>\r\n			</article>\r\n		</div>\r\n	</main>\r\n	<aside>\r\n		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6242.233572575128!2d2.31612129916174!3d48.86705935484506!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66fc50dc75ccf%3A0x42f0f4fa01438416!2sFranklin+D.+Roosevelt!5e0!3m2!1sfr!2sfr!4v1451318946422"></iframe>\r\n	</aside>', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-05-30 17:18:48', '2018-05-30 15:18:48', '', 0, 'http://localhost/Integration/wordpress/?page_id=48', 0, 'page', '', 0),
(50, 1, '2018-05-30 17:18:48', '2018-05-30 15:18:48', '<main class="container contact">\r\n		<h2>Contactez-nous </h2>\r\n		<div class="flex">\r\n            <article>\r\n                <h3><i class="fa fa-send" aria-hidden="true"></i></h3>\r\n				<abbr title="e-mail">Mail :</abbr><a href="mailto:contact@3wa.fr"> contact@3wa.fr</a>\r\n            </article>\r\n            <article>\r\n            	<h3><i class="fa fa-phone" aria-hidden="true"></i></h3>\r\n				<abbr title="Téléphone">Tel :</abbr><a href="tel:+33140581972"> +33 1 40 58 19 72</a>\r\n            </article>\r\n			<article>\r\n				<h3><i class="fa fa-envelope" aria-hidden="true"></i></h3>\r\n				<address>\r\n					<strong>MindGeek</strong><br>\r\n					46, rue René Clair<br>\r\n					75018 Paris<br>\r\n				</address>\r\n			</article>\r\n		</div>\r\n	</main>\r\n	<aside>\r\n		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6242.233572575128!2d2.31612129916174!3d48.86705935484506!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66fc50dc75ccf%3A0x42f0f4fa01438416!2sFranklin+D.+Roosevelt!5e0!3m2!1sfr!2sfr!4v1451318946422"></iframe>\r\n	</aside>', 'contact', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-05-30 17:18:48', '2018-05-30 15:18:48', '', 48, 'http://localhost/Integration/wordpress/2018/05/30/48-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-05-31 09:59:58', '2018-05-31 07:59:58', '', '<i class="fa fa-envelope" aria-hidden="true"></i> contact', '', 'publish', 'closed', 'closed', '', '51', '', '', '2018-05-31 15:41:26', '2018-05-31 13:41:26', '', 0, 'http://localhost/Integration/wordpress/?p=51', 4, 'nav_menu_item', '', 0),
(56, 1, '2018-05-31 10:04:49', '2018-05-31 08:04:49', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-05-31 15:45:50', '2018-05-31 13:45:50', '', 0, 'http://localhost/Integration/wordpress/?p=56', 5, 'nav_menu_item', '', 0),
(60, 1, '2018-05-31 10:04:49', '2018-05-31 08:04:49', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-05-31 15:45:49', '2018-05-31 13:45:49', '', 0, 'http://localhost/Integration/wordpress/?p=60', 1, 'nav_menu_item', '', 0),
(63, 1, '2018-05-31 10:19:02', '2018-05-31 08:19:02', '<main class="dedie container">\n		<h2>Le serveur dedié</h2>\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n		<section class="flex">\n            <article>\n                <h3 class="option">Serveur dédié GAME</h3>\n                <ul>\n                    <li>Intel  E5-1650v2</li>\n                    <li>E5-1650v2 - 6c/12t</li>\n                    <li>3,5 / 3,9 GHz - 128 Go RAM</li>\n                    <li>DDR3 ECC 1600 MHz</li>\n                    <li>2x480Go SSD RAID SOFT</li>\n                </ul>\n                <h3>159,99€ HT / Mois</h3>\n                <a href="#">Commander</a>\n            </article>\n            <article>\n                <h3 class="option">Serveur dédié STOCKAGE</h3>\n                <ul>\n                    <li>Intel  Xeon E5</li>\n                    <li>E5-2620v3 - 6c/12t</li>\n                    <li>2,4 / 3,2 GHz - 64 Go RAM</li>\n                    <li>DDR4 ECC 1866 MHz</li>\n                    <li>12x4To SAS RAID SOFT</li>\n                    <li>vRack 10 Gbps</li>\n\n                </ul>\n                <h3>319,99€ HT / Mois</h3>\n                <a href="#">Commander</a>\n            </article>\n            <article>\n                <h3 class="option">Serveur dédié HAUT DE GAMME</h3>\n                <ul>\n                    <li>Intel  Xeon E5</li>\n                    <li>2x E5-2690v3 - 24c/48t</li>\n                    <li>2,6 / 3,4 GHz - 128 Go RAM</li>\n                    <li>DDR4 ECC 2133 MHz</li>\n                    <li>2x4To SAS RAID SOFT</li>\n                    <li>vRack 10 Gbp</li>\n                </ul>\n                <h3>559,99€ HT / Mois</h3>\n                <a href="#">Commander</a>\n            </article>\n		</section>\n	</main>', 'Serveur dédié', '', 'inherit', 'closed', 'closed', '', '32-autosave-v1', '', '', '2018-05-31 10:19:02', '2018-05-31 08:19:02', '', 32, 'http://localhost/Integration/wordpress/2018/05/31/32-autosave-v1/', 0, 'revision', '', 0),
(64, 1, '2018-05-31 10:21:35', '2018-05-31 08:21:35', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login-3', '', '', '2018-05-31 15:45:50', '2018-05-31 13:45:50', '', 0, 'http://localhost/Integration/wordpress/?p=64', 6, 'nav_menu_item', '', 0),
(65, 1, '2018-05-31 14:08:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-31 14:08:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&p=65', 0, 'server', '', 0),
(66, 1, '2018-05-31 14:08:34', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-31 14:08:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&p=66', 0, 'server', '', 0),
(67, 1, '2018-05-31 14:17:15', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-31 14:17:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&p=67', 0, 'server', '', 0),
(68, 1, '2018-05-31 14:26:56', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-31 14:26:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&p=68', 0, 'server', '', 0),
(69, 1, '2018-05-31 14:46:40', '2018-05-31 12:46:40', 'Un nom de domaine offert, idéal pour votre site perso.\r\n<ul>\r\n 	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n 	<li>Aliquam tincidunt mauris eu risus.</li>\r\n 	<li>Vestibulum auctor dapibus neque.</li>\r\n</ul>\r\n&nbsp;', 'Perso – 100 Go', '', 'publish', 'closed', 'closed', '', 'perso-100-go', '', '', '2018-05-31 14:56:37', '2018-05-31 12:56:37', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&#038;p=69', 0, 'server', '', 0),
(70, 1, '2018-05-31 14:53:32', '2018-05-31 12:53:32', '', 'champs pour serveur', '', 'publish', 'closed', 'closed', '', 'acf_champs-pour-serveur', '', '', '2018-05-31 14:53:32', '2018-05-31 12:53:32', '', 0, 'http://localhost/Integration/wordpress/?post_type=acf&#038;p=70', 0, 'acf', '', 0),
(71, 1, '2018-05-31 14:55:17', '2018-05-31 12:55:17', 'Un nom de domaine offert, la solution professionnelle.\r\n<ul>\r\n 	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n 	<li>Aliquam tincidunt mauris eu risus.</li>\r\n 	<li>Vestibulum auctor dapibus neque.</li>\r\n</ul>', 'Pro – 250 Go', '', 'publish', 'closed', 'closed', '', 'pro-250-go', '', '', '2018-05-31 14:56:24', '2018-05-31 12:56:24', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&#038;p=71', 0, 'server', '', 0),
(72, 1, '2018-05-31 14:55:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-31 14:55:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&p=72', 0, 'server', '', 0),
(73, 1, '2018-05-31 14:55:58', '2018-05-31 12:55:58', 'Un nom de domaine offert, pensé pour les sites techniques.\r\n<ul>\r\n 	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n 	<li>Aliquam tincidunt mauris eu risus.</li>\r\n 	<li>Vestibulum auctor dapibus neque.</li>\r\n</ul>\r\n<h3></h3>', 'Performance – 500 Go', '', 'publish', 'closed', 'closed', '', 'performance-500-go', '', '', '2018-05-31 14:56:14', '2018-05-31 12:56:14', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&#038;p=73', 0, 'server', '', 0),
(74, 1, '2018-05-31 14:57:12', '2018-05-31 12:57:12', '<ul>\r\n 	<li>Intel E5-1650v2</li>\r\n 	<li>E5-1650v2 – 6c/12t</li>\r\n 	<li>3,5 / 3,9 GHz – 128 Go RAM</li>\r\n 	<li>DDR3 ECC 1600 MHz</li>\r\n 	<li>2x480Go SSD RAID SOFT</li>\r\n</ul>', 'Serveur dédié GAME', '', 'publish', 'closed', 'closed', '', 'serveur-dedie-game', '', '', '2018-05-31 14:57:12', '2018-05-31 12:57:12', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&#038;p=74', 0, 'server', '', 0),
(75, 1, '2018-05-31 14:57:17', '2018-05-31 12:57:17', '<ul>\n 	<li>Intel E5-1650v2</li>\n 	<li>E5-1650v2 – 6c/12t</li>\n 	<li>3,5 / 3,9 GHz – 128 Go RAM</li>\n 	<li>DDR3 ECC 1600 MHz</li>\n 	<li>2x480Go SSD RAID SOFT</li>\n</ul>', 'Serveur dédié GAME', '', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2018-05-31 14:57:17', '2018-05-31 12:57:17', '', 74, 'http://localhost/Integration/wordpress/2018/05/31/74-autosave-v1/', 0, 'revision', '', 0),
(76, 1, '2018-05-31 14:57:41', '2018-05-31 12:57:41', '<ul>\r\n 	<li>Intel Xeon E5</li>\r\n 	<li>E5-2620v3 – 6c/12t</li>\r\n 	<li>2,4 / 3,2 GHz – 64 Go RAM</li>\r\n 	<li>DDR4 ECC 1866 MHz</li>\r\n 	<li>12x4To SAS RAID SOFT</li>\r\n 	<li>vRack 10 Gbps</li>\r\n</ul>', 'Serveur dédié STOCKAGE', '', 'publish', 'closed', 'closed', '', 'serveur-dedie-stockage', '', '', '2018-05-31 14:59:53', '2018-05-31 12:59:53', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&#038;p=76', 0, 'server', '', 0),
(77, 1, '2018-05-31 14:58:12', '2018-05-31 12:58:12', '<ul>\r\n 	<li>Intel Xeon E5</li>\r\n 	<li>2x E5-2690v3 – 24c/48t</li>\r\n 	<li>2,6 / 3,4 GHz – 128 Go RAM</li>\r\n 	<li>DDR4 ECC 2133 MHz</li>\r\n 	<li>2x4To SAS RAID SOFT</li>\r\n 	<li>vRack 10 Gbp</li>\r\n</ul>\r\n<h3></h3>', 'Serveur dédié HAUT DE GAMME', '', 'publish', 'closed', 'closed', '', 'serveur-dedie-haut-de-gamme', '', '', '2018-05-31 14:58:12', '2018-05-31 12:58:12', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&#038;p=77', 0, 'server', '', 0),
(78, 1, '2018-05-31 14:58:17', '2018-05-31 12:58:17', '<ul>\n 	<li>Intel Xeon E5</li>\n 	<li>2x E5-2690v3 – 24c/48t</li>\n 	<li>2,6 / 3,4 GHz – 128 Go RAM</li>\n 	<li>DDR4 ECC 2133 MHz</li>\n 	<li>2x4To SAS RAID SOFT</li>\n 	<li>vRack 10 Gbp</li>\n</ul>\n<h3></h3>', 'Serveur dédié HAUT DE GAMME', '', 'inherit', 'closed', 'closed', '', '77-autosave-v1', '', '', '2018-05-31 14:58:17', '2018-05-31 12:58:17', '', 77, 'http://localhost/Integration/wordpress/2018/05/31/77-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2018-05-31 14:58:40', '2018-05-31 12:58:40', '<ul>\r\n 	<li>Intel E5-1650v2</li>\r\n 	<li>E5-1650v2 – 6c/12t</li>\r\n 	<li>3,5 / 3,9 GHz – 128 Go RAM</li>\r\n 	<li>DDR3 ECC 1600 MHz</li>\r\n 	<li>2x480Go SSD RAID SOFT</li>\r\n</ul>\r\n<h3></h3>', 'Cloud STARTER', '', 'publish', 'closed', 'closed', '', 'cloud-starter', '', '', '2018-05-31 15:00:00', '2018-05-31 13:00:00', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&#038;p=79', 0, 'server', '', 0),
(80, 1, '2018-05-31 14:59:08', '2018-05-31 12:59:08', '<ul>\r\n 	<li>Intel Xeon E5</li>\r\n 	<li>E5-2620v3 – 6c/12t</li>\r\n 	<li>2,4 / 3,2 GHz – 64 Go RAM</li>\r\n 	<li>DDR4 ECC 1866 MHz</li>\r\n 	<li>12x4To SAS RAID SOFT</li>\r\n 	<li>vRack 10 Gbps</li>\r\n</ul>\r\n<h3></h3>', 'Cloud EVASION', '', 'publish', 'closed', 'closed', '', 'cloud-evasion', '', '', '2018-05-31 14:59:08', '2018-05-31 12:59:08', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&#038;p=80', 0, 'server', '', 0),
(81, 1, '2018-05-31 14:59:37', '2018-05-31 12:59:37', '<ul>\r\n 	<li>Intel Xeon E5</li>\r\n 	<li>2x E5-2690v3 – 24c/48t</li>\r\n 	<li>2,6 / 3,4 GHz – 128 Go RAM</li>\r\n 	<li>DDR4 ECC 2133 MHz</li>\r\n 	<li>2x4To SAS RAID SOFT</li>\r\n 	<li>vRack 10 Gbp</li>\r\n</ul>\r\n<h3></h3>', 'Cloud LIBERTY', '', 'publish', 'closed', 'closed', '', 'cloud-liberty', '', '', '2018-05-31 14:59:37', '2018-05-31 12:59:37', '', 0, 'http://localhost/Integration/wordpress/?post_type=server&#038;p=81', 0, 'server', '', 0),
(82, 1, '2018-05-31 15:01:48', '2018-05-31 13:01:48', '&nbsp;\r\n<h2>Le cloud</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n<section class="flex"><article>\r\n<h3 class="option">Cloud STARTER</h3>\r\n<ul>\r\n 	<li>Intel E5-1650v2</li>\r\n 	<li>E5-1650v2 - 6c/12t</li>\r\n 	<li>3,5 / 3,9 GHz - 128 Go RAM</li>\r\n 	<li>DDR3 ECC 1600 MHz</li>\r\n 	<li>2x480Go SSD RAID SOFT</li>\r\n</ul>\r\n<h3>299,99€ HT / Mois</h3>\r\n<a href="#">Commander</a>\r\n\r\n</article><article>\r\n<h3 class="option">Cloud EVASION</h3>\r\n<ul>\r\n 	<li>Intel Xeon E5</li>\r\n 	<li>E5-2620v3 - 6c/12t</li>\r\n 	<li>2,4 / 3,2 GHz - 64 Go RAM</li>\r\n 	<li>DDR4 ECC 1866 MHz</li>\r\n 	<li>12x4To SAS RAID SOFT</li>\r\n 	<li>vRack 10 Gbps</li>\r\n</ul>\r\n<h3>489,99€ HT / Mois</h3>\r\n<a href="#">Commander</a>\r\n\r\n</article><article>\r\n<h3 class="option">Cloud LIBERTY</h3>\r\n<ul>\r\n 	<li>Intel Xeon E5</li>\r\n 	<li>2x E5-2690v3 - 24c/48t</li>\r\n 	<li>2,6 / 3,4 GHz - 128 Go RAM</li>\r\n 	<li>DDR4 ECC 2133 MHz</li>\r\n 	<li>2x4To SAS RAID SOFT</li>\r\n 	<li>vRack 10 Gbp</li>\r\n</ul>\r\n<h3>581,99€ HT / Mois</h3>\r\n<a href="http://localhost/Integration/wordpress/server/cloud-liberty/">Commander</a>\r\n\r\n</article></section>&nbsp;', 'cloud', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-05-31 15:01:48', '2018-05-31 13:01:48', '', 38, 'http://localhost/Integration/wordpress/2018/05/31/38-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-05-31 15:03:39', '2018-05-31 13:03:39', '<main class="cloud container">\r\n		<h2>Le cloud</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n		<section class="flex">\r\n            <article>\r\n                <h3 class="option">Cloud STARTER</h3>\r\n                <ul>\r\n                    <li>Intel  E5-1650v2</li>\r\n                    <li>E5-1650v2 - 6c/12t</li>\r\n                    <li>3,5 / 3,9 GHz - 128 Go RAM</li>\r\n                    <li>DDR3 ECC 1600 MHz</li>\r\n                    <li>2x480Go SSD RAID SOFT</li>\r\n                </ul>\r\n                <h3>299,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Cloud EVASION</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>E5-2620v3 - 6c/12t</li>\r\n                    <li>2,4 / 3,2 GHz - 64 Go RAM</li>\r\n                    <li>DDR4 ECC 1866 MHz</li>\r\n                    <li>12x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbps</li>\r\n\r\n                </ul>\r\n                <h3>489,99€ HT / Mois</h3>\r\n                <a href="#">Commander</a>\r\n            </article>\r\n            <article>\r\n                <h3 class="option">Cloud LIBERTY</h3>\r\n                <ul>\r\n                    <li>Intel  Xeon E5</li>\r\n                    <li>2x E5-2690v3 - 24c/48t</li>\r\n                    <li>2,6 / 3,4 GHz - 128 Go RAM</li>\r\n                    <li>DDR4 ECC 2133 MHz</li>\r\n                    <li>2x4To SAS RAID SOFT</li>\r\n                    <li>vRack 10 Gbp</li>\r\n                </ul>\r\n                <h3>581,99€ HT / Mois</h3>\r\n                <a href="http://localhost/Integration/wordpress/server/cloud-liberty/">Commander</a>\r\n            </article>\r\n		</section>\r\n	</main>', 'cloud', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-05-31 15:03:39', '2018-05-31 13:03:39', '', 38, 'http://localhost/Integration/wordpress/2018/05/31/38-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-05-31 15:39:53', '2018-05-31 13:39:53', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<i class="fa fa-users" aria-hidden="true"></i>Serveurs Mutualisés', '', 'publish', 'closed', 'closed', '', 'serveurs-mutualises', '', '', '2018-05-31 15:41:26', '2018-05-31 13:41:26', '', 0, 'http://localhost/Integration/wordpress/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2018-05-31 15:39:53', '2018-05-31 13:39:53', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<i class="fa fa-user" aria-hidden="true"></i>Serveurs Dédiés', '', 'publish', 'closed', 'closed', '', 'serveurs-dedies', '', '', '2018-05-31 15:41:26', '2018-05-31 13:41:26', '', 0, 'http://localhost/Integration/wordpress/?p=85', 2, 'nav_menu_item', '', 0),
(86, 1, '2018-05-31 15:39:53', '2018-05-31 13:39:53', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<i class="fa fa-cloud" aria-hidden="true"></i>serveurs clouds', '', 'publish', 'closed', 'closed', '', 'serveurs-clouds', '', '', '2018-05-31 15:41:26', '2018-05-31 13:41:26', '', 0, 'http://localhost/Integration/wordpress/?p=86', 3, 'nav_menu_item', '', 0),
(87, 1, '2018-05-31 15:45:49', '2018-05-31 13:45:49', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2018-05-31 15:45:49', '2018-05-31 13:45:49', '', 0, 'http://localhost/Integration/wordpress/?p=87', 2, 'nav_menu_item', '', 0),
(88, 1, '2018-05-31 15:45:49', '2018-05-31 13:45:49', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2018-05-31 15:45:49', '2018-05-31 13:45:49', '', 0, 'http://localhost/Integration/wordpress/?p=88', 3, 'nav_menu_item', '', 0),
(89, 1, '2018-05-31 15:45:49', '2018-05-31 13:45:49', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2018-05-31 15:45:49', '2018-05-31 13:45:49', '', 0, 'http://localhost/Integration/wordpress/?p=89', 4, 'nav_menu_item', '', 0),
(90, 1, '2018-05-31 16:39:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-31 16:39:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/Integration/wordpress/?post_type=acf&p=90', 0, 'acf', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Non classé', 'non-classe', 0),
(17, 'Menu-header', 'menu-header', 0),
(18, 'Menu-footer', 'menu-footer', 0),
(19, 'serveurs mutualisés', 'mutualise', 0),
(20, 'serveurs dédiés', 'dedie', 0),
(21, 'serveurs clouds', 'cloud', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(22, 1, 0),
(29, 1, 0),
(51, 17, 0),
(56, 18, 0),
(60, 18, 0),
(64, 18, 0),
(69, 19, 0),
(71, 19, 0),
(73, 19, 0),
(74, 20, 0),
(76, 20, 0),
(77, 20, 0),
(79, 21, 0),
(80, 21, 0),
(81, 21, 0),
(84, 17, 0),
(85, 17, 0),
(86, 17, 0),
(87, 18, 0),
(88, 18, 0),
(89, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(17, 17, 'nav_menu', '', 0, 4),
(18, 18, 'nav_menu', '', 0, 6),
(19, 19, 'server_category', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 3),
(20, 20, 'server_category', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 3),
(21, 21, 'server_category', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:"3d5fed2ed123f5169f5339e3e38d06f91feeb18e0e5802d69fe6ab153540df60";a:4:{s:10:"expiration";i:1528877739;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0";s:5:"login";i:1527668139;}s:64:"5a8a563ffec1b56421bbe4ba365a3782234604c3d98d62229bea852b56241d36";a:4:{s:10:"expiration";i:1527844893;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0";s:5:"login";i:1527672093;}s:64:"387dc0f1163eab1d38b7f1a8292921c47003981c64dd43dfd8d896ec5d41d93f";a:4:{s:10:"expiration";i:1527923799;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0";s:5:"login";i:1527750999;}s:64:"8dd1259fee457490907a1ac51943a149335491fff80b44e307384f4fe4bec796";a:4:{s:10:"expiration";i:1528017126;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0";s:5:"login";i:1527844326;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&imgsize=full&editor=html&hidetb=0'),
(20, 1, 'wp_user-settings-time', '1527771703'),
(21, 1, 'wp_media_library_mode', 'list'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(26, 1, 'wp_yoast_notifications', 'a:4:{i:0;a:2:{s:7:"message";s:462:"Yoast SEO et WooCommerce peuvent encore mieux fonctionner ensemble en ajoutant une extension complémentaire. Veuillez installer Yoast WooCommerce SEO pour vous faciliter la vie. <a href="https://yoa.st/1o0?php_version=7.0.30&platform=wordpress&platform_version=4.9.6&software=free&software_version=7.5.3&role=administrator" aria-label="Plus d’informations au sujet de Yoast WooCommerce SEO" target="_blank" rel="noopener noreferrer">Plus d’informations</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:44:"wpseo-suggested-plugin-yoast-woocommerce-seo";s:5:"nonce";s:10:"d984cef846";s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";a:1:{i:0;s:15:"install_plugins";}s:16:"capability_check";s:3:"all";}}i:1;a:2:{s:7:"message";s:594:"Yoast SEO et Advanced Custom Fields peuvent encore mieux fonctionner ensemble en ajoutant une extension complémentaire. Veuillez installer <a href="http://localhost/Integration/wordpress/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=5bf9c87ade">ACF Content Analysis for Yoast SEO</a> pour vous faciliter la vie. <a href="https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/" aria-label="Plus d’informations au sujet de ACF Content Analysis for Yoast SEO" target="_blank" rel="noopener noreferrer">Plus d’informations</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:41:"wpseo-suggested-plugin-yoast-acf-analysis";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";a:1:{i:0;s:15:"install_plugins";}s:16:"capability_check";s:3:"all";}}i:2;a:2:{s:7:"message";s:207:"Ne ratez pas vos erreurs d’exploration : <a href="http://localhost/Integration/wordpress/wp-admin/admin.php?page=wpseo_search_console&tab=settings">connectez-vous avec votre Google Search Console ici</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";}}i:3;a:2:{s:7:"message";s:317:"Vous utilisez toujours le slogan par défaut de WordPress, un vide serait même plus efficace. <a href="http://localhost/Integration/wordpress/wp-admin/customize.php?url=http%3A%2F%2Flocalhost%2FIntegration%2Fwordpress%2Fwp-admin%2Fthemes.php%3Factivated%3Dtrue">Vous pouvez régler cela dans la personnalisation</a>.";s:7:"options";a:8:{s:4:"type";s:5:"error";s:2:"id";s:28:"wpseo-dismiss-tagline-notice";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";}}}'),
(27, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(28, 1, 'wc_last_active', '1527724800'),
(29, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(30, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:15:"add-product_cat";i:4;s:15:"add-product_tag";}'),
(31, 1, 'nav_menu_recently_edited', '17'),
(32, 1, '_yoast_wpseo_profile_updated', '1527844335'),
(33, 1, 'closedpostboxes_server', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(34, 1, 'metaboxhidden_server', 'a:1:{i:0;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BaUzjW1AeOk.Hp22knH7Bb99I1ue/20', 'admin', 'h4rkor@hotmail.com', '', '2018-05-30 08:15:28', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:706:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"GB";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"GB";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:18:"h4rkor@hotmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1527847197);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(10, '#', 32, 0, 'internal'),
(11, '#', 32, 0, 'internal'),
(12, '#', 32, 0, 'internal'),
(13, '#', 35, 0, 'internal'),
(14, '#', 35, 0, 'internal'),
(15, '#', 35, 0, 'internal'),
(19, 'mailto:contact@3wa.fr', 48, 0, 'external'),
(20, 'tel:+33140581972', 48, 0, 'external'),
(24, '#', 38, 0, 'internal'),
(25, '#', 38, 0, 'internal'),
(26, 'http://localhost/Integration/wordpress/server/cloud-liberty/', 38, 0, 'internal');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(2, 0, 0),
(5, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(29, 0, 0),
(32, 3, 0),
(33, 0, 0),
(35, 3, 0),
(36, 0, 0),
(38, 3, 0),
(39, 0, 0),
(48, 0, 0),
(49, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(61, 0, 0),
(62, 0, 0),
(69, 0, 0),
(71, 0, 0),
(73, 0, 0),
(74, 0, 0),
(76, 0, 0),
(77, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `wp_wc_download_log_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
