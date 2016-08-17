-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2016 at 01:12 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cottonwood`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_commentmeta`
--

CREATE TABLE `wp_20_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_comments`
--

CREATE TABLE `wp_20_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_20_comments`
--

INSERT INTO `wp_20_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(3, 69, 'miscellaneous2', 'interactive@konceptdesignstudio.com', '', '127.0.0.1', '2016-04-12 16:01:06', '2016-04-12 16:01:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do tempor incididunt ut labore et dolore magna aliqua. Ut enim ad veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat.', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_links`
--

CREATE TABLE `wp_20_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_options`
--

CREATE TABLE `wp_20_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=1107 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_20_options`
--

INSERT INTO `wp_20_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://cottonwood.dev', 'yes'),
(2, 'home', 'http://cottonwood.dev/wp', 'yes'),
(3, 'blogname', 'Cottonwood Residential', 'yes'),
(4, 'blogdescription', 'Best Choice, Better Living', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'interactive@konceptdesignstudio.com', 'yes'),
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
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:8:{i:0;s:36:"gravity-forms-1.9.9/gravityforms.php";i:1;s:37:"acf-options-page/acf-options-page.php";i:2;s:29:"acf-repeater/acf-repeater.php";i:3;s:30:"advanced-custom-fields/acf.php";i:4;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:5;s:41:"wordpress-importer/wordpress-importer.php";i:6;s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";i:7;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'cottonwood', 'yes'),
(40, 'stylesheet', 'cottonwood', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '36686', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '8', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_20_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:5:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:11:"tag_cloud-2";}s:9:"sidebar-2";a:1:{i:0;s:17:"recent-comments-3";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:2:{i:2;a:2:{s:5:"title";s:4:"Tags";s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1470798748;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1470841970;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470854173;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'widget_gform_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(147, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(148, 'gform_enable_background_updates', '1', 'yes'),
(149, 'rg_form_version', '1.9.9', 'yes'),
(152, 'acf_version', '4.4.7', 'yes'),
(157, 'theme_mods_twentysixteen', 'a:2:{s:18:"nav_menu_locations";a:2:{s:11:"footer-menu";i:3;s:9:"main-menu";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1460150296;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:1:{i:0;s:12:"categories-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(158, 'current_theme', 'Cottonwood Residential', 'yes'),
(159, 'theme_mods_cottonwood', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:9:"main-menu";i:4;s:11:"footer-menu";i:4;}}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(174, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(176, 'options_global_values_0_address_one', '6340 South 3000 East, Suite 500', 'no'),
(177, '_options_global_values_0_address_one', 'field_56fd36477460d', 'no'),
(178, 'options_global_values_0_address_two', 'Salt Lake City, UT 84121', 'no'),
(179, '_options_global_values_0_address_two', 'field_56fd36717460e', 'no'),
(180, 'options_global_values_0_phone', '801.278.0700', 'no'),
(181, '_options_global_values_0_phone', 'field_56fd36957460f', 'no'),
(182, 'options_global_values_0_toll_free', '1.877.584.1800', 'no'),
(183, '_options_global_values_0_toll_free', 'field_56fd36c574610', 'no'),
(184, 'options_global_values_0_fax', '801.278.0756', 'no'),
(185, '_options_global_values_0_fax', 'field_56fd36d974611', 'no'),
(186, 'options_global_values_0_email', 'info@cottonwoodres.com', 'no'),
(187, '_options_global_values_0_email', 'field_56fd36ec74612', 'no'),
(188, 'options_global_values_0_map_link', '6340+S+3000+E,+Cottonwood+Heights,+UT+84121', 'no'),
(189, '_options_global_values_0_map_link', 'field_56fd37ee74613', 'no'),
(190, 'options_global_values', '1', 'no'),
(191, '_options_global_values', 'field_56fd35e67460c', 'no'),
(218, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:35:"interactive@konceptdesignstudio.com";s:7:"version";s:5:"4.4.3";s:9:"timestamp";i:1462965303;}', 'yes'),
(285, '_transient_twentysixteen_categories', '2', 'yes'),
(286, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"footer-menu";i:3;s:9:"main-menu";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1460150331;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:1:{i:0;s:12:"categories-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(288, '_transient_twentyfifteen_categories', '2', 'yes'),
(445, 'category_children', 'a:0:{}', 'yes'),
(450, 'cptui_post_types', 'a:1:{s:11:"team-member";a:27:{s:4:"name";s:11:"team-member";s:5:"label";s:12:"Team Members";s:14:"singular_label";s:11:"Team Member";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:1:{i:0;s:5:"title";}s:10:"taxonomies";a:0:{}s:6:"labels";a:21:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(492, 'cptui_taxonomies', 'a:0:{}', 'yes'),
(499, 'duplicate_post_copyexcerpt', '1', 'yes'),
(500, 'duplicate_post_copyattachments', '0', 'yes'),
(501, 'duplicate_post_copychildren', '0', 'yes'),
(502, 'duplicate_post_copystatus', '0', 'yes'),
(503, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(504, 'duplicate_post_show_row', '1', 'yes'),
(505, 'duplicate_post_show_adminbar', '1', 'yes'),
(506, 'duplicate_post_show_submitbox', '1', 'yes'),
(507, 'duplicate_post_version', '2.6', 'yes'),
(535, 'rewrite_rules', 'a:103:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:39:"team-member/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"team-member/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"team-member/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"team-member/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"team-member/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"team-member/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"team-member/([^/]+)/embed/?$";s:44:"index.php?team-member=$matches[1]&embed=true";s:32:"team-member/([^/]+)/trackback/?$";s:38:"index.php?team-member=$matches[1]&tb=1";s:40:"team-member/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?team-member=$matches[1]&paged=$matches[2]";s:47:"team-member/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?team-member=$matches[1]&cpage=$matches[2]";s:36:"team-member/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?team-member=$matches[1]&page=$matches[2]";s:28:"team-member/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"team-member/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"team-member/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"team-member/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"team-member/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"team-member/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=8&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(620, 'rg_gforms_key', 'c5335022efe2bd80b1f1a3ccfbbf7c06', 'yes'),
(621, 'rg_gforms_disable_css', '', 'yes'),
(622, 'rg_gforms_enable_html5', '1', 'yes'),
(623, 'rg_gforms_captcha_public_key', '', 'yes'),
(624, 'rg_gforms_captcha_private_key', '', 'yes'),
(625, 'rg_gforms_currency', 'USD', 'yes'),
(626, 'rg_gforms_message', '<!--GFM-->', 'yes'),
(816, 'db_upgraded', '', 'yes'),
(818, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1470756693;s:15:"version_checked";s:5:"4.5.3";s:12:"translations";a:0:{}}', 'yes'),
(819, 'can_compress_scripts', '1', 'yes'),
(822, '_transient_timeout_GFCache_31964e602075da2e80b5a8c1fd200676', '1464099318', 'no'),
(823, '_transient_GFCache_31964e602075da2e80b5a8c1fd200676', '1', 'no'),
(937, 'gform_email_count', '1', 'yes'),
(939, '_site_transient_timeout_browser_ea0ce3fb577f1a572dc96f65ff0794b7', '1465504604', 'yes'),
(940, '_site_transient_browser_ea0ce3fb577f1a572dc96f65ff0794b7', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"50.0.2661.102";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(972, '_site_transient_timeout_available_translations', '1464982562', 'yes');
INSERT INTO `wp_20_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(973, '_site_transient_available_translations', 'a:81:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 15:55:55";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 14:44:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 22:48:01";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-03 14:05:41";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 06:39:12";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 06:38:51";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 14:21:06";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 15:42:12";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 19:26:41";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 09:24:14";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 08:22:25";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-25 18:37:03";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 06:26:11";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 05:23:57";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-26 02:00:05";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:51:07";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 10:58:49";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 13:08:25";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 21:06:55";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:43:00";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-19 16:39:25";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 13:34:35";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 21:32:12";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 11:11:25";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-23 22:05:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-27 18:29:46";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 13:28:41";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:33:47";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 09:16:29";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-29 19:30:46";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 23:06:30";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 13:14:11";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 11:24:52";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-07 12:13:44";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-03 06:34:38";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-06 12:11:53";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 15:13:48";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-31 08:01:17";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-27 00:36:15";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 09:29:35";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-08 02:07:38";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 06:34:16";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-16 06:42:31";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-28 05:41:39";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.11/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:35:50";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 08:12:50";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:36:04";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-25 06:38:00";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-18 16:39:27";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.11/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-17 23:58:57";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-27 18:35:51";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 05:36:12";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 18:04:14";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-29 09:53:12";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-09 09:01:28";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 08:00:57";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-14 14:47:49";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 14:05:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-21 01:31:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-31 09:50:18";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-23 09:33:59";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(1046, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1465223788', 'yes'),
(1047, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5909";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3658";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3607";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3126";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2793";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2375";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2220";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2100";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2049";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2028";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1992";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1936";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1870";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1728";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1690";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1589";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1544";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1397";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1318";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1291";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1221";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1113";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1091";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1006";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"992";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"981";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"924";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"915";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"912";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"909";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"908";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"839";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"830";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"796";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"776";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"770";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"761";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"760";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"753";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"753";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"750";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"743";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"711";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"701";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"696";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"691";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"690";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"690";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"668";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"661";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"652";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"645";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"615";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"612";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"605";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"600";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"598";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"597";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"590";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"580";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"574";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"569";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"566";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"554";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"553";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"542";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"533";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"523";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"519";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"518";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"514";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"512";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"509";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"506";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"484";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"465";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"462";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"462";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"461";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"455";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"444";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"443";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"430";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"427";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"422";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"422";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"421";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"413";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"412";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"411";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"407";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"406";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"403";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"402";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"401";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"400";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"395";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"394";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"392";}}', 'yes'),
(1050, 'container-id', 'main', 'yes'),
(1051, 'mcdc', 'main-menu-wrap', 'yes'),
(1052, 'search-form', 'searchform', 'yes'),
(1053, 'transition', '1', 'yes'),
(1054, 'scrollTop', '1', 'yes'),
(1055, 'loader', 'ajax-loader-blue-square.gif', 'yes'),
(1061, 'no-ajax-ids', '', 'yes'),
(1068, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470756695;s:7:"checked";a:4:{s:10:"cottonwood";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(1072, '_transient_timeout_gform_update_info', '1470801600', 'no');
INSERT INTO `wp_20_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1073, '_transient_gform_update_info', 'a:5:{s:7:"headers";a:8:{s:4:"date";s:29:"Tue, 09 Aug 2016 03:59:59 GMT";s:6:"server";s:12:"Apache/2.4.7";s:12:"x-powered-by";s:21:"PHP/5.5.9-1ubuntu4.19";s:4:"vary";s:15:"Accept-Encoding";s:16:"content-encoding";s:4:"gzip";s:14:"content-length";s:4:"2000";s:10:"connection";s:5:"close";s:12:"content-type";s:9:"text/html";}s:4:"body";s:10202:"{"is_valid_key":"1","version":"2.0.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_2.0.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=eXDCv2xoslCBZs1dm%2FtVPsCl%2FWM%3D","expiration_time":1472360400,"offerings":{"gravityforms":{"is_available":true,"version":"2.0.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_2.0.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=eXDCv2xoslCBZs1dm%2FtVPsCl%2FWM%3D"},"gravityformsactivecampaign":{"is_available":true,"version":"1.4","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/activecampaign\\/gravityformsactivecampaign_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=4l8OONlDQaKdYPJQX1qqU4riQcE%3D"},"gravityformsagilecrm":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/agilecrm\\/gravityformsagilecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=x%2BEpQBuzEjqcKz6D%2FWCy0rqoQuQ%3D"},"gravityformsauthorizenet":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=1esmAjyPH4%2BGDdLk9sm7QiUfOvQ%3D"},"gravityformsaweber":{"is_available":true,"version":"2.4","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/aweber\\/gravityformsaweber_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=FxmcNn9oGQBc3FHwqD81VjZPPs4%3D"},"gravityformsbatchbook":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/batchbook\\/gravityformsbatchbook_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=Z4NjScELV06VShic8fsrFB%2F9AjA%3D"},"gravityformsbreeze":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/breeze\\/gravityformsbreeze_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=39ewEZjgeEN7LEnbZ2dqD14fAf0%3D"},"gravityformscampaignmonitor":{"is_available":true,"version":"3.4.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campaignmonitor\\/gravityformscampaignmonitor_3.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=QDn1XuV7fwrX5Kna6uLaj3xE2h4%3D"},"gravityformscampfire":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campfire\\/gravityformscampfire_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=E1c41FGsLAJqzhKHvs2TT5yf9xo%3D"},"gravityformscapsulecrm":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/capsulecrm\\/gravityformscapsulecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=ih7%2B7%2BbJGsayxj0qwakVa06rY3Y%3D"},"gravityformscleverreach":{"is_available":true,"version":"1.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/cleverreach\\/gravityformscleverreach_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=n5qecxyQrCHSamSsCnO7SyukFPQ%3D"},"gravityformscoupons":{"is_available":true,"version":"2.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/coupons\\/gravityformscoupons_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=tPVjOkdwoORaxpCpPYnFUn1quAA%3D"},"gravityformsdebug":{"is_available":true,"version":"","url":""},"gravityformsdropbox":{"is_available":true,"version":"1.1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/dropbox\\/gravityformsdropbox_1.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=ai8pn7sDdzOMiftukLKiVGb455M%3D"},"gravityformsemma":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/emma\\/gravityformsemma_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=%2B9HufmRBoCuD%2BE2OVSBAdDCO%2FsU%3D"},"gravityformsfreshbooks":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/freshbooks\\/gravityformsfreshbooks_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=E7gaCOWOROlxaQLSTjWkQLshZlw%3D"},"gravityformsgetresponse":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/getresponse\\/gravityformsgetresponse_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=6jNlgIqZnL9r40a0oOgv3dqg%2Bgs%3D"},"gravityformshelpscout":{"is_available":true,"version":"1.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/helpscout\\/gravityformshelpscout_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=1ghPyA6DvzboUTcvWcNE6UL2SOU%3D"},"gravityformshighrise":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/highrise\\/gravityformshighrise_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=TFY87WErbT9FB5jMOswo2rffcoM%3D"},"gravityformshipchat":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/hipchat\\/gravityformshipchat_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=b6tSdxzIsx5kBWYdhyC2eZNFaZY%3D"},"gravityformsicontact":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/icontact\\/gravityformsicontact_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=3j6JBFmdVXwvV7ECanjgUgHJux8%3D"},"gravityformslogging":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/logging\\/gravityformslogging_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=oTKz9IOL0fpS8EsfMLQT1P2CnW8%3D"},"gravityformsmadmimi":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/madmimi\\/gravityformsmadmimi_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=prSil99idWWgNxvdnDTxDkC8kTo%3D"},"gravityformsmailchimp":{"is_available":true,"version":"3.7.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/mailchimp\\/gravityformsmailchimp_3.7.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=77jofj4duiSsE9oVA98XtbQE%2BnQ%3D"},"gravityformspartialentries":{"is_available":true,"version":"1.0-beta-2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/partialentries\\/gravityformspartialentries_1.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=RhhEtDH1ywiOme7p%2Fr779edAWB4%3D"},"gravityformspaypal":{"is_available":true,"version":"2.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypal\\/gravityformspaypal_2.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=JyUUGTjuLIGiXX9ekNV7m7kWe%2FY%3D"},"gravityformspaypalexpresscheckout":{"is_available":false,"version":""},"gravityformspaypalpaymentspro":{"is_available":true,"version":"2.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpaymentspro\\/gravityformspaypalpaymentspro_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=YIttHVs3ubGt27Aq6De1sXbSjuU%3D"},"gravityformspaypalpro":{"is_available":true,"version":"1.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpro\\/gravityformspaypalpro_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=JWjcIVhHOLbvvuTaOKPWzn0WIjA%3D"},"gravityformspicatcha":{"is_available":false,"version":"2.0"},"gravityformspolls":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/polls\\/gravityformspolls_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=bfgqPsxmBBzp1DQg40kp2RAF0%2Fc%3D"},"gravityformsquiz":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/quiz\\/gravityformsquiz_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=B7e19xxBJ6pIr7z0myCB%2BZHD184%3D"},"gravityformssignature":{"is_available":true,"version":"3.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/signature\\/gravityformssignature_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=1Bwu8smueBDWNqTtD10%2FdSEHoro%3D"},"gravityformsslack":{"is_available":true,"version":"1.4","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/slack\\/gravityformsslack_1.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=9qCYbg%2FNFGMSB0LOGVaWSQ%2BZlRo%3D"},"gravityformsstripe":{"is_available":true,"version":"2.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/stripe\\/gravityformsstripe_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=zYsdbjiS6nEmBMzkE06hDwLtwQA%3D"},"gravityformssurvey":{"is_available":true,"version":"3.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/survey\\/gravityformssurvey_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=fQQnJLmKNZBuXWfeUjtnAlhPtEk%3D"},"gravityformstrello":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/trello\\/gravityformstrello_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=ou9A3HYr8sfosUcmS240IV5dj44%3D"},"gravityformstwilio":{"is_available":true,"version":"2.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/twilio\\/gravityformstwilio_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=Jkfht9ufIRjk6R%2Fjya0ft5Rsl0I%3D"},"gravityformsuserregistration":{"is_available":true,"version":"3.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_3.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=g%2BvpYhHtUphVJQQcyTxtXf1%2BrYk%3D"},"gravityformszapier":{"is_available":true,"version":"1.9","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zapier\\/gravityformszapier_1.9.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=goafQuDtgnDAjInFCDC65RRKaFU%3D"},"gravityformszohocrm":{"is_available":true,"version":"1.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zohocrm\\/gravityformszohocrm_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1470887999&Signature=oHZ1HD6RNQgGDgt6xc6xOJWMC2E%3D"}},"is_active":"1"}";s:8:"response";a:2:{s:4:"code";i:200;s:7:"message";s:2:"OK";}s:7:"cookies";a:0:{}s:8:"filename";N;}', 'no'),
(1076, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1470767650;s:7:"checked";a:14:{s:30:"advanced-custom-fields/acf.php";s:5:"4.4.7";s:37:"acf-options-page/acf-options-page.php";s:5:"1.2.0";s:29:"acf-repeater/acf-repeater.php";s:5:"1.1.1";s:19:"akismet/akismet.php";s:6:"3.1.11";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.3.4";s:33:"duplicate-post/duplicate-post.php";s:3:"2.6";s:29:"gravityforms/gravityforms.php";s:6:"1.9.19";s:36:"gravity-forms-1.9.9/gravityforms.php";s:5:"1.9.9";s:9:"hello.php";s:3:"1.6";s:24:"simple-history/index.php";s:3:"2.6";s:17:"stream/stream.php";s:5:"3.0.5";s:41:"wordpress-importer/wordpress-importer.php";s:5:"0.6.1";s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";s:5:"1.6.1";s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";s:5:"1.4.5";}s:8:"response";a:4:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":8:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.8";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.8.zip";s:6:"tested";s:5:"4.5.0";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":8:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.3.5";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.3.5.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:24:"simple-history/index.php";O:8:"stdClass":8:{s:2:"id";s:5:"15824";s:4:"slug";s:14:"simple-history";s:6:"plugin";s:24:"simple-history/index.php";s:11:"new_version";s:5:"2.7.5";s:3:"url";s:45:"https://wordpress.org/plugins/simple-history/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/simple-history.2.7.5.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:17:"stream/stream.php";O:8:"stdClass":8:{s:2:"id";s:5:"46159";s:4:"slug";s:6:"stream";s:6:"plugin";s:17:"stream/stream.php";s:11:"new_version";s:5:"3.0.7";s:3:"url";s:37:"https://wordpress.org/plugins/stream/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/stream.3.0.7.zip";s:6:"tested";s:3:"4.6";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}s:33:"duplicate-post/duplicate-post.php";O:8:"stdClass":7:{s:2:"id";s:4:"1295";s:4:"slug";s:14:"duplicate-post";s:6:"plugin";s:33:"duplicate-post/duplicate-post.php";s:11:"new_version";s:3:"2.6";s:3:"url";s:45:"https://wordpress.org/plugins/duplicate-post/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/duplicate-post.2.6.zip";s:14:"upgrade_notice";s:90:"PHP 5.4 (Strict Standards) compatible + Fixed possible XSS and SQL injections + other bugs";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}}}', 'yes'),
(1078, '_site_transient_timeout_theme_roots', '1470758495', 'yes'),
(1079, '_site_transient_theme_roots', 'a:4:{s:10:"cottonwood";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(1080, '_site_transient_timeout_browser_055919ca7988015d051630a4a0ea2b7a', '1471372276', 'yes'),
(1081, '_site_transient_browser_055919ca7988015d051630a4a0ea2b7a', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Safari";s:7:"version";s:5:"9.1.1";s:10:"update_url";s:28:"http://www.apple.com/safari/";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/safari.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/safari.png";s:15:"current_version";s:1:"5";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1082, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1470810677', 'no'),
(1083, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1470810677', 'no'),
(1084, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1470767477', 'no'),
(1085, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1470810678', 'no'),
(1086, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1470810678', 'no'),
(1087, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1470767478', 'no'),
(1088, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1470810678', 'no');
INSERT INTO `wp_20_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1089, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 09 Aug 2016 18:17:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Secure your website with the Wordfence security plugin for WordPress.  Wordfence provides free enterprise-class WordPress security, protecting your we";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5790@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"9542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"6743@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12073@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2646@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 15 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"28395@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"47509@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"31973@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26607@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 09 Aug 2016 18:31:18 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Thu, 02 Aug 2007 12:45:03 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130911100210";}', 'no'),
(1090, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1470810678', 'no'),
(1091, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1470767478', 'no'),
(1092, '_transient_timeout_plugin_slugs', '1470854181', 'no'),
(1093, '_transient_plugin_slugs', 'a:14:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:37:"acf-options-page/acf-options-page.php";i:2;s:29:"acf-repeater/acf-repeater.php";i:3;s:19:"akismet/akismet.php";i:4;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:5;s:33:"duplicate-post/duplicate-post.php";i:6;s:29:"gravityforms/gravityforms.php";i:7;s:36:"gravity-forms-1.9.9/gravityforms.php";i:8;s:9:"hello.php";i:9;s:24:"simple-history/index.php";i:10;s:17:"stream/stream.php";i:11;s:41:"wordpress-importer/wordpress-importer.php";i:12;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";i:13;s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";}', 'no'),
(1094, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1470810678', 'no'),
(1095, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2016/07/wordpress-4-6-release-candidate/''>WordPress 4.6 Release Candidate</a> <span class="rss-date">July 27, 2016</span><div class="rssSummary">The release candidate for WordPress 4.6 is now available. We’ve made a few refinements since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on Tuesday, August 16, but we need [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://poststatus.com/choosing-plugins-libraries-frameworks-draft-podcast/''>Post Status: Choosing plugins, libraries, and frameworks — Draft Podcast</a></li><li><a class=''rsswidget'' href=''http://heropress.com/essays/joy-giving-back/''>HeroPress: The Joy of Giving Back</a></li><li><a class=''rsswidget'' href=''https://poststatus.com/kickstarter-open-source-project/''>Post Status: Using Kickstarter to fund open source</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Popular Plugin:</span> Google Analytics Dashboard for WP&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=google-analytics-dashboard-for-wp&amp;_wpnonce=ad87b0eb12&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Install Google Analytics Dashboard for WP">(Install)</a></li></ul></div>', 'no'),
(1096, 'wpmdb_settings', 'a:11:{s:3:"key";s:40:"yPLuHa++mUjG2vUfz1AQIlqdhuCgI56fs6um7eYb";s:10:"allow_pull";b:1;s:10:"allow_push";b:1;s:8:"profiles";a:0:{}s:7:"licence";s:36:"bc22c261-d0f3-4f38-a0a4-efb07d039450";s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;s:18:"prog_tables_hidden";b:1;s:21:"pause_before_finalize";b:0;}', 'yes'),
(1097, 'wpmdb_schema_version', '1', 'yes'),
(1098, '_site_transient_timeout_wpmdb_upgrade_data', '1470810860', 'yes'),
(1099, '_site_transient_wpmdb_upgrade_data', 'a:4:{s:17:"wp-migrate-db-pro";a:2:{s:7:"version";s:5:"1.6.1";s:6:"tested";s:5:"4.5.3";}s:29:"wp-migrate-db-pro-media-files";a:2:{s:7:"version";s:5:"1.4.5";s:6:"tested";s:5:"4.5.3";}s:21:"wp-migrate-db-pro-cli";a:2:{s:7:"version";s:5:"1.2.5";s:6:"tested";s:5:"4.5.3";}s:33:"wp-migrate-db-pro-multisite-tools";a:2:{s:7:"version";s:5:"1.1.3";s:6:"tested";s:5:"4.5.3";}}', 'yes'),
(1100, '_site_transient_timeout_wpmdb_licence_response', '1470810868', 'yes');
INSERT INTO `wp_20_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1101, '_site_transient_wpmdb_licence_response', '{"message":"<style type=\\"text\\/css\\" media=\\"screen\\">body .support .support-content{overflow:hidden;width:727px}body .support .support-content .intro{margin-bottom:20px}body .support .support-content .submission-success p,body .support .support-content .submission-error p{padding:2px;margin:0.5em 0;font-size:13px;line-height:1.5}body .support .support-content .dbrains-support-form{width:475px;float:left}body .support .support-content .dbrains-support-form p{width:auto}body .support .support-content .dbrains-support-form .field{margin-bottom:5px}body .support .support-content .dbrains-support-form input[type=text],body .support .support-content .dbrains-support-form textarea{width:100%}body .support .support-content .dbrains-support-form .field.from label{float:left;line-height:28px;display:block;font-weight:bold}body .support .support-content .dbrains-support-form .field.from select{float:right;width:400px}body .support .support-content .dbrains-support-form .field.from .note{clear:both;padding-top:5px}body .support .support-content .dbrains-support-form .field.email-message textarea{height:170px}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content{padding-left:20px}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content ol{margin:0 0 5px 20px}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content li{font-size:12px;color:#666;margin-bottom:0;line-height:1.4em}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content textarea{height:80px}body .support .support-content .dbrains-support-form .note{font-size:12px;color:#666}body .support .support-content .dbrains-support-form .submit-form{overflow:hidden;padding:10px 0}body .support .support-content .dbrains-support-form .button{float:left}body .support .support-content .dbrains-support-form .button:active,body .support .support-content .dbrains-support-form .button:focus{outline:none}body .support .support-content .dbrains-support-form .ajax-spinner{float:left;margin-left:5px;margin-top:3px}body .support .support-content .additional-help{float:right;width:220px}body .support .support-content .additional-help a{text-decoration:none}body .support .support-content .additional-help h1{margin:0 0 12px 0;padding:0;font-size:18px;font-weight:normal;line-height:1}body .support .support-content .additional-help h1 a{color:#333}body .support .support-content .additional-help .docs{background-color:#e6e6e6;padding:15px 15px 10px 15px}body .support .support-content .additional-help .docs ul{margin:0}body .support .support-content .additional-help .docs li{font-size:14px}\\n<\\/style><section class=\\"dbrains-support-form\\">\\n\\n<p class=\\"intro\\">\\n\\tYou have an active <strong>Developer<\\/strong> license. You will get front-of-the-line email support service when submitting the form below.<\\/p>\\n\\n<div class=\\"updated submission-success\\" style=\\"display: none;\\">\\n\\t<p><strong>Success!<\\/strong> &mdash; Thanks for submitting your support request. We''ll be in touch soon.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error api-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; <\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error xhr-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; There was a problem submitting your request:<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error email-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please select your email address.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error subject-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please enter a subject.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error message-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please enter a message.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error remote-diagnostic-content-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please paste in the Diagnostic Info &amp; Error Log from your <strong>remote site<\\/strong>.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error both-diagnostic-same-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Looks like you pasted the local Diagnostic Info &amp; Error Log into the textbox for the remote info. Please get the info for your <strong>remote site<\\/strong> and paste it in, or just uncheck the second checkbox if you&#8217;d rather not include your remote site info.<\\/p>\\n<\\/div>\\n\\n<form target=\\"_blank\\" method=\\"post\\" action=\\"https:\\/\\/api.deliciousbrains.com\\/?wc-api=delicious-brains&request=submit_support_request&licence_key=bc22c261-d0f3-4f38-a0a4-efb07d039450&product=wp-migrate-db-pro\\">\\n\\n\\t<div class=\\"field from\\">\\n\\t\\t<label>From:<\\/label>\\n\\t\\t<select name=\\"email\\">\\n\\t\\t<option value=\\"\\">&mdash; Select your email address &mdash;<\\/option>\\n\\t\\t<option value=\\"mike.walcott@bookfuel.com\\">mike.walcott@bookfuel.com<\\/option>\\t\\t<\\/select>\\n\\n\\t\\t<p class=\\"note\\">\\n\\t\\t\\tReplies will be sent to this email address. Update your name &amp; email in <a href=\\"https:\\/\\/deliciousbrains.com\\/my-account\\/\\">My Account<\\/a>.\\t\\t<\\/p>\\n\\t<\\/div>\\n\\n\\t<div class=\\"field subject\\">\\n\\t\\t<input type=\\"text\\" name=\\"subject\\" placeholder=\\"Subject\\">\\n\\t<\\/div>\\n\\n\\t<div class=\\"field email-message\\">\\n\\t\\t<textarea name=\\"message\\" placeholder=\\"Message\\"><\\/textarea>\\n\\t<\\/div>\\n\\n\\t<div class=\\"field checkbox local-diagnostic\\">\\n\\t\\t<label>\\n\\t\\t\\t<input type=\\"checkbox\\" name=\\"local-diagnostic\\" value=\\"1\\" checked>\\n\\t\\t\\tAttach <strong>this site&#8217;s<\\/strong> Diagnostic Info &amp; Error Log (below)\\t\\t<\\/label>\\n\\t<\\/div>\\n\\t\\t<div class=\\"field checkbox remote-diagnostic\\">\\n\\t\\t<label>\\n\\t\\t\\t<input type=\\"checkbox\\" name=\\"remote-diagnostic\\" value=\\"1\\" checked>\\n\\t\\t\\tAttach the <strong>remote site&#8217;s<\\/strong> Diagnostic Info &amp; Error Log\\t\\t<\\/label>\\n\\t<\\/div>\\n\\n\\t<div class=\\"field remote-diagnostic-content\\">\\n\\t\\t<ol>\\n\\t\\t\\t<li>Go to the Help tab of the remote site<\\/li>\\n\\t\\t\\t<li>Copy the Diagnostic Info &amp; Error Log<\\/li>\\n\\t\\t\\t<li>Paste it below<\\/li>\\n\\t\\t<\\/ol>\\n\\t\\t<textarea name=\\"remote-diagnostic-content\\" placeholder=\\"Remote site&#8217;s Diagnostic Info &amp; Error Log\\"><\\/textarea>\\n\\t<\\/div>\\n\\t\\t<div class=\\"submit-form\\">\\n\\t\\t<button type=\\"submit\\" class=\\"button\\">Send Email<\\/button>\\n\\t<\\/div>\\n\\n\\t<p class=\\"note trouble\\">\\n\\t\\tHaving trouble submitting the form? Email your support request to <a href=\\"mailto:priority-wpmdb@deliciousbrains.com\\">priority-wpmdb@deliciousbrains.com<\\/a> instead.\\t<\\/p>\\n\\n<\\/form>\\n\\n<\\/section>\\n\\n\\t<aside class=\\"additional-help\\">\\n\\t\\t<section class=\\"docs\\">\\n\\t\\t\\t<h1><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/\\">Documentation<\\/a><\\/h1>\\n\\t\\t\\t<ul class=\\"categories\\">\\n\\t\\t\\t\\t<li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/getting-started\\/\\">Getting Started<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/debugging\\/\\">Debugging<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/cli\\/\\">CLI<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/common-errors\\/\\">Common Errors<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/howto\\/\\">How To<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/addons\\/\\">Addons<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/multisite\\/\\">Multisite<\\/a><\\/li><li><a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/docs\\/changelogs\\/\\">Changelogs<\\/a><\\/li>\\t\\t\\t<\\/ul>\\n\\t\\t<\\/section>\\n\\t<\\/aside>\\n<script>!function(a){var b=a(\\".dbrains-support-form form\\"),c=a(\\".submit-form\\",b);is_submitting=!1;var d=a(\\".remote-diagnostic input\\",b),e=a(\\".remote-diagnostic-content\\",b);d.on(\\"click\\",function(){d.prop(\\"checked\\")?e.show():e.hide()});var f=ajaxurl.replace(\\"\\/admin-ajax.php\\",\\"\\/images\\/wpspin_light\\");window.devicePixelRatio>=2&&(f+=\\"-2x\\"),f+=\\".gif\\",b.submit(function(d){if(d.preventDefault(),!is_submitting){is_submitting=!0,a(\\".button\\",b).blur();var e=a(\\".ajax-spinner\\",c);e[0]?e.show():(e=a(''<img src=\\"''+f+''\\" alt=\\"\\" class=\\"ajax-spinner general-spinner\\" \\/>''),c.append(e)),a(\\".submission-error\\").hide();var g=[\\"email\\",\\"subject\\",\\"message\\"],h={},i=!1;a.each(b.serializeArray(),function(b,c){h[c.name]=c.value,a.inArray(c.name,g)>-1&&\\"\\"===c.value&&(a(\\".\\"+c.name+\\"-error\\").fadeIn(),i=!0)});var j=a(\\"input[name=remote-diagnostic]\\",b).is(\\":checked\\");if(j)if(\\"\\"===h[\\"remote-diagnostic-content\\"])a(\\".remote-diagnostic-content-error\\").fadeIn(),i=!0;else{var k=h[\\"remote-diagnostic-content\\"].substr(0,h[\\"remote-diagnostic-content\\"].indexOf(\\"\\\\n\\")),l=a(\\".debug-log-textarea\\")[0],m=l.value.substr(0,l.value.indexOf(\\"\\\\n\\"));console.log(''\\"''+k+''\\"''),console.log(''\\"''+m+''\\"''),k.trim()==m.trim()&&(a(\\".both-diagnostic-same-error\\").fadeIn(),i=!0)}if(i)return e.hide(),void(is_submitting=!1);j||(h[\\"remote-diagnostic-content\\"]=\\"\\"),a(\\"input[name=local-diagnostic]\\",b).is(\\":checked\\")&&(h[\\"local-diagnostic-content\\"]=a(\\".debug-log-textarea\\").val()),a.ajax({url:b.prop(\\"action\\"),type:\\"POST\\",dataType:\\"JSON\\",cache:!1,data:h,error:function(b,c,d){var f=a(\\".xhr-error\\");a(\\"p\\",f).append(\\" \\"+d+\\" (\\"+c+\\")\\"),f.show(),e.hide(),is_submitting=!1},success:function(c){if(\\"undefined\\"!=typeof c.errors){var d=a(\\".api-error\\");return a.each(c.errors,function(b,c){return a(\\"p\\",d).append(c),!1}),d.show(),e.hide(),void(is_submitting=!1)}a(\\".submission-success\\").show(),b.hide(),e.hide(),is_submitting=!1}})}})}(jQuery);<\\/script>","addons_available":"1","addons_available_list":{"wp-migrate-db-pro-media-files":2351,"wp-migrate-db-pro-cli":3948,"wp-migrate-db-pro-multisite-tools":7999},"addon_list":{"wp-migrate-db-pro-media-files":{"name":"Media Files","desc":"Allows you to push and pull your files in the Media Library between two WordPress installs. It can compare both libraries and only migrate those missing or updated, or it can do a complete copy of one site\\u2019s library to another. <a style=\\"color:#fff;text-decoration:underline;\\" href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/doc\\/media-files-addon\\/\\">More Details &rarr;<\\/a>","version":"1.4.5","beta_version":"","tested":"4.5.3"},"wp-migrate-db-pro-cli":{"name":"CLI","desc":"Integrates WP Migrate DB Pro with WP-CLI allowing you to run migrations from the command line: <code>wp migratedb &lt;push|pull&gt; &lt;url&gt; &lt;secret-key&gt;<\\/code> <code>[--find=&lt;strings&gt;] [--replace=&lt;strings&gt;] ...<\\/code> <a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/doc\\/cli-addon\\/\\">More Details &rarr;<\\/a>","version":"1.2.5","beta_version":"","required":"1.4b1","tested":"4.5.3"},"wp-migrate-db-pro-multisite-tools":{"name":"Multisite Tools","desc":"Export a subsite as an SQL file that can then be imported as a single site install. <a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/doc\\/multisite-tools-addon\\/\\">More Details &rarr;<\\/a>","version":"1.1.3","beta_version":"","required":"1.5-dev","tested":"4.5.3"}}}', 'yes'),
(1102, '_site_transient_timeout_wpmdb_help_message', '1470810868', 'yes'),
(1103, '_site_transient_wpmdb_help_message', '<style type="text/css" media="screen">body .support .support-content{overflow:hidden;width:727px}body .support .support-content .intro{margin-bottom:20px}body .support .support-content .submission-success p,body .support .support-content .submission-error p{padding:2px;margin:0.5em 0;font-size:13px;line-height:1.5}body .support .support-content .dbrains-support-form{width:475px;float:left}body .support .support-content .dbrains-support-form p{width:auto}body .support .support-content .dbrains-support-form .field{margin-bottom:5px}body .support .support-content .dbrains-support-form input[type=text],body .support .support-content .dbrains-support-form textarea{width:100%}body .support .support-content .dbrains-support-form .field.from label{float:left;line-height:28px;display:block;font-weight:bold}body .support .support-content .dbrains-support-form .field.from select{float:right;width:400px}body .support .support-content .dbrains-support-form .field.from .note{clear:both;padding-top:5px}body .support .support-content .dbrains-support-form .field.email-message textarea{height:170px}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content{padding-left:20px}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content ol{margin:0 0 5px 20px}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content li{font-size:12px;color:#666;margin-bottom:0;line-height:1.4em}body .support .support-content .dbrains-support-form .field.remote-diagnostic-content textarea{height:80px}body .support .support-content .dbrains-support-form .note{font-size:12px;color:#666}body .support .support-content .dbrains-support-form .submit-form{overflow:hidden;padding:10px 0}body .support .support-content .dbrains-support-form .button{float:left}body .support .support-content .dbrains-support-form .button:active,body .support .support-content .dbrains-support-form .button:focus{outline:none}body .support .support-content .dbrains-support-form .ajax-spinner{float:left;margin-left:5px;margin-top:3px}body .support .support-content .additional-help{float:right;width:220px}body .support .support-content .additional-help a{text-decoration:none}body .support .support-content .additional-help h1{margin:0 0 12px 0;padding:0;font-size:18px;font-weight:normal;line-height:1}body .support .support-content .additional-help h1 a{color:#333}body .support .support-content .additional-help .docs{background-color:#e6e6e6;padding:15px 15px 10px 15px}body .support .support-content .additional-help .docs ul{margin:0}body .support .support-content .additional-help .docs li{font-size:14px}\n</style><section class="dbrains-support-form">\n\n<p class="intro">\n	You have an active <strong>Developer</strong> license. You will get front-of-the-line email support service when submitting the form below.</p>\n\n<div class="updated submission-success" style="display: none;">\n	<p><strong>Success!</strong> &mdash; Thanks for submitting your support request. We''ll be in touch soon.</p>\n</div>\n\n<div class="error submission-error api-error" style="display: none;">\n	<p><strong>Error!</strong> &mdash; </p>\n</div>\n\n<div class="error submission-error xhr-error" style="display: none;">\n	<p><strong>Error!</strong> &mdash; There was a problem submitting your request:</p>\n</div>\n\n<div class="error submission-error email-error" style="display: none;">\n	<p><strong>Error!</strong> &mdash; Please select your email address.</p>\n</div>\n\n<div class="error submission-error subject-error" style="display: none;">\n	<p><strong>Error!</strong> &mdash; Please enter a subject.</p>\n</div>\n\n<div class="error submission-error message-error" style="display: none;">\n	<p><strong>Error!</strong> &mdash; Please enter a message.</p>\n</div>\n\n<div class="error submission-error remote-diagnostic-content-error" style="display: none;">\n	<p><strong>Error!</strong> &mdash; Please paste in the Diagnostic Info &amp; Error Log from your <strong>remote site</strong>.</p>\n</div>\n\n<div class="error submission-error both-diagnostic-same-error" style="display: none;">\n	<p><strong>Error!</strong> &mdash; Looks like you pasted the local Diagnostic Info &amp; Error Log into the textbox for the remote info. Please get the info for your <strong>remote site</strong> and paste it in, or just uncheck the second checkbox if you&#8217;d rather not include your remote site info.</p>\n</div>\n\n<form target="_blank" method="post" action="https://api.deliciousbrains.com/?wc-api=delicious-brains&request=submit_support_request&licence_key=bc22c261-d0f3-4f38-a0a4-efb07d039450&product=wp-migrate-db-pro">\n\n	<div class="field from">\n		<label>From:</label>\n		<select name="email">\n		<option value="">&mdash; Select your email address &mdash;</option>\n		<option value="mike.walcott@bookfuel.com">mike.walcott@bookfuel.com</option>		</select>\n\n		<p class="note">\n			Replies will be sent to this email address. Update your name &amp; email in <a href="https://deliciousbrains.com/my-account/">My Account</a>.		</p>\n	</div>\n\n	<div class="field subject">\n		<input type="text" name="subject" placeholder="Subject">\n	</div>\n\n	<div class="field email-message">\n		<textarea name="message" placeholder="Message"></textarea>\n	</div>\n\n	<div class="field checkbox local-diagnostic">\n		<label>\n			<input type="checkbox" name="local-diagnostic" value="1" checked>\n			Attach <strong>this site&#8217;s</strong> Diagnostic Info &amp; Error Log (below)		</label>\n	</div>\n		<div class="field checkbox remote-diagnostic">\n		<label>\n			<input type="checkbox" name="remote-diagnostic" value="1" checked>\n			Attach the <strong>remote site&#8217;s</strong> Diagnostic Info &amp; Error Log		</label>\n	</div>\n\n	<div class="field remote-diagnostic-content">\n		<ol>\n			<li>Go to the Help tab of the remote site</li>\n			<li>Copy the Diagnostic Info &amp; Error Log</li>\n			<li>Paste it below</li>\n		</ol>\n		<textarea name="remote-diagnostic-content" placeholder="Remote site&#8217;s Diagnostic Info &amp; Error Log"></textarea>\n	</div>\n		<div class="submit-form">\n		<button type="submit" class="button">Send Email</button>\n	</div>\n\n	<p class="note trouble">\n		Having trouble submitting the form? Email your support request to <a href="mailto:priority-wpmdb@deliciousbrains.com">priority-wpmdb@deliciousbrains.com</a> instead.	</p>\n\n</form>\n\n</section>\n\n	<aside class="additional-help">\n		<section class="docs">\n			<h1><a href="https://deliciousbrains.com/wp-migrate-db-pro/docs/">Documentation</a></h1>\n			<ul class="categories">\n				<li><a href="https://deliciousbrains.com/wp-migrate-db-pro/docs/getting-started/">Getting Started</a></li><li><a href="https://deliciousbrains.com/wp-migrate-db-pro/docs/debugging/">Debugging</a></li><li><a href="https://deliciousbrains.com/wp-migrate-db-pro/docs/cli/">CLI</a></li><li><a href="https://deliciousbrains.com/wp-migrate-db-pro/docs/common-errors/">Common Errors</a></li><li><a href="https://deliciousbrains.com/wp-migrate-db-pro/docs/howto/">How To</a></li><li><a href="https://deliciousbrains.com/wp-migrate-db-pro/docs/addons/">Addons</a></li><li><a href="https://deliciousbrains.com/wp-migrate-db-pro/docs/multisite/">Multisite</a></li><li><a href="https://deliciousbrains.com/wp-migrate-db-pro/docs/changelogs/">Changelogs</a></li>			</ul>\n		</section>\n	</aside>\n<script>!function(a){var b=a(".dbrains-support-form form"),c=a(".submit-form",b);is_submitting=!1;var d=a(".remote-diagnostic input",b),e=a(".remote-diagnostic-content",b);d.on("click",function(){d.prop("checked")?e.show():e.hide()});var f=ajaxurl.replace("/admin-ajax.php","/images/wpspin_light");window.devicePixelRatio>=2&&(f+="-2x"),f+=".gif",b.submit(function(d){if(d.preventDefault(),!is_submitting){is_submitting=!0,a(".button",b).blur();var e=a(".ajax-spinner",c);e[0]?e.show():(e=a(''<img src="''+f+''" alt="" class="ajax-spinner general-spinner" />''),c.append(e)),a(".submission-error").hide();var g=["email","subject","message"],h={},i=!1;a.each(b.serializeArray(),function(b,c){h[c.name]=c.value,a.inArray(c.name,g)>-1&&""===c.value&&(a("."+c.name+"-error").fadeIn(),i=!0)});var j=a("input[name=remote-diagnostic]",b).is(":checked");if(j)if(""===h["remote-diagnostic-content"])a(".remote-diagnostic-content-error").fadeIn(),i=!0;else{var k=h["remote-diagnostic-content"].substr(0,h["remote-diagnostic-content"].indexOf("\\n")),l=a(".debug-log-textarea")[0],m=l.value.substr(0,l.value.indexOf("\\n"));console.log(''"''+k+''"''),console.log(''"''+m+''"''),k.trim()==m.trim()&&(a(".both-diagnostic-same-error").fadeIn(),i=!0)}if(i)return e.hide(),void(is_submitting=!1);j||(h["remote-diagnostic-content"]=""),a("input[name=local-diagnostic]",b).is(":checked")&&(h["local-diagnostic-content"]=a(".debug-log-textarea").val()),a.ajax({url:b.prop("action"),type:"POST",dataType:"JSON",cache:!1,data:h,error:function(b,c,d){var f=a(".xhr-error");a("p",f).append(" "+d+" ("+c+")"),f.show(),e.hide(),is_submitting=!1},success:function(c){if("undefined"!=typeof c.errors){var d=a(".api-error");return a.each(c.errors,function(b,c){return a("p",d).append(c),!1}),d.show(),e.hide(),void(is_submitting=!1)}a(".submission-success").show(),b.hide(),e.hide(),is_submitting=!1}})}})}(jQuery);</script>', 'yes'),
(1104, '_site_transient_timeout_wpmdb_addons', '1475951668', 'yes'),
(1105, '_site_transient_wpmdb_addons', 'a:3:{s:29:"wp-migrate-db-pro-media-files";a:5:{s:4:"name";s:11:"Media Files";s:4:"desc";s:378:"Allows you to push and pull your files in the Media Library between two WordPress installs. It can compare both libraries and only migrate those missing or updated, or it can do a complete copy of one site’s library to another. <a style="color:#fff;text-decoration:underline;" href="https://deliciousbrains.com/wp-migrate-db-pro/doc/media-files-addon/">More Details &rarr;</a>";s:7:"version";s:5:"1.4.5";s:12:"beta_version";s:0:"";s:6:"tested";s:5:"4.5.3";}s:21:"wp-migrate-db-pro-cli";a:6:{s:4:"name";s:3:"CLI";s:4:"desc";s:334:"Integrates WP Migrate DB Pro with WP-CLI allowing you to run migrations from the command line: <code>wp migratedb &lt;push|pull&gt; &lt;url&gt; &lt;secret-key&gt;</code> <code>[--find=&lt;strings&gt;] [--replace=&lt;strings&gt;] ...</code> <a href="https://deliciousbrains.com/wp-migrate-db-pro/doc/cli-addon/">More Details &rarr;</a>";s:7:"version";s:5:"1.2.5";s:12:"beta_version";s:0:"";s:8:"required";s:5:"1.4b1";s:6:"tested";s:5:"4.5.3";}s:33:"wp-migrate-db-pro-multisite-tools";a:6:{s:4:"name";s:15:"Multisite Tools";s:4:"desc";s:190:"Export a subsite as an SQL file that can then be imported as a single site install. <a href="https://deliciousbrains.com/wp-migrate-db-pro/doc/multisite-tools-addon/">More Details &rarr;</a>";s:7:"version";s:5:"1.1.3";s:12:"beta_version";s:0:"";s:8:"required";s:7:"1.5-dev";s:6:"tested";s:5:"4.5.3";}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_postmeta`
--

CREATE TABLE `wp_20_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=1777 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_20_postmeta`
--

INSERT INTO `wp_20_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2016/04/Altis-at-Highland-Park_400.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:244;s:4:"file";s:38:"2016/04/Altis-at-Highland-Park_400.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"Altis-at-Highland-Park_400-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"Altis-at-Highland-Park_400-300x183.jpg";s:5:"width";i:300;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(4, 5, '_wp_attached_file', '2016/04/Cottonwood-Ranked-No6-400.png'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:238;s:4:"file";s:37:"2016/04/Cottonwood-Ranked-No6-400.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"Cottonwood-Ranked-No6-400-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:37:"Cottonwood-Ranked-No6-400-300x179.png";s:5:"width";i:300;s:6:"height";i:179;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(8, 7, '_menu_item_type', 'custom'),
(9, 7, '_menu_item_menu_item_parent', '0'),
(10, 7, '_menu_item_object_id', '7'),
(11, 7, '_menu_item_object', 'custom'),
(12, 7, '_menu_item_target', ''),
(13, 7, '_menu_item_classes', 'a:1:{i:0;s:10:"login-link";}'),
(14, 7, '_menu_item_xfn', ''),
(15, 7, '_menu_item_url', '#0'),
(16, 8, '_edit_last', '1'),
(17, 8, '_wp_page_template', 'default'),
(18, 8, 'content_fields_0_who_we_are_blurb', 'Cottonwood Residential is your home at last. With prime locations and upgraded amenities, we are the place where you work hard and play harder. Our residents are friendly, and our employees are committed to superior service and finding a way to say “yes.” Welcome home to your happy place.'),
(19, 8, '_content_fields_0_who_we_are_blurb', 'field_5703a4cc1c74d'),
(20, 8, 'content_fields_0_giving_back_blurb', 'We work where we live. We’re a part of the areas and communities where we live.'),
(21, 8, '_content_fields_0_giving_back_blurb', 'field_5703a5c61c74e'),
(22, 8, 'content_fields_0_careers_blurb', 'If you want a fulfilling, uplifting, high-potential career that is less about work and more about people, warmth and fun, then welcome home. At Cottonwood Residential, we invite you into our wild and crazy family, where we treat our employees like guests in our own homes.'),
(23, 8, '_content_fields_0_careers_blurb', 'field_5703a5e21c74f'),
(24, 8, 'content_fields_0_our_vision_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(25, 8, '_content_fields_0_our_vision_blurb', 'field_5703a6021c750'),
(26, 8, 'content_fields_0_our_values_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(27, 8, '_content_fields_0_our_values_blurb', 'field_5703a6131c751'),
(28, 8, 'content_fields_0_our_reputation_blurb', 'Spectacular service is at the heart of Cottonwood Residential, and our sincere commitment to our residents, employees and investors shows. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies.'),
(29, 8, '_content_fields_0_our_reputation_blurb', 'field_5703a6281c752'),
(30, 8, 'content_fields', '1'),
(31, 8, '_content_fields', 'field_5703a49e1c74c'),
(48, 15, '_edit_last', '1'),
(49, 15, '_wp_page_template', 'default'),
(50, 27, '_edit_last', '2'),
(51, 27, '_wp_page_template', 'default'),
(52, 30, '_edit_last', '1'),
(53, 30, '_wp_page_template', 'default'),
(54, 32, '_edit_last', '1'),
(55, 32, '_wp_page_template', 'default'),
(56, 34, '_edit_last', '1'),
(57, 34, '_wp_page_template', 'default'),
(58, 36, '_edit_last', '1'),
(59, 36, '_wp_page_template', 'default'),
(60, 38, '_edit_last', '1'),
(61, 38, '_wp_page_template', 'default'),
(62, 40, '_edit_last', '2'),
(63, 40, '_wp_page_template', 'default'),
(64, 42, '_edit_last', '1'),
(65, 42, '_wp_page_template', 'template-blog.php'),
(66, 44, '_edit_last', '2'),
(67, 44, '_wp_page_template', 'default'),
(68, 46, '_edit_last', '2'),
(69, 46, '_wp_page_template', 'default'),
(78, 69, '_edit_last', '1'),
(80, 72, '_edit_last', '1'),
(81, 74, '_edit_last', '2'),
(82, 65, '_edit_last', '1'),
(83, 65, '_thumbnail_id', '4'),
(92, 76, '_menu_item_type', 'post_type'),
(93, 76, '_menu_item_menu_item_parent', '0'),
(94, 76, '_menu_item_object_id', '15'),
(95, 76, '_menu_item_object', 'page'),
(96, 76, '_menu_item_target', ''),
(97, 76, '_menu_item_classes', 'a:1:{i:0;s:15:"contact-us-link";}'),
(98, 76, '_menu_item_xfn', ''),
(99, 76, '_menu_item_url', ''),
(116, 79, '_menu_item_type', 'post_type'),
(117, 79, '_menu_item_menu_item_parent', '229'),
(118, 79, '_menu_item_object_id', '42'),
(119, 79, '_menu_item_object', 'page'),
(120, 79, '_menu_item_target', ''),
(121, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 79, '_menu_item_xfn', ''),
(123, 79, '_menu_item_url', ''),
(132, 81, '_menu_item_type', 'post_type'),
(133, 81, '_menu_item_menu_item_parent', '229'),
(134, 81, '_menu_item_object_id', '38'),
(135, 81, '_menu_item_object', 'page'),
(136, 81, '_menu_item_target', ''),
(137, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(138, 81, '_menu_item_xfn', ''),
(139, 81, '_menu_item_url', ''),
(140, 82, '_menu_item_type', 'post_type'),
(141, 82, '_menu_item_menu_item_parent', '229'),
(142, 82, '_menu_item_object_id', '36'),
(143, 82, '_menu_item_object', 'page'),
(144, 82, '_menu_item_target', ''),
(145, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(146, 82, '_menu_item_xfn', ''),
(147, 82, '_menu_item_url', ''),
(148, 83, '_menu_item_type', 'post_type'),
(149, 83, '_menu_item_menu_item_parent', '229'),
(150, 83, '_menu_item_object_id', '34'),
(151, 83, '_menu_item_object', 'page'),
(152, 83, '_menu_item_target', ''),
(153, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(154, 83, '_menu_item_xfn', ''),
(155, 83, '_menu_item_url', ''),
(156, 84, '_menu_item_type', 'post_type'),
(157, 84, '_menu_item_menu_item_parent', '229'),
(158, 84, '_menu_item_object_id', '32'),
(159, 84, '_menu_item_object', 'page'),
(160, 84, '_menu_item_target', ''),
(161, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(162, 84, '_menu_item_xfn', ''),
(163, 84, '_menu_item_url', ''),
(206, 64, '_edit_last', '1'),
(207, 64, 'field_56fd35e67460c', 'a:13:{s:3:"key";s:19:"field_56fd35e67460c";s:5:"label";s:13:"Global Values";s:4:"name";s:13:"global_values";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:7:{i:0;a:15:{s:3:"key";s:19:"field_56fd36477460d";s:5:"label";s:11:"Address One";s:4:"name";s:11:"address_one";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:15:{s:3:"key";s:19:"field_56fd36717460e";s:5:"label";s:11:"Address Two";s:4:"name";s:11:"address_two";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}i:2;a:15:{s:3:"key";s:19:"field_56fd36957460f";s:5:"label";s:5:"Phone";s:4:"name";s:5:"phone";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}i:3;a:15:{s:3:"key";s:19:"field_56fd36c574610";s:5:"label";s:9:"Toll Free";s:4:"name";s:9:"toll_free";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}i:4;a:15:{s:3:"key";s:19:"field_56fd36d974611";s:5:"label";s:3:"Fax";s:4:"name";s:3:"fax";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}i:5;a:15:{s:3:"key";s:19:"field_56fd36ec74612";s:5:"label";s:5:"Email";s:4:"name";s:5:"email";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}i:6;a:15:{s:3:"key";s:19:"field_56fd37ee74613";s:5:"label";s:8:"Map Link";s:4:"name";s:8:"map_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}}s:7:"row_min";s:1:"1";s:9:"row_limit";s:1:"1";s:6:"layout";s:3:"row";s:12:"button_label";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(208, 64, 'position', 'normal'),
(209, 64, 'layout', 'no_box'),
(210, 64, 'hide_on_screen', ''),
(212, 91, '_edit_last', '1'),
(213, 91, 'field_5703a49e1c74c', 'a:13:{s:3:"key";s:19:"field_5703a49e1c74c";s:5:"label";s:14:"Content Fields";s:4:"name";s:14:"content_fields";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:10:{i:0;a:12:{s:3:"key";s:19:"field_573ca3723b211";s:5:"label";s:15:"Who We Are Hero";s:4:"name";s:15:"who_we_are_hero";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:14:{s:3:"key";s:19:"field_5703a4cc1c74d";s:5:"label";s:16:"Who We Are Blurb";s:4:"name";s:16:"who_we_are_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}i:2;a:12:{s:3:"key";s:19:"field_573cb0369597e";s:5:"label";s:16:"Giving Back Hero";s:4:"name";s:16:"giving_back_hero";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}i:3;a:14:{s:3:"key";s:19:"field_5703a5c61c74e";s:5:"label";s:17:"Giving Back Blurb";s:4:"name";s:17:"giving_back_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}i:4;a:12:{s:3:"key";s:19:"field_573cb06a9597f";s:5:"label";s:12:"Careers Hero";s:4:"name";s:12:"careers_hero";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}i:5;a:14:{s:3:"key";s:19:"field_5703a5e21c74f";s:5:"label";s:13:"Careers Blurb";s:4:"name";s:13:"careers_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}i:6;a:14:{s:3:"key";s:19:"field_5703a6021c750";s:5:"label";s:16:"Our Vision Blurb";s:4:"name";s:16:"our_vision_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}i:7;a:14:{s:3:"key";s:19:"field_5703a6131c751";s:5:"label";s:16:"Our Values Blurb";s:4:"name";s:16:"our_values_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}i:8;a:12:{s:3:"key";s:19:"field_573cb08e95980";s:5:"label";s:15:"Reputation Hero";s:4:"name";s:15:"reputation_hero";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}i:9;a:14:{s:3:"key";s:19:"field_5703a6281c752";s:5:"label";s:20:"Our Reputation Blurb";s:4:"name";s:20:"our_reputation_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}}s:7:"row_min";s:1:"1";s:9:"row_limit";s:1:"1";s:6:"layout";s:3:"row";s:12:"button_label";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(215, 91, 'position', 'normal'),
(216, 91, 'layout', 'no_box'),
(217, 91, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(218, 8, '_edit_last', '1'),
(219, 8, '_wp_page_template', 'default'),
(220, 8, 'content_fields_0_who_we_are_blurb', 'Cottonwood Residential is your home at last. With prime locations and upgraded amenities, we are the place where you work hard and play harder. Our residents are friendly, and our employees are committed to superior service and finding a way to say “yes.” Welcome home to your happy place.'),
(221, 8, '_content_fields_0_who_we_are_blurb', 'field_5703a4cc1c74d'),
(222, 8, 'content_fields_0_giving_back_blurb', 'We work where we live. We’re a part of the areas and communities where we live.'),
(223, 8, '_content_fields_0_giving_back_blurb', 'field_5703a5c61c74e'),
(224, 8, 'content_fields_0_careers_blurb', 'If you want a fulfilling, uplifting, high-potential career that is less about work and more about people, warmth and fun, then welcome home. At Cottonwood Residential, we invite you into our wild and crazy family, where we treat our employees like guests in our own homes.'),
(225, 8, '_content_fields_0_careers_blurb', 'field_5703a5e21c74f'),
(226, 8, 'content_fields_0_our_vision_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(227, 8, '_content_fields_0_our_vision_blurb', 'field_5703a6021c750'),
(228, 8, 'content_fields_0_our_values_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(229, 8, '_content_fields_0_our_values_blurb', 'field_5703a6131c751'),
(230, 8, 'content_fields_0_our_reputation_blurb', 'Spectacular service is at the heart of Cottonwood Residential, and our sincere commitment to our residents, employees and investors shows. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies.'),
(231, 8, '_content_fields_0_our_reputation_blurb', 'field_5703a6281c752'),
(232, 8, 'content_fields', '1'),
(233, 8, '_content_fields', 'field_5703a49e1c74c'),
(250, 15, '_edit_last', '1'),
(251, 15, '_wp_page_template', 'default'),
(252, 27, '_edit_last', '1'),
(253, 27, '_wp_page_template', 'default'),
(254, 30, '_edit_last', '1'),
(255, 30, '_wp_page_template', 'default'),
(256, 32, '_edit_last', '1'),
(257, 32, '_wp_page_template', 'default'),
(258, 34, '_edit_last', '1'),
(259, 34, '_wp_page_template', 'default'),
(260, 36, '_edit_last', '1'),
(261, 36, '_wp_page_template', 'default'),
(262, 38, '_edit_last', '1'),
(263, 38, '_wp_page_template', 'default'),
(264, 40, '_edit_last', '1'),
(265, 40, '_wp_page_template', 'default'),
(266, 42, '_edit_last', '1'),
(267, 42, '_wp_page_template', 'template-blog.php'),
(268, 44, '_edit_last', '1'),
(269, 44, '_wp_page_template', 'default'),
(270, 46, '_edit_last', '1'),
(271, 46, '_wp_page_template', 'default'),
(280, 69, '_edit_last', '1'),
(282, 72, '_edit_last', '1'),
(283, 74, '_edit_last', '1'),
(284, 65, '_edit_last', '1'),
(285, 65, '_thumbnail_id', '4'),
(286, 93, '_menu_item_type', 'post_type'),
(287, 93, '_menu_item_menu_item_parent', '0'),
(288, 93, '_menu_item_object_id', '8'),
(289, 93, '_menu_item_object', 'page'),
(290, 93, '_menu_item_target', ''),
(291, 93, '_menu_item_classes', 'a:1:{i:0;s:9:"home-link";}'),
(292, 93, '_menu_item_xfn', ''),
(293, 93, '_menu_item_url', ''),
(398, 64, '_edit_lock', '1459869469:1'),
(399, 64, 'rule', 'a:5:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:11:"acf-options";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(403, 65, '_edit_lock', '1461514176:1'),
(405, 69, '_edit_lock', '1461514364:1'),
(407, 8, '_edit_lock', '1464261390:1'),
(408, 91, '_edit_lock', '1464261348:1'),
(410, 110, 'content_fields_0_who_we_are_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(411, 110, '_content_fields_0_who_we_are_blurb', 'field_5703a4cc1c74d'),
(412, 110, 'content_fields_0_giving_back_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(413, 110, '_content_fields_0_giving_back_blurb', 'field_5703a5c61c74e'),
(414, 110, 'content_fields_0_careers_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(415, 110, '_content_fields_0_careers_blurb', 'field_5703a5e21c74f'),
(416, 110, 'content_fields_0_our_vision_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(417, 110, '_content_fields_0_our_vision_blurb', 'field_5703a6021c750'),
(418, 110, 'content_fields_0_our_values_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(419, 110, '_content_fields_0_our_values_blurb', 'field_5703a6131c751'),
(420, 110, 'content_fields_0_our_reputation_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(421, 110, '_content_fields_0_our_reputation_blurb', 'field_5703a6281c752'),
(422, 110, 'content_fields', '1'),
(423, 110, '_content_fields', 'field_5703a49e1c74c'),
(424, 91, 'field_5706698c1828f', 'a:13:{s:3:"key";s:19:"field_5706698c1828f";s:5:"label";s:13:"Slider Images";s:4:"name";s:13:"slider_images";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:1:{i:0;a:12:{s:3:"key";s:19:"field_570669ea18290";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:9:"Add Image";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(427, 111, '_wp_attached_file', '2016/02/fpo-shutterstock_166026071.jpg'),
(428, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1111;s:4:"file";s:38:"2016/02/fpo-shutterstock_166026071.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"fpo-shutterstock_166026071-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"fpo-shutterstock_166026071-300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"fpo-shutterstock_166026071-768x427.jpg";s:5:"width";i:768;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"fpo-shutterstock_166026071-1024x569.jpg";s:5:"width";i:1024;s:6:"height";i:569;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:38:"fpo-shutterstock_166026071-800x444.jpg";s:5:"width";i:800;s:6:"height";i:444;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:39:"fpo-shutterstock_166026071-1400x778.jpg";s:5:"width";i:1400;s:6:"height";i:778;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:40:"fpo-shutterstock_166026071-2000x1111.jpg";s:5:"width";i:2000;s:6:"height";i:1111;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(429, 112, '_wp_attached_file', '2016/02/fpo-shutterstock_212621356.jpg'),
(430, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1111;s:4:"file";s:38:"2016/02/fpo-shutterstock_212621356.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"fpo-shutterstock_212621356-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"fpo-shutterstock_212621356-300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"fpo-shutterstock_212621356-768x427.jpg";s:5:"width";i:768;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"fpo-shutterstock_212621356-1024x569.jpg";s:5:"width";i:1024;s:6:"height";i:569;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:38:"fpo-shutterstock_212621356-800x444.jpg";s:5:"width";i:800;s:6:"height";i:444;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:39:"fpo-shutterstock_212621356-1400x778.jpg";s:5:"width";i:1400;s:6:"height";i:778;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:40:"fpo-shutterstock_212621356-2000x1111.jpg";s:5:"width";i:2000;s:6:"height";i:1111;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(431, 113, '_wp_attached_file', '2016/02/fpo-shutterstock_220674340.jpg'),
(432, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1111;s:4:"file";s:38:"2016/02/fpo-shutterstock_220674340.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"fpo-shutterstock_220674340-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"fpo-shutterstock_220674340-300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"fpo-shutterstock_220674340-768x427.jpg";s:5:"width";i:768;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"fpo-shutterstock_220674340-1024x569.jpg";s:5:"width";i:1024;s:6:"height";i:569;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:38:"fpo-shutterstock_220674340-800x444.jpg";s:5:"width";i:800;s:6:"height";i:444;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:39:"fpo-shutterstock_220674340-1400x778.jpg";s:5:"width";i:1400;s:6:"height";i:778;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:40:"fpo-shutterstock_220674340-2000x1111.jpg";s:5:"width";i:2000;s:6:"height";i:1111;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(433, 114, 'slider_images_0_image', '111'),
(434, 114, '_slider_images_0_image', 'field_570669ea18290'),
(435, 114, 'slider_images_1_image', '112'),
(436, 114, '_slider_images_1_image', 'field_570669ea18290'),
(437, 114, 'slider_images_2_image', '113'),
(438, 114, '_slider_images_2_image', 'field_570669ea18290'),
(439, 114, 'slider_images', '3'),
(440, 114, '_slider_images', 'field_5706698c1828f'),
(441, 114, 'content_fields_0_who_we_are_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(442, 114, '_content_fields_0_who_we_are_blurb', 'field_5703a4cc1c74d'),
(443, 114, 'content_fields_0_giving_back_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(444, 114, '_content_fields_0_giving_back_blurb', 'field_5703a5c61c74e'),
(445, 114, 'content_fields_0_careers_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(446, 114, '_content_fields_0_careers_blurb', 'field_5703a5e21c74f'),
(447, 114, 'content_fields_0_our_vision_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(448, 114, '_content_fields_0_our_vision_blurb', 'field_5703a6021c750'),
(449, 114, 'content_fields_0_our_values_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(450, 114, '_content_fields_0_our_values_blurb', 'field_5703a6131c751'),
(451, 114, 'content_fields_0_our_reputation_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(452, 114, '_content_fields_0_our_reputation_blurb', 'field_5703a6281c752'),
(453, 114, 'content_fields', '1'),
(454, 114, '_content_fields', 'field_5703a49e1c74c'),
(455, 8, 'slider_images_0_image', '181'),
(456, 8, '_slider_images_0_image', 'field_570669ea18290'),
(457, 8, 'slider_images_1_image', '182'),
(458, 8, '_slider_images_1_image', 'field_570669ea18290'),
(459, 8, 'slider_images_2_image', '183'),
(460, 8, '_slider_images_2_image', 'field_570669ea18290'),
(461, 8, 'slider_images', '6'),
(462, 8, '_slider_images', 'field_5706698c1828f'),
(463, 42, '_edit_lock', '1460115287:1'),
(464, 69, '_thumbnail_id', '112'),
(465, 72, '_edit_lock', '1460492009:1'),
(468, 118, '_edit_last', '1'),
(469, 118, 'position', 'normal'),
(470, 118, 'layout', 'no_box'),
(471, 118, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(472, 118, 'field_55d4d5b4acbd1', 'a:13:{s:3:"key";s:19:"field_55d4d5b4acbd1";s:5:"label";s:12:"Team Content";s:4:"name";s:12:"team_content";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:3:{i:0;a:12:{s:3:"key";s:19:"field_55d4d635acbd2";s:5:"label";s:17:"Team Member Image";s:4:"name";s:17:"team_member_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_57192a19ec71a";s:8:"operator";s:2:"==";s:5:"value";s:16:"senior-executive";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:15:{s:3:"key";s:19:"field_55d4d7c6a9a75";s:5:"label";s:5:"Title";s:4:"name";s:5:"title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55d4db2a6899c";s:8:"operator";s:2:"==";s:5:"value";s:16:"senior executive";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}i:2;a:12:{s:3:"key";s:19:"field_55d4d8d5a9a7c";s:5:"label";s:3:"Bio";s:4:"name";s:3:"bio";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:5:"basic";s:12:"media_upload";s:2:"no";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55d4db2a6899c";s:8:"operator";s:2:"==";s:5:"value";s:16:"senior executive";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}}s:7:"row_min";s:1:"1";s:9:"row_limit";s:1:"1";s:6:"layout";s:3:"row";s:12:"button_label";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_571cf231cca90";s:8:"operator";s:2:"==";s:5:"value";s:16:"senior-executive";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(474, 118, '_edit_lock', '1463580977:1'),
(478, 120, '_edit_lock', '1461521548:1'),
(479, 120, '_edit_last', '1'),
(480, 121, '_wp_attached_file', '2016/04/Dan-S_hi-res_BW_flat_2.jpg'),
(481, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:34:"2016/04/Dan-S_hi-res_BW_flat_2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"Dan-S_hi-res_BW_flat_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"Dan-S_hi-res_BW_flat_2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"Dan-S_hi-res_BW_flat_2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"Dan-S_hi-res_BW_flat_2-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(482, 121, '_wp_attachment_image_alt', 'DANIEL SHAEFFER - Chief Executive Officer'),
(483, 120, 'team_content_0_team_category', 'senior-executive'),
(484, 120, '_team_content_0_team_category', 'field_57192a19ec71a'),
(485, 120, 'team_content_0_team_member_image', '121'),
(486, 120, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(487, 120, 'team_content_0_title', 'Chief Executive Officer'),
(488, 120, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(489, 120, 'team_content_0_bio', 'Mr. Shaeffer’s primary responsibilities include overseeing acquisitions, capital markets and strategic planning. He is also involved with other aspects of the Company’s business including asset management, marketing and capital raising activities. Before co-founding the predecessor to the Company in 2004, Mr. Shaeffer worked as a Senior Equities Analyst with Wasatch Advisors of Salt Lake City. Prior to joining Wasatch Advisors, Mr. Shaeffer was a Vice President of Investment Banking at Morgan Stanley in Los Angeles and New York City. Mr. Shaeffer began his career with Ernst &amp; Young working in the firm’s audit department. Mr. Shaeffer holds an International MBA from the University of Chicago Graduate School of Business and a BS in Accounting from Brigham Young University and is a Certified Public Accountant.'),
(490, 120, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(491, 120, 'team_content', '1'),
(492, 120, '_team_content', 'field_55d4d5b4acbd1'),
(494, 120, 'team_content_0_ordering_field', '1'),
(495, 120, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(496, 122, '_edit_lock', '1461521547:1'),
(497, 122, '_edit_last', '1'),
(498, 123, '_wp_attached_file', '2016/04/Chad-C_hi-res_BW_flat.jpg'),
(499, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:33:"2016/04/Chad-C_hi-res_BW_flat.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Chad-C_hi-res_BW_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Chad-C_hi-res_BW_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"Chad-C_hi-res_BW_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:33:"Chad-C_hi-res_BW_flat-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(500, 123, '_wp_attachment_image_alt', 'CHAD CHRISTENSEN'),
(501, 122, 'team_content_0_team_category', 'senior-executive'),
(502, 122, '_team_content_0_team_category', 'field_57192a19ec71a'),
(503, 122, 'team_content_0_ordering_field', '3'),
(504, 122, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(505, 122, 'team_content_0_team_member_image', '123'),
(506, 122, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(507, 122, 'team_content_0_title', 'President and Chairman'),
(508, 122, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(509, 122, 'team_content_0_bio', 'Chad Christensen is the President and Chairman of Cottonwood Residential. Mr. Christensen oversees the asset and property management components of the business, as well as the general operations of the company. Mr. Christensen is also actively involved in new business generation, new acquisitions, and investor relations. Mr. Christensen co-founded Cottonwood Residential, LLC in 2004 and founded its precursor in 2003.\r\n\r\nPrior to co-founding Cottonwood, Mr. Christensen worked for a short time with the Stan Johnson Co. in Tulsa, Oklahoma. Mr. Christensen worked on a three-person team with the company founder. This team brokered and closed over 25 transactions totaling more than $125 million during Mr. Christensen’s employment. Through this experience Mr. Christensen gained a strong base of knowledge and experience in finding, financing and closing real estate transactions. He created relationships with commercial real estate brokers, real estate investment trusts, and large conduit lenders. The vision and business plan for Cottonwood Capital stemmed from Mr. Christensen’s experience working with other Tenant-In-Common Sponsor clients of this firm.\r\n\r\nBetween years at business school Mr. Christensen worked for Goldman Sachs as a summer associate in the Private Wealth Group in Los Angeles and New York. While at Goldman Sachs, Mr. Christensen worked on various business development and client acquisition projects. Prior to Business School, Mr. Christensen founded and managed Paramo Investments, an investment company based in Salt Lake City.\r\n\r\nMr. Christensen holds a Bachelor of Arts in English from the University of Utah and a Masters in Business Administration from The Wharton School at The University of Pennsylvania. He also holds a Real Estate License in the State of Utah.'),
(510, 122, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(511, 122, 'team_content', '1'),
(512, 122, '_team_content', 'field_55d4d5b4acbd1'),
(513, 124, '_edit_lock', '1461521546:1'),
(514, 124, '_edit_last', '1'),
(515, 125, '_wp_attached_file', '2016/04/Gregg-C_hi-res_BW_flat_2.jpg'),
(516, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:36:"2016/04/Gregg-C_hi-res_BW_flat_2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"Gregg-C_hi-res_BW_flat_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"Gregg-C_hi-res_BW_flat_2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"Gregg-C_hi-res_BW_flat_2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:36:"Gregg-C_hi-res_BW_flat_2-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(517, 125, '_wp_attachment_image_alt', 'GREGG T. CHRISTENSEN'),
(518, 124, 'team_content_0_team_category', 'senior-executive'),
(519, 124, '_team_content_0_team_category', 'field_57192a19ec71a'),
(520, 124, 'team_content_0_ordering_field', '6'),
(521, 124, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(522, 124, 'team_content_0_team_member_image', '125'),
(523, 124, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(524, 124, 'team_content_0_title', 'General Counsel'),
(525, 124, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(526, 124, 'team_content_0_bio', 'Gregg Christensen joined Cottonwood Residential as a Principal and General Counsel. His primary duties and responsibilities are overseeing and coordinating all legal aspects of Cottonwood’s business including: negotiating and preparing contracts, conducting due diligence, assisting with financing and managing Cottonwood’s organizational structure. Mr. Christensen also assists with company operations and is a member of the Executive and Investment Committees.\r\n\r\nPrior to joining Cottonwood Residential, Mr. Christensen was a Principal, Managing Director and General Counsel of Cherokee &amp; Walker; a Utah based Investment Company focused on real estate. Mr. Christensen was instrumental in the formation of Cottonwood Residential through his role at Cherokee &amp; Walker. He also was involved in the formation, ownership and management of Wentworth Development, a land acquisition and development company; Rimrock Construction, a commercial construction company which had the 7th highest dollar volume of permits issued across the Wasatch Front in 2006; and Rimrock Development, an extension of Rimrock Construction which focuses on retail and office development. Additionally, Cherokee owned Wentworth Senior Living Services which developed and managed Senior Care facilities until it was sold in 2006. At the time of its sale, Wentworth was one of the largest Senior Care providers in Utah. Mr. Christensen has been involved in over 500 million dollars of real estate transactions in various asset classes over the past several years, as well as various other private equity transactions.\r\n\r\nPreviously, Mr. Christensen practiced law with Nelson &amp; Senior in Salt Lake City. His areas of practice included Real Estate, Corporate and Commercial law. He is a member of the Utah State Bar, as well as the Bar of the United States District Court for the District of Utah.\r\n\r\nMr. Christensen holds an Honors Bachelor of Arts Degree in English from the University of Utah and a Juris Doctorate Degree from the University of Utah, S.J. Quinney College of Law.'),
(527, 124, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(528, 124, 'team_content', '1'),
(529, 124, '_team_content', 'field_55d4d5b4acbd1'),
(530, 126, '_edit_lock', '1461521545:1'),
(531, 126, '_edit_last', '1'),
(532, 126, 'team_content_0_team_category', 'senior-executive'),
(533, 126, '_team_content_0_team_category', 'field_57192a19ec71a'),
(534, 126, 'team_content_0_ordering_field', '9'),
(535, 126, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(536, 126, 'team_content_0_team_member_image', ''),
(537, 126, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(538, 126, 'team_content_0_title', 'Chief Financial Officer'),
(539, 126, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(540, 126, 'team_content_0_bio', 'Susan Hallenberg is the chief financial officer of Cottonwood Residential. She is responsible for the financial management of Cottonwood Residential and its affiliates, and oversees the investor subscription and closing process on all TIC transactions. Ms. Hallenberg brings over fifteen years of accounting, investor reporting, and real estate finance experience to the Cottonwood Residential team.\r\n\r\nMs. Hallenberg’s previous work experience includes working as an acquisitions officer for Phillips Edison &amp; Company, sourcing value-added real estate investments in eleven western states. Prior to that, Ms. Hallenberg spent eight years working for Lend Lease Real Estate Investments in various capacities. She spent four years working with Lend Lease Development. Most recently, she was a project controller with responsibility for the financial management of a $500 million mixed-use real estate development project in Bellevue, Washington. Prior to that, she was the finance manager for Lend Lease’s multifamily housing development group in Salt Lake City. In that capacity she was responsible for underwriting, financing, and reporting on multifamily housing development opportunities in the western United States using tax credit, tax-exempt bond, and conventional financing. Previous to working with the development group, Ms. Hallenberg worked for four years with the Housing and Community Investing Group in both Salt Lake City and Boston. This group focused on investing in multifamily investments financed by tax credits. Her time with this group was split between property acquisition (underwriting and due diligence) and investor reporting.\r\n\r\nPrior to joining Lend Lease, Ms. Hallenberg worked for Aldrich Eastman &amp; Waltch for two years as an assistant portfolio controller; before that she was at Ernst &amp; Young where she worked in the firm’s audit department for four years.\r\n\r\nMs. Hallenberg is a Certified Public Accountant and holds a Bachelor of Arts degree in economics/accounting from The College of the Holy Cross.'),
(541, 126, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(542, 126, 'team_content', '1'),
(543, 126, '_team_content', 'field_55d4d5b4acbd1'),
(544, 127, '_edit_lock', '1461521544:1'),
(545, 127, '_edit_last', '1'),
(546, 127, 'team_content_0_team_category', 'senior-executive'),
(547, 127, '_team_content_0_team_category', 'field_57192a19ec71a'),
(548, 127, 'team_content_0_ordering_field', '12'),
(549, 127, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(550, 127, 'team_content_0_team_member_image', ''),
(551, 127, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(552, 127, 'team_content_0_title', 'Senior Vice President of Property Management'),
(553, 127, '_team_content_0_title', 'field_55d4d7c6a9a75');
INSERT INTO `wp_20_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(554, 127, 'team_content_0_bio', 'Debra Spohn is the Senior Vice President of Property Management. Ms. Spohn is responsible for the property management of the Cottonwood Portfolio. Her extensive multifamily property management experience allows her to effectively manage both our third-party property managers and Cottonwood’s direct onsite management teams.\r\n\r\nBefore joining Cottonwood Residential, Ms. Spohn was principal broker and owner of Concept Property Management, a third-party property management company. During her nine-year ownership, the company provided full-service property management, due diligence work, construction management, and condo conversion services. Her clients included institutional owners, government entities, and many multifamily investors who looked to Concept to effectively reposition their asset within its submarket.\r\n\r\nPrior to starting Concept Properties, Ms. Spohn was vice president of Utah for WLA Associates, a Newport Beach, California, real estate investment company. She opened the Utah office and during her seven-year employment, she oversaw all operations of the multifamily and commercial management, supervised millions of dollars of renovation work, and a conversion of 800 apartment units into condominiums. Her management of the Utah portfolio allowed WLA to purchase multifamily assets in other markets.\r\n\r\nBefore working with WLA, Ms. Spohn worked for several large property management companies in Utah and California. She started as an onsite manager of forty-seven units in downtown Salt Lake City in 1986. During the first years of her career she acted as the onsite manager for many large properties. She quickly gained a reputation as one who could reposition troubled properties into successful thriving assets. Her twenty-five years of experience in property management brings additional depth and knowledge to the acquisition and management of the Cottonwood investment portfolio.\r\n\r\nMs. Spohn attended Brigham Young University. She is a licensed real estate broker in the State of Utah, an active member of the National Association of Professional Women, and holds a CPM (Certified Property Manager) designation from IREM.'),
(555, 127, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(556, 127, 'team_content', '1'),
(557, 127, '_team_content', 'field_55d4d5b4acbd1'),
(558, 128, '_edit_lock', '1461521543:1'),
(559, 128, '_edit_last', '1'),
(560, 128, 'team_content_0_team_category', 'senior-executive'),
(561, 128, '_team_content_0_team_category', 'field_57192a19ec71a'),
(562, 128, 'team_content_0_ordering_field', '15'),
(563, 128, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(564, 128, 'team_content_0_team_member_image', ''),
(565, 128, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(566, 128, 'team_content_0_title', 'Vice President of Acquisitions'),
(567, 128, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(568, 128, 'team_content_0_bio', 'Paul Fredenberg is the Vice President of Acquisitions and focuses exclusively on sourcing and evaluating new multifamily investment opportunities for Cottonwood Residential. Mr. Fredenberg has built a growing network of contacts within the real estate community and has become adept at identifying new opportunities quickly and accurately. Mr. Fredenberg has been instrumental in developing the acquisition philosophy of Cottonwood Residential.\r\n\r\nBefore Joining Cottonwood Residential, Mr. Fredenberg worked in the Mergers and Acquisitions Investment Banking Group of Wachovia Securities where he was responsible for executing all phases of middle-market M&amp;A transaction, including creating detailed financial models and valuation analyses, leading transaction due diligence efforts, and drafting detailed offering memoranda. In addition, Mr. Fredenberg has worked at Piper Jaffray in the firm’s Middle0Market M&amp;A Investment Banking Group, and at the Arbor Strategy Group, a boutique strategy consulting firm.\r\n\r\nPrior to his experience in investment banking, Mr. Fredenberg worked at the Arbor Strategy Group, a boutique strategy consulting firm based in Ann Arbor, Michigan specializing in brand development, innovation, and strategic growth. While at the Arbor Strategy Group, Mr. Fredenberg gained experience across several practice areas and industry groups, working closely with senior management at global consumer products companies such as ConAgra, Sara Lee, and Georgia-Pacific to develop and implement sustainable growth strategies for assorted business units and product lines.\r\n\r\nMr. Fredenberg holds a Bachelors of Arts in Economics from the University of Michigan, a Masters of Arts in Latin American Studies and International Management from the University of Pennsylvania, and a Masters of Business Administration from The Wharton School at the University of Pennsylvania, with an emphasis in Finance and Public Policy. In addition, he holds Series 7 and Series 63 licensing.'),
(569, 128, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(570, 128, 'team_content', '1'),
(571, 128, '_team_content', 'field_55d4d5b4acbd1'),
(572, 129, '_edit_lock', '1461521542:1'),
(573, 129, '_edit_last', '1'),
(574, 130, '_wp_attached_file', '2016/04/Ralph-Smith-big.jpg'),
(575, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:27:"2016/04/Ralph-Smith-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"Ralph-Smith-big-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"Ralph-Smith-big-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"Ralph-Smith-big-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:27:"Ralph-Smith-big-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(576, 130, '_wp_attachment_image_alt', 'RALPH H. SMITH'),
(577, 129, 'team_content_0_team_category', 'senior-executive'),
(578, 129, '_team_content_0_team_category', 'field_57192a19ec71a'),
(579, 129, 'team_content_0_ordering_field', '18'),
(580, 129, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(581, 129, 'team_content_0_team_member_image', '130'),
(582, 129, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(583, 129, 'team_content_0_title', 'Vice President of Finance and Acquisitions'),
(584, 129, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(585, 129, 'team_content_0_bio', 'Ralph H. Smith serves Cottonwood as Vice President of Finance and Acquisitions. His primary duties and responsibilities include managing lender and loan servicer relations and overseeing the underwriting, due diligence and financing of the company’s real estate acquisitions and portfolio held assets. Mr. Smith also assists the company’s General Counsel on related legal matters.\r\n\r\nPrior to joining Cottonwood, Mr. Smith held various management and/or consulting positions with, among others, PNC Bank, Citigroup Global Markets Realty Corp, and CreditVest, Inc., where he was involved in real estate debt structuring, new business development, portfolio management, real estate underwriting and due diligence, and distressed real estate management and resolution.\r\n\r\nMr. Smith holds a Juris Doctorate Degree from the University of Pittsburgh and a Bachelor of Arts degree in Political Science and Business Administration from Adrian College. He is admitted to practice law in the Commonwealth of Pennsylvania, the Federal District Court for the Western District of Pennsylvania and the U.S. Court of Appeals for the Third Circuit.'),
(586, 129, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(587, 129, 'team_content', '1'),
(588, 129, '_team_content', 'field_55d4d5b4acbd1'),
(589, 131, '_edit_lock', '1461521541:1'),
(590, 131, '_edit_last', '1'),
(591, 131, 'team_content_0_team_category', 'senior-executive'),
(592, 131, '_team_content_0_team_category', 'field_57192a19ec71a'),
(593, 131, 'team_content_0_ordering_field', '21'),
(594, 131, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(595, 131, 'team_content_0_team_member_image', ''),
(596, 131, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(597, 131, 'team_content_0_title', 'Vice President of Construction Management'),
(598, 131, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(599, 131, 'team_content_0_bio', 'Lance Howell is the vice president of construction management for Cottonwood Residential. He is responsible for all construction activities for the company. As part of this responsibility Mr. Howell oversees the capital projects and the flow of capital expenditures for each of the properties under Cottonwood Residential''s management. Mr. Howell also oversees all construction activities related to the development projects in which Cottonwood Capital Development is engaged.\r\n\r\nFor the past seventeen years, Mr. Howell worked at Daw Tech, an international general construction firm which specializes in construction of high-tech facilities for Fortune 500 companies such as IBM, Intel, Eastman Kodak, Hewlett-Packard and Micron. These projects are located throughout North America, Mexico, and Europe and have an aggregate value in excess of $150 Million Dollars. Most recently as a Vice President, Mr. Howell was responsible for the acquisition, estimation and completion of these specialty projects.\r\n\r\nCoinciding with his experience at Daw Tech, Mr. Howell founded The Biltmore Company in 2006. Biltmore is a B-100 general construction company specializing in the construction of custom luxury homes.\r\n\r\nEarly in his career, Mr. Howell worked for Zions First National Bank in the Investment Division as an institutional investment officer and a licensed securities representative.\r\n\r\nMr. Howell holds a Master’s of Business Administration from the David Eccles School of Business at the University of Utah. He also holds a Bachelor of Arts in economics from the University of Utah. Mr. Howell currently holds a General Contractor license in the state of Utah, Idaho, Louisiana, Alabama, North Carolina, Georgia and Tennessee.'),
(600, 131, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(601, 131, 'team_content', '1'),
(602, 131, '_team_content', 'field_55d4d5b4acbd1'),
(603, 132, '_edit_lock', '1461521540:1'),
(604, 132, '_edit_last', '1'),
(605, 133, '_wp_attached_file', '2016/04/Stan-Hanks-big.jpg'),
(606, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2016/04/Stan-Hanks-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Stan-Hanks-big-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"Stan-Hanks-big-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"Stan-Hanks-big-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:26:"Stan-Hanks-big-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(607, 133, '_wp_attachment_image_alt', 'STAN HANKS'),
(608, 132, 'team_content_0_team_category', 'senior-executive'),
(609, 132, '_team_content_0_team_category', 'field_57192a19ec71a'),
(610, 132, 'team_content_0_ordering_field', '24'),
(611, 132, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(612, 132, 'team_content_0_team_member_image', '133'),
(613, 132, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(614, 132, 'team_content_0_title', 'Vice President of Asset Management'),
(615, 132, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(616, 132, 'team_content_0_bio', 'Prior to joining Cottonwood, Mr. Hanks was a Sr. VP and Principal at RealSource, a boutique multi-family real estate firm in Salt Lake City. For over 11 years, he was involved with acquisitions, financing, asset management and capital raising. Prior to RealSource, Mr. Hanks was VP of Finance/Corporate Controller for TenFold Corporation, a software company in Utah that completed its IPO in 1999. Prior to TenFold, Mr. Hanks spent four years as an auditor at Coopers &amp; Lybrand. Mr. Hanks earned a Bachelors of Accounting from the University of Utah in 1992 and is currently a licensed CPA in Utah.'),
(617, 132, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(618, 132, 'team_content', '1'),
(619, 132, '_team_content', 'field_55d4d5b4acbd1'),
(620, 134, '_edit_lock', '1461521539:1'),
(621, 134, '_edit_last', '1'),
(622, 134, 'team_content_0_team_category', 'senior-executive'),
(623, 134, '_team_content_0_team_category', 'field_57192a19ec71a'),
(624, 134, 'team_content_0_ordering_field', '27'),
(625, 134, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(626, 134, 'team_content_0_team_member_image', ''),
(627, 134, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(628, 134, 'team_content_0_title', 'Vice President of Asset Management'),
(629, 134, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(630, 134, 'team_content_0_bio', 'Adam Larson, Vice President of Asset Management, is responsible for asset management in the Eastern region as well as various corporate financial planning and analysis functions. Prior to joining Cottonwood, Mr. Larson worked in the Investment Banking Division at Goldman Sachs advising clients on mergers and acquisitions and other capital raising activities in the Real Estate, Consumer/Retail and Healthcare sectors. Mr. Larson previously worked at Barclays Capital, Bonneville Real Estate Capital and Hitachi Consulting. Mr. Larson holds an MBA from the University of Chicago Booth School Of Business, and a BS in Business Management from Brigham Young University where he also served as Student Body President.'),
(631, 134, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(632, 134, 'team_content', '1'),
(633, 134, '_team_content', 'field_55d4d5b4acbd1'),
(634, 135, '_edit_lock', '1461521538:1'),
(635, 135, '_edit_last', '1'),
(636, 136, '_wp_attached_file', '2016/04/Eric-Marlin_hi-res_BW.jpg'),
(637, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:33:"2016/04/Eric-Marlin_hi-res_BW.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Eric-Marlin_hi-res_BW-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Eric-Marlin_hi-res_BW-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"Eric-Marlin_hi-res_BW-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:33:"Eric-Marlin_hi-res_BW-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(638, 136, '_wp_attachment_image_alt', 'ERIC MARLIN'),
(639, 135, 'team_content_0_team_category', 'senior-executive'),
(640, 135, '_team_content_0_team_category', 'field_57192a19ec71a'),
(641, 135, 'team_content_0_ordering_field', '30'),
(642, 135, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(643, 135, 'team_content_0_team_member_image', '136'),
(644, 135, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(645, 135, 'team_content_0_title', 'Managing Director of Capital Markets'),
(646, 135, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(647, 135, 'team_content_0_bio', 'Eric Marlin serves as the Senior Vice President of Marketing for Cottonwood Residential. He is responsible for raising equity for Cottonwood Residential''s real estate investments. As part of this effort, Eric interfaces extensively with the community of Registered Representatives, Broker Dealers, and individual investors. Mr. Marlin also oversees Cottonwood Residential''s marketing department and is instrumental in developing the marketing strategy for Cottonwood Residential.\r\n\r\nMr. Marlin brings nine years of marketing and sales experience in the financial services industry. He began his career in 1998 with Emmett Larkin Securities in San Francisco, where he acted as a project manager for broker/dealer and clearinghouse issues. From 2000 until 2003, Mr. Marlin worked as a financial consultant with Merrill Lynch Private Client Group where he focused primarily on financial planning, estate planning, and asset management for high net worth individuals and for small to midsize corporations. Eric entered the tenant in common industry in 2003 where he worked with a high net worth group in Newport Beach specializing in 1031 exchanges. There he was responsible for managing the sale and completion of all transactions from beginning to close. In 2005 Mr. Marlin joined CORE Realty Holdings as Vice President of the Western Region. In this position Mr. Marlin raised over 160 Million Dollars of equity for tenant in common real estate investments. Mr. Marlin is well known and widely recognized as one of the premier marketing professionals in the Tenant-In-Common industry. He has extensive relationships throughout the community and country.\r\n\r\nMr. Marlin received a bachelor’s degree in History of Public Policy from the University of California at Santa Barbara in 1998. He is a licensed securities representative with his Series 7 and 63. He resides in San Diego, CA.'),
(648, 135, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(649, 135, 'team_content', '1'),
(650, 135, '_team_content', 'field_55d4d5b4acbd1'),
(651, 137, '_edit_lock', '1461521606:1'),
(652, 137, '_edit_last', '1'),
(653, 137, 'team_content_0_team_category', 'senior-executive'),
(654, 137, '_team_content_0_team_category', 'field_57192a19ec71a'),
(655, 137, 'team_content_0_ordering_field', '33'),
(656, 137, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(657, 137, 'team_content_0_team_member_image', ''),
(658, 137, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(659, 137, 'team_content_0_title', 'Vice President of Tender Offers'),
(660, 137, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(661, 137, 'team_content_0_bio', 'Dora Chi is the Vice President of Tender Offers of Cottonwood Residential. She is responsible for compiling and extending offers to purchase property interests from current investors and to grow Cottonwood Residential’s own ownership interests in the properties we manage.\r\n\r\nPrior to joining Cottonwood in 2013, Ms. Chi was an investment consultant for nine years. As a consultant she was involved in several capital market and high-yield instruments, corporate transactions, mergers, acquisitions, and restructuring initiatives. Ms. Chi also served as a Senior Vice President of AIMCO (Apartment Investment Management Company), for seven years prior to consulting. AIMCO is one of the largest multi-family REIT’s in the United States and is listed on the S&amp;P 500. In this position, Ms. Chi utilized her skills in creating capital appreciation through repositioning, restructuring, development, and management of assets. She has been a great asset to Cottonwood Residential, bringing 30 years of experience in corporate finance and corporate transactions.\r\n\r\nMs. Chi attended the University of Arizona and majored in Finance and English.'),
(662, 137, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(663, 137, 'team_content', '1'),
(664, 137, '_team_content', 'field_55d4d5b4acbd1'),
(665, 138, '_edit_lock', '1461521536:1'),
(666, 138, '_edit_last', '1'),
(667, 138, 'team_content_0_team_category', 'property-management'),
(668, 138, '_team_content_0_team_category', 'field_57192a19ec71a'),
(669, 138, 'team_content_0_ordering_field', '3'),
(670, 138, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(671, 138, 'team_content_0_team_member_image', ''),
(672, 138, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(673, 138, 'team_content_0_title', 'Eastern Regional Vice President'),
(674, 138, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(675, 138, 'team_content_0_bio', 'Kathy Felix is the Regional Vice President and Regional Property Manager based in Columbia, South Carolina. Her area includes the eastern United States. Kathy has nineteen years of experience in the multifamily industry. She began her career as a part-time Leasing Consultant with The Palms Associates. She quickly developed a reputation for being a problem solver and engaging her residents in a positive atmosphere.\r\n\r\nAt Insignia/AIMCO she rose from Leasing Consultant to Regional Manager for South Carolina, Georgia, and North Carolina. Early on, she developed a reputation for her work ethic and ability to develop and mentor successful career staff. During her tenure she managed dramatic changes in the company’s operating priorities in a tough economy.\r\n\r\nAt Morgan Properties Kathy was a Regional Property Manager overseeing properties located in South Carolina, Georgia and Ohio. Kathy''s ability to motivate and retain motivated staff was recognized by her superiors in the challenging area. Kathy was also a Senior Property Manager over three communities, 2,288 leases, for College Park Communities in Columbia, South Carolina.\r\n\r\nHer achievements and awards include but are not limited to the Property Manager of the Year, the Leadership Award (twice), the Shining Star Award (twice), and The Excellence Award. All presented by Insignia/AIMCO. College Park Properties presented Kathy with the Highest Renewal Percentage Award. Kathy Felix attended the Professional School of Real Estate in Charleston, South Carolina. She is a licensed Property Manager In-Charge.'),
(676, 138, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(677, 138, 'team_content', '1'),
(678, 138, '_team_content', 'field_55d4d5b4acbd1'),
(679, 139, '_edit_lock', '1461521535:1'),
(680, 139, '_edit_last', '1'),
(681, 140, '_wp_attached_file', '2016/04/Steven-Faltz-big.jpg'),
(682, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:28:"2016/04/Steven-Faltz-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Steven-Faltz-big-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"Steven-Faltz-big-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"Steven-Faltz-big-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:28:"Steven-Faltz-big-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(683, 140, '_wp_attachment_image_alt', 'STEVEN P. FALTZ, ARM, CPMC'),
(684, 139, 'team_content_0_team_category', 'property-management'),
(685, 139, '_team_content_0_team_category', 'field_57192a19ec71a'),
(686, 139, 'team_content_0_ordering_field', '6'),
(687, 139, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(688, 139, 'team_content_0_team_member_image', '140'),
(689, 139, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(690, 139, 'team_content_0_title', 'Regional Vice President'),
(691, 139, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(692, 139, 'team_content_0_bio', 'Steven Faltz is the Regional Vice President for the Western Region. His varied career includes over twenty-two years experience in the property management industry that includes training, development, marketing, managing multi-site teams, and developing strategies to improve overall performance of communities and portfolios, with significant experience related to revenue management.\r\n\r\nFor many years, Steven guided the careers of many associates by developing an exceptional background in management and professional style, and his substantive executive experience managing service and operations previously as the former Director of Operations for BH Management Services, Director of Property Management for Capital Residential, and nine years experience working for Equity Residential Properties Trust (REIT).\r\n\r\nSteven attended the University of Memphis with a concentration in Business Management, and he has his Accredited Residential Manager (ARM) designation, and Certified Property Manager (CPM) candidacy through the Institute of Real Estate Management (IREM). He previously sat on the Education Committee, Solid Waste Committee and Board of Directors for the Apartment Association of Greater Dallas, as well as the Education Committee for the Institute of Real Estate Management.'),
(693, 139, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(694, 139, 'team_content', '1'),
(695, 139, '_team_content', 'field_55d4d5b4acbd1'),
(696, 141, '_edit_lock', '1461521534:1'),
(697, 141, '_edit_last', '1'),
(698, 142, '_wp_attached_file', '2016/04/Annette-big.jpg'),
(699, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2016/04/Annette-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Annette-big-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Annette-big-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"Annette-big-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:23:"Annette-big-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(700, 142, '_wp_attachment_image_alt', 'ANNETTE FOLCH'),
(701, 141, 'team_content_0_team_category', 'property-management'),
(702, 141, '_team_content_0_team_category', 'field_57192a19ec71a'),
(703, 141, 'team_content_0_ordering_field', '9'),
(704, 141, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(705, 141, 'team_content_0_team_member_image', '142'),
(706, 141, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(707, 141, 'team_content_0_title', 'Director of Operations and Education'),
(708, 141, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(709, 141, 'team_content_0_bio', 'Annette Folch is our Director of Operations and Education based in Salt Lake City, Utah. Annette started with Cottonwood Residential in December of 2010 as a Regional Manager. In December of 2011 she was promoted to the Director of Education and Training.\r\n\r\nIn her current role, as Director of Operations and Education, she oversees the development of programs and best practices to improve overall performance of the portfolio. She has twenty-four years of property management experience specializing in program implementations, associate training and development, marketing lease-ups and repositioning of assets. She is a 2nd generation property management professional and has memories of helping in the leasing offices in South Florida since she was in her early teens.\r\n\r\nDuring her career she has worked with industry leaders such as The Related Group, Jupiter, and Greystar where she quickly became recognized as an outstanding leader and performer in the field. Annette has earned National certifications such as Housing Credit Certified Professional from the National Center of Home Builders and Certified Occupancy Specialist for the National Center for Housing Management.\r\n\r\nShe has always remained active in the local apartment association and has served as a director and board member in South Florida.'),
(710, 141, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(711, 141, 'team_content', '1'),
(712, 141, '_team_content', 'field_55d4d5b4acbd1'),
(713, 143, '_edit_lock', '1461521677:1'),
(714, 143, '_edit_last', '1'),
(715, 144, '_wp_attached_file', '2016/04/Jana-Daniel-big.jpg'),
(716, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:27:"2016/04/Jana-Daniel-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"Jana-Daniel-big-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"Jana-Daniel-big-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"Jana-Daniel-big-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:27:"Jana-Daniel-big-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(717, 144, '_wp_attachment_image_alt', 'JANA DANIEL'),
(718, 143, 'team_content_0_team_category', 'property-management'),
(719, 143, '_team_content_0_team_category', 'field_57192a19ec71a'),
(720, 143, 'team_content_0_ordering_field', '12'),
(721, 143, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(722, 143, 'team_content_0_team_member_image', '144'),
(723, 143, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(724, 143, 'team_content_0_title', 'Houston-Based Regional Manager'),
(725, 143, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(726, 143, 'team_content_0_bio', 'Jana Daniel joined the Cottonwood Residential team in December 2010 and oversees our Houston portfolio. Jana brings 30 years of multi-family experience to our company and has a proven track record for increasing property revenues and optimizing occupancy on versatile portfolios. Jana gained her roots in the industry starting off as an onsite manager and working her way to achieve top level positions including Director of Operations for HFI Management and Asset Manager for Trammell Crow Residential.'),
(727, 143, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(728, 143, 'team_content', '1'),
(729, 143, '_team_content', 'field_55d4d5b4acbd1'),
(730, 145, '_edit_lock', '1461521532:1'),
(731, 145, '_edit_last', '1'),
(732, 146, '_wp_attached_file', '2016/04/Marty-Curtis-big.jpg'),
(733, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:28:"2016/04/Marty-Curtis-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Marty-Curtis-big-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"Marty-Curtis-big-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"Marty-Curtis-big-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:28:"Marty-Curtis-big-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(734, 146, '_wp_attachment_image_alt', 'MARTY CURTIS'),
(735, 145, 'team_content_0_team_category', 'property-management'),
(736, 145, '_team_content_0_team_category', 'field_57192a19ec71a'),
(737, 145, 'team_content_0_ordering_field', '15'),
(738, 145, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(739, 145, 'team_content_0_team_member_image', '146'),
(740, 145, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(741, 145, 'team_content_0_title', 'Boise-Based Regional Manager'),
(742, 145, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(743, 145, 'team_content_0_bio', 'Marty Curtis oversees ten properties and 2,500 units in the western United States, from Idaho to Arizona and from Colorado to the Pacific coast. As of July 2012, she has been with Cottonwood Residential for just over a year. She came to us from successful stints at Riverstone Residential in Boise, Idaho, and AMLI in Atlanta, Georgia. Altogether, Marty brings twenty years of experience in residential property management to her job.\r\n\r\nMarty’s education includes Schiller College in Heidelberg, Germany, and a Bachelor’s of Science in Business Administration from Reinhardt College in Atlanta, Georgia. She most recently received honors as the Western Regional Manager 2012 Premiere Performer for Cottonwood Residential.'),
(744, 145, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(745, 145, 'team_content', '1'),
(746, 145, '_team_content', 'field_55d4d5b4acbd1'),
(747, 147, '_edit_lock', '1461521531:1'),
(748, 147, '_edit_last', '1'),
(749, 148, '_wp_attached_file', '2016/04/Jocelyn-Forcht-Langfitt-big.jpg'),
(750, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:39:"2016/04/Jocelyn-Forcht-Langfitt-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"Jocelyn-Forcht-Langfitt-big-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"Jocelyn-Forcht-Langfitt-big-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"Jocelyn-Forcht-Langfitt-big-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:39:"Jocelyn-Forcht-Langfitt-big-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(751, 148, '_wp_attachment_image_alt', 'JOCELYN FORCHT-LANGFITT'),
(752, 147, 'team_content_0_team_category', 'property-management'),
(753, 147, '_team_content_0_team_category', 'field_57192a19ec71a'),
(754, 147, 'team_content_0_ordering_field', '18'),
(755, 147, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(756, 147, 'team_content_0_team_member_image', '148'),
(757, 147, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(758, 147, 'team_content_0_title', 'Gulf Shores-Based Regional Manager'),
(759, 147, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(760, 147, 'team_content_0_bio', 'Jocelyn Forcht-Langfitt is the Regional Property Manager based in Gulf Shores, Alabama. Jocelyn began her career in property management as a leasing consultant in Orlando, Florida in 1994. Her experience with companies such as Lincoln Property Company, Weidner Apartment Homes and Sagebrush Capital Management has given her knowledge to support her teams in challenging markets. As a team member at Cottonwood Residential, she excels in the planning, implementation and execution of property management functions. Her marketing savvy and creative solution-oriented skills bring tremendous value to assets managed.'),
(761, 147, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(762, 147, 'team_content', '1'),
(763, 147, '_team_content', 'field_55d4d5b4acbd1'),
(764, 149, '_edit_lock', '1461521530:1'),
(765, 149, '_edit_last', '1'),
(766, 150, '_wp_attached_file', '2016/04/Jerri-Risch-big.jpg'),
(767, 150, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:27:"2016/04/Jerri-Risch-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"Jerri-Risch-big-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"Jerri-Risch-big-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"Jerri-Risch-big-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:27:"Jerri-Risch-big-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(768, 150, '_wp_attachment_image_alt', 'JERRI RISCH'),
(769, 149, 'team_content_0_team_category', 'property-management'),
(770, 149, '_team_content_0_team_category', 'field_57192a19ec71a'),
(771, 149, 'team_content_0_ordering_field', '21'),
(772, 149, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(773, 149, 'team_content_0_team_member_image', '150'),
(774, 149, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(775, 149, 'team_content_0_title', 'Charlotte-Based Regional Manager'),
(776, 149, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(777, 149, 'team_content_0_bio', 'Jerri Risch is the Regional Property Manager based in Charlotte, North Carolina. Her portfolio includes several properties located in North Carolina, Illinois, and Michigan. Jerri has been in the property management industry for 13 years. Her extensive experience in multifamily management has helped her acquire wide ranging knowledge of property types, markets, and management techniques. She has demonstrated exceptional skills in overseeing the management of lease-up of new construction as well in directing several major property renovations.\r\n\r\nPrior to joining Cottonwood Residential, Jerri was employed as a Regional Property Manager with Southwood Realty. Her responsibilities with Southwood Realty included the supervision of 13 properties consisting of 2,870 units located in North Carolina and South Carolina. Jerri was employed with High Associates for close to 10 years where she rose from Marketing Specialist to District Manager, which included properties located in Charlotte, North Carolina and Greenville, South Carolina. She was continually recognized for being successful at troubleshooting struggling communities and drastically improving their financial performance.\r\n\r\nIn 2005 she received her Certified Apartment Manager designation through NAA. Jerri holds a Property Manager in Charge license for South Carolina and North Carolina Real Estate Broker’s License.'),
(778, 149, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(779, 149, 'team_content', '1'),
(780, 149, '_team_content', 'field_55d4d5b4acbd1'),
(781, 151, '_edit_lock', '1461521529:1'),
(782, 151, '_edit_last', '1'),
(783, 152, '_wp_attached_file', '2016/04/Kendra-Roberts-big.jpg'),
(784, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:30:"2016/04/Kendra-Roberts-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"Kendra-Roberts-big-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"Kendra-Roberts-big-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"Kendra-Roberts-big-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:30:"Kendra-Roberts-big-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(785, 152, '_wp_attachment_image_alt', 'KENDRA ROBERTS'),
(786, 151, 'team_content_0_team_category', 'property-management'),
(787, 151, '_team_content_0_team_category', 'field_57192a19ec71a'),
(788, 151, 'team_content_0_ordering_field', '24'),
(789, 151, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(790, 151, 'team_content_0_team_member_image', '152'),
(791, 151, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(792, 151, 'team_content_0_title', 'Atlanta-Based Regional Manager'),
(793, 151, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(794, 151, 'team_content_0_bio', 'Kendra Roberts joined Cottonwood Residential in December 2012 as a Regional Property Manager. Her portfolio includes several properties in the metro Atlanta area. Kendra brings 15 years of experience in the multifamily industry to the company. Her strengths include recruiting and building solid performing teams, increasing rent growth, expense control and financial reporting.\r\n\r\nKendra started her career in property management in 1998 as a part-time marketing representative for Crowne Partners, a privately owned company in Greensboro, North Carolina. In 1999, she joined Equity Residential, the largest publicly owned REIT, where she was quickly promoted from Leasing Consultant to Assistant Property Manager to Property Manager. During her time with Equity Residential, she managed several challenging assets and strengthened her leadership skills. In 2003, Kendra joined MAA (formerly Mid America), another large publicly owned REIT where she would further develop into a Senior Property Manager at a large, 657 unit property. She first gained multisite management experience in 2005 when she managed a large property while also overseeing two newly acquired properties. During her time with MAA, Kendra continued to assist in the due diligence process and take over adjustment for the onsite management teams on several new acquisitions and managed a multimillion dollar interior renovation project. Kendra was presented with several awards while with MAA, including Distinguished Leader, Property of the Year and Improved Property of the Year.\r\n\r\nKendra holds a CAM designation through NAA. She is an active IREM member of Georgia Chapter 67 through which she is a pursuing her CPM designation.'),
(795, 151, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(796, 151, 'team_content', '1'),
(797, 151, '_team_content', 'field_55d4d5b4acbd1'),
(798, 153, '_edit_lock', '1461521528:1'),
(799, 153, '_edit_last', '1'),
(800, 153, 'team_content_0_team_category', 'property-management'),
(801, 153, '_team_content_0_team_category', 'field_57192a19ec71a'),
(802, 153, 'team_content_0_ordering_field', '27'),
(803, 153, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(804, 153, 'team_content_0_team_member_image', ''),
(805, 153, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(806, 153, 'team_content_0_title', 'Atlanta-Based Regional Based'),
(807, 153, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(808, 153, 'team_content_0_bio', 'Ashley Jones joined Cottonwood in April 2010 and is the Regional Manager based in Atlanta, Georgia. Her portfolio consists of several properties throughout southeast Atlanta and Alabama. Ashley has 17 years of experience in the multifamily industry which consist of student housing, lease up of new construction, military housing and conventional assets . She began her career as a part time leasing consultant at Georgia Southern University where she graduated with a double major in business administration and marketing. She later continued her career with several other large companies such as Davis Development, JMG Realty and Lincoln Property Company. Ashley''s strengths include team building through training and development, marketing, rent growth and improving challenging assets. Ashley holds a CAM designation through NAA and holds a real estate license through the Georgia Real Estate Commission. She is also an active member of the Atlanta Apartment Association.'),
(809, 153, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(810, 153, 'team_content', '1'),
(811, 153, '_team_content', 'field_55d4d5b4acbd1'),
(812, 154, '_edit_lock', '1461521526:1'),
(813, 154, '_edit_last', '1'),
(814, 155, '_wp_attached_file', '2016/04/Pam-Snelling-big.jpg'),
(815, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:28:"2016/04/Pam-Snelling-big.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Pam-Snelling-big-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"Pam-Snelling-big-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"Pam-Snelling-big-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:28:"Pam-Snelling-big-800x800.jpg";s:5:"width";i:800;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(816, 155, '_wp_attachment_image_alt', 'PAM SNELLING'),
(817, 154, 'team_content_0_team_category', 'property-management'),
(818, 154, '_team_content_0_team_category', 'field_57192a19ec71a'),
(819, 154, 'team_content_0_ordering_field', '30'),
(820, 154, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(821, 154, 'team_content_0_team_member_image', '155'),
(822, 154, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(823, 154, 'team_content_0_title', 'Austin-Based Regional Manager'),
(824, 154, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(825, 154, 'team_content_0_bio', 'Pam Snelling is the Regional Manager based in Austin, Texas. She oversees the property as a senior level manager. Pam has 29 years of experience in multifamily property management. She has worked for several large management companies, including Milestone, Maxus Properties, and SMI Reality where she had a proven track record of performance and leadership. She has been with Cottonwood Residential since February 2008. She recently won the SAAA (San Antonio Apartment Association) Supervisor of the Year Award. Pam visits the properties regularly and provides leadership and training.'),
(826, 154, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(827, 154, 'team_content', '1'),
(828, 154, '_team_content', 'field_55d4d5b4acbd1'),
(829, 156, '_edit_lock', '1461521522:1'),
(830, 156, '_edit_last', '1'),
(831, 157, '_wp_attached_file', '2016/04/Mary.jpg'),
(832, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:368;s:6:"height";i:490;s:4:"file";s:16:"2016/04/Mary.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"Mary-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"Mary-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(833, 157, '_wp_attachment_image_alt', 'MARY A. HOLLINGSHED'),
(834, 156, 'team_content_0_team_category', 'property-management'),
(835, 156, '_team_content_0_team_category', 'field_57192a19ec71a'),
(836, 156, 'team_content_0_ordering_field', '33'),
(837, 156, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(838, 156, 'team_content_0_team_member_image', '157'),
(839, 156, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(840, 156, 'team_content_0_title', 'Regional Property Manager'),
(841, 156, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(842, 156, 'team_content_0_bio', 'Mary joined Cottonwood Residential this year with the Kislak partnership and oversees assets in the Dallas-Ft Worth area. She joins our team with an MBA degree and over 20 years experience in the multi-family industry. Mary’s greatest strengths are her leadership and mentoring skills as well as pushing her teams to provide world class customer service to all external and internal customers resulting in overall increased property performance. Her extensive knowledge and experience in operations, as well as training, allows her to focus on financial performance while building bench strength within her portfolio.'),
(843, 156, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(844, 156, 'team_content', '1'),
(845, 156, '_team_content', 'field_55d4d5b4acbd1'),
(853, 156, 'team_content_0_team_category_x', 'senior executive'),
(854, 156, '_team_content_0_team_category_x', 'field_55d4db2a6899c'),
(860, 160, '_edit_lock', '1461620065:1'),
(861, 160, '_edit_last', '1'),
(862, 160, 'team_content_0_team_category', 'board-member');
INSERT INTO `wp_20_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(863, 160, '_team_content_0_team_category', 'field_57192a19ec71a'),
(864, 160, 'team_content_0_team_member_image', '121'),
(865, 160, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(866, 160, 'team_content_0_title', 'Director'),
(867, 160, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(868, 160, 'team_content_0_bio', 'Mr. Shaeffer’s primary responsibilities include overseeing acquisitions, capital markets and strategic planning. He is also involved with other aspects of the Company’s business including asset management, marketing and capital raising activities. Before co-founding the predecessor to the Company in 2004, Mr. Shaeffer worked as a Senior Equities Analyst with Wasatch Advisors of Salt Lake City. Prior to joining Wasatch Advisors, Mr. Shaeffer was a Vice President of Investment Banking at Morgan Stanley in Los Angeles and New York City. Mr. Shaeffer began his career with Ernst &amp; Young working in the firm’s audit department. Mr. Shaeffer holds an International MBA from the University of Chicago Graduate School of Business and a BS in Accounting from Brigham Young University and is a Certified Public Accountant.'),
(869, 160, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(870, 160, 'team_content', '1'),
(871, 160, '_team_content', 'field_55d4d5b4acbd1'),
(872, 160, 'team_content_0_ordering_field', '6'),
(873, 160, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(874, 160, '_dp_original', '120'),
(875, 161, '_edit_lock', '1461520888:1'),
(876, 161, '_edit_last', '1'),
(877, 161, 'team_content_0_team_category', 'board-member'),
(878, 161, '_team_content_0_team_category', 'field_57192a19ec71a'),
(879, 161, 'team_content_0_ordering_field', '3'),
(880, 161, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(881, 161, 'team_content_0_team_member_image', '123'),
(882, 161, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(883, 161, 'team_content_0_title', 'President and Chairman'),
(884, 161, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(885, 161, 'team_content_0_bio', 'Chad Christensen is the President and Chairman of Cottonwood Residential. Mr. Christensen oversees the asset and property management components of the business, as well as the general operations of the company. Mr. Christensen is also actively involved in new business generation, new acquisitions, and investor relations. Mr. Christensen co-founded Cottonwood Residential, LLC in 2004 and founded its precursor in 2003.\r\n\r\nPrior to co-founding Cottonwood, Mr. Christensen worked for a short time with the Stan Johnson Co. in Tulsa, Oklahoma. Mr. Christensen worked on a three-person team with the company founder. This team brokered and closed over 25 transactions totaling more than $125 million during Mr. Christensen’s employment. Through this experience Mr. Christensen gained a strong base of knowledge and experience in finding, financing and closing real estate transactions. He created relationships with commercial real estate brokers, real estate investment trusts, and large conduit lenders. The vision and business plan for Cottonwood Capital stemmed from Mr. Christensen’s experience working with other Tenant-In-Common Sponsor clients of this firm.\r\n\r\nBetween years at business school Mr. Christensen worked for Goldman Sachs as a summer associate in the Private Wealth Group in Los Angeles and New York. While at Goldman Sachs, Mr. Christensen worked on various business development and client acquisition projects. Prior to Business School, Mr. Christensen founded and managed Paramo Investments, an investment company based in Salt Lake City.\r\n\r\nMr. Christensen holds a Bachelor of Arts in English from the University of Utah and a Masters in Business Administration from The Wharton School at The University of Pennsylvania. He also holds a Real Estate License in the State of Utah.'),
(886, 161, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(887, 161, 'team_content', '1'),
(888, 161, '_team_content', 'field_55d4d5b4acbd1'),
(889, 161, '_dp_original', '122'),
(890, 162, '_edit_lock', '1461520881:1'),
(891, 162, '_edit_last', '1'),
(892, 162, 'team_content_0_team_category', 'board-member'),
(893, 162, '_team_content_0_team_category', 'field_57192a19ec71a'),
(894, 162, 'team_content_0_ordering_field', '9'),
(895, 162, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(896, 162, 'team_content_0_team_member_image', '125'),
(897, 162, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(898, 162, 'team_content_0_title', 'Director'),
(899, 162, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(900, 162, 'team_content_0_bio', 'Gregg Christensen joined Cottonwood Residential as a Principal and General Counsel. His primary duties and responsibilities are overseeing and coordinating all legal aspects of Cottonwood’s business including: negotiating and preparing contracts, conducting due diligence, assisting with financing and managing Cottonwood’s organizational structure. Mr. Christensen also assists with company operations and is a member of the Executive and Investment Committees.\r\n\r\nPrior to joining Cottonwood Residential, Mr. Christensen was a Principal, Managing Director and General Counsel of Cherokee &amp; Walker; a Utah based Investment Company focused on real estate. Mr. Christensen was instrumental in the formation of Cottonwood Residential through his role at Cherokee &amp; Walker. He also was involved in the formation, ownership and management of Wentworth Development, a land acquisition and development company; Rimrock Construction, a commercial construction company which had the 7th highest dollar volume of permits issued across the Wasatch Front in 2006; and Rimrock Development, an extension of Rimrock Construction which focuses on retail and office development. Additionally, Cherokee owned Wentworth Senior Living Services which developed and managed Senior Care facilities until it was sold in 2006. At the time of its sale, Wentworth was one of the largest Senior Care providers in Utah. Mr. Christensen has been involved in over 500 million dollars of real estate transactions in various asset classes over the past several years, as well as various other private equity transactions.\r\n\r\nPreviously, Mr. Christensen practiced law with Nelson &amp; Senior in Salt Lake City. His areas of practice included Real Estate, Corporate and Commercial law. He is a member of the Utah State Bar, as well as the Bar of the United States District Court for the District of Utah.\r\n\r\nMr. Christensen holds an Honors Bachelor of Arts Degree in English from the University of Utah and a Juris Doctorate Degree from the University of Utah, S.J. Quinney College of Law.'),
(901, 162, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(902, 162, 'team_content', '1'),
(903, 162, '_team_content', 'field_55d4d5b4acbd1'),
(904, 162, '_dp_original', '124'),
(905, 163, '_edit_lock', '1461520864:1'),
(906, 163, '_edit_last', '1'),
(907, 163, 'team_content_0_team_category', 'board-member'),
(908, 163, '_team_content_0_team_category', 'field_57192a19ec71a'),
(909, 163, 'team_content_0_ordering_field', '12'),
(910, 163, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(911, 163, 'team_content_0_team_member_image', ''),
(912, 163, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(913, 163, 'team_content_0_title', 'Director'),
(914, 163, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(915, 163, 'team_content_0_bio', 'Mr. Robertson is the CEO and Chief Investment Officer of FrontRange Capital Partners, LLC, a real estate investment firm he co-founded in 2010 in partnership with the Pritzker Group. FrontRange invests in equity, whole loan and mezzanine debt positions backed by commercial real estate, with a primary focus on the acquisition and repositioning of multifamily assets located in major markets throughout the United States. Mr. Robertson has 20 years of real estate experience and has completed more than $15 billion of acquisitions, dispositions, redevelopments, joint ventures, and debt financings during his career. Prior to FrontRange, Mr. Robertson was President, Chief Investment Officer and Chief Financial Officer of Apartment Investment and Management Company (“AIMCO”), an S&amp;P 500 publicly traded REIT and one of the largest owners and operators of apartments in the United States with approximately 850 properties and 130,000 units located in 44 states, the District of Columbia and Puerto Rico. Mr. Robertson earned a Master’s of Business Administration from Harvard Business School in 1991, and a Bachelor’s of Economics from the University of California, San Diego in 1989.'),
(916, 163, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(917, 163, 'team_content', '1'),
(918, 163, '_team_content', 'field_55d4d5b4acbd1'),
(919, 164, '_edit_lock', '1461520857:1'),
(920, 164, '_edit_last', '1'),
(921, 164, 'team_content_0_team_category', 'board-member'),
(922, 164, '_team_content_0_team_category', 'field_57192a19ec71a'),
(923, 164, 'team_content_0_ordering_field', '15'),
(924, 164, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(925, 164, 'team_content_0_team_member_image', ''),
(926, 164, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(927, 164, 'team_content_0_title', 'Director'),
(928, 164, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(929, 164, 'team_content_0_bio', 'Mr. Graber has 24 years of real estate experience and has completed more than $18 billion of acquisitions, dispositions, redevelopments, joint ventures, and debt financings during his career. At FrontRange, he has primary responsibility for acquisitions and asset management.\r\n\r\nPrior to co-founding FrontRange, Mr. Graber was Executive Vice President and Co-Head of Transactions and Asset Management at AIMCO. Upon joining AIMCO in 1999 and through 2006, Mr. Graber was responsible for overseeing transactional activity throughout the United States within AIMCO’s 600 property subsidized housing portfolio including acquisitions, dispositions, joint ventures, refinancings and redevelopments using federal low income housing tax credits. In 2007, Mr. Graber was named Co-Head of Transactions and Asset Management with responsibility for all of AIMCO’s conventional and subsidized property transactional activity in the eastern half of the United States. While with AIMCO, Mr. Graber completed approximately $8 billion in multifamily transactions.\r\n\r\nPrior to joining AIMCO, Mr. Graber was at Credit Suisse First Boston (“CSFB”) from 1991 through 1999, first as an Associate and Vice President in real estate investment banking and ultimately as a Director with the firm’s Principal Transactions Group. Starting in 1995, Mr. Graber ran a team responsible for making principal debt and equity investments in hotel, multifamily and assisted living properties on behalf of the firm. While at CSFB, Mr. Graber completed more than $10 billion in real estate transactions.\r\n\r\nMr. Graber earned a Master’s of Business Administration in 1988 and a Bachelor’s of Science in Economics in 1983 from the Wharton School of the University of Pennsylvania.'),
(930, 164, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(931, 164, 'team_content', '1'),
(932, 164, '_team_content', 'field_55d4d5b4acbd1'),
(933, 165, '_edit_lock', '1463580960:1'),
(934, 165, '_edit_last', '1'),
(935, 165, 'team_content_0_team_category', 'board-member'),
(936, 165, '_team_content_0_team_category', 'field_57192a19ec71a'),
(937, 165, 'team_content_0_ordering_field', '18'),
(938, 165, '_team_content_0_ordering_field', 'field_570fe7a0c0557'),
(939, 165, 'team_content_0_team_member_image', ''),
(940, 165, '_team_content_0_team_member_image', 'field_55d4d635acbd2'),
(941, 165, 'team_content_0_title', 'Board Advisor'),
(942, 165, '_team_content_0_title', 'field_55d4d7c6a9a75'),
(943, 165, 'team_content_0_bio', 'Mr. Andrews is a Principal with Equity Resource Investments, LLC (ERI), a real estate private equity firm based in Cambridge, MA. ERI has a focus on fractional real estate investments and Mr. Andrews oversees much of the firm’s current activities relating to these types of investments. In this capacity, Mr. Andrews has extensive experience valuing and purchasing illiquid investments on the secondary market as well as managing registered and non-registered tender offers and mergers. In addition to these responsibilities, Mr. Andrews is involved in debt acquisitions, preferred equity investments and direct real estate purchases, working in all facets of these transactions from origination to closing. Prior to joining ERI in 1999, Mr. Andrews attended Boston University School of Law where he earned a Juris Doctorate degree. He is a member of the Bar of the Commonwealth of Massachusetts.'),
(944, 165, '_team_content_0_bio', 'field_55d4d8d5a9a7c'),
(945, 165, 'team_content', '1'),
(946, 165, '_team_content', 'field_55d4d5b4acbd1'),
(949, 124, 'team_content_0_team_category_rev', 'senior-executive'),
(950, 124, '_team_content_0_team_category_rev', 'field_57192a19ec71a'),
(994, 167, 'order_by', '20'),
(995, 167, '_order_by', 'field_571cf002aab06'),
(996, 65, 'order_by', '20'),
(997, 65, '_order_by', 'field_571cf002aab06'),
(999, 168, 'order_by', '15'),
(1000, 168, '_order_by', 'field_571cf002aab06'),
(1001, 69, 'order_by', '15'),
(1002, 69, '_order_by', 'field_571cf002aab06'),
(1003, 118, 'field_571cf209cca8f', 'a:15:{s:3:"key";s:19:"field_571cf209cca8f";s:5:"label";s:19:"Order Control Field";s:4:"name";s:8:"order_me";s:4:"type";s:6:"number";s:12:"instructions";s:210:"Select a number for ordering purposes. 1 is first - 10 is last. It''s not necessary to make them sequential. You can, and probably should, skip some digits to make future re-ordering simpler. Like 3, 6, 9 etc...";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_571cf231cca90";s:8:"operator";s:2:"==";s:5:"value";s:16:"senior-executive";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1004, 118, 'field_571cf231cca90', 'a:13:{s:3:"key";s:19:"field_571cf231cca90";s:5:"label";s:13:"Team Category";s:4:"name";s:8:"category";s:4:"type";s:5:"radio";s:12:"instructions";s:47:"Which category should this person be placed in?";s:8:"required";s:1:"1";s:7:"choices";a:3:{s:16:"senior-executive";s:16:"Senior Executive";s:19:"property-management";s:19:"Property Management";s:12:"board-member";s:12:"Board Member";}s:12:"other_choice";s:1:"0";s:17:"save_other_choice";s:1:"0";s:13:"default_value";s:0:"";s:6:"layout";s:8:"vertical";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1006, 165, 'orderme', '10'),
(1007, 165, '_orderme', 'field_571cf209cca8f'),
(1008, 165, 'test_field', 'orderme 10'),
(1009, 165, '_test_field', 'field_571cf231cca90'),
(1011, 165, 'order_me', '18'),
(1012, 165, '_order_me', 'field_571cf209cca8f'),
(1015, 164, 'order_me', '15'),
(1016, 164, '_order_me', 'field_571cf209cca8f'),
(1017, 164, 'test_field', ''),
(1018, 164, '_test_field', 'field_571cf231cca90'),
(1019, 163, 'order_me', '12'),
(1020, 163, '_order_me', 'field_571cf209cca8f'),
(1021, 163, 'test_field', ''),
(1022, 163, '_test_field', 'field_571cf231cca90'),
(1023, 162, 'order_me', '9'),
(1024, 162, '_order_me', 'field_571cf209cca8f'),
(1025, 162, 'test_field', ''),
(1026, 162, '_test_field', 'field_571cf231cca90'),
(1027, 161, 'order_me', '3'),
(1028, 161, '_order_me', 'field_571cf209cca8f'),
(1029, 161, 'test_field', ''),
(1030, 161, '_test_field', 'field_571cf231cca90'),
(1032, 165, 'category', 'board-member'),
(1033, 165, '_category', 'field_571cf231cca90'),
(1034, 164, 'category', 'board-member'),
(1035, 164, '_category', 'field_571cf231cca90'),
(1036, 163, 'category', 'board-member'),
(1037, 163, '_category', 'field_571cf231cca90'),
(1038, 162, 'category', 'board-member'),
(1039, 162, '_category', 'field_571cf231cca90'),
(1040, 161, 'category', 'board-member'),
(1041, 161, '_category', 'field_571cf231cca90'),
(1042, 156, 'category', 'property-management'),
(1043, 156, '_category', 'field_571cf231cca90'),
(1044, 156, 'order_me', '33'),
(1045, 156, '_order_me', 'field_571cf209cca8f'),
(1046, 154, 'category', 'property-management'),
(1047, 154, '_category', 'field_571cf231cca90'),
(1048, 154, 'order_me', '30'),
(1049, 154, '_order_me', 'field_571cf209cca8f'),
(1050, 153, 'category', 'property-management'),
(1051, 153, '_category', 'field_571cf231cca90'),
(1052, 153, 'order_me', '27'),
(1053, 153, '_order_me', 'field_571cf209cca8f'),
(1054, 151, 'category', 'property-management'),
(1055, 151, '_category', 'field_571cf231cca90'),
(1056, 151, 'order_me', '24'),
(1057, 151, '_order_me', 'field_571cf209cca8f'),
(1058, 149, 'category', 'property-management'),
(1059, 149, '_category', 'field_571cf231cca90'),
(1060, 149, 'order_me', '21'),
(1061, 149, '_order_me', 'field_571cf209cca8f'),
(1062, 147, 'category', 'property-management'),
(1063, 147, '_category', 'field_571cf231cca90'),
(1064, 147, 'order_me', '18'),
(1065, 147, '_order_me', 'field_571cf209cca8f'),
(1066, 145, 'category', 'property-management'),
(1067, 145, '_category', 'field_571cf231cca90'),
(1068, 145, 'order_me', '15'),
(1069, 145, '_order_me', 'field_571cf209cca8f'),
(1070, 143, 'category', 'property-management'),
(1071, 143, '_category', 'field_571cf231cca90'),
(1072, 143, 'order_me', '12'),
(1073, 143, '_order_me', 'field_571cf209cca8f'),
(1074, 141, 'category', 'property-management'),
(1075, 141, '_category', 'field_571cf231cca90'),
(1076, 141, 'order_me', '9'),
(1077, 141, '_order_me', 'field_571cf209cca8f'),
(1078, 139, 'category', 'property-management'),
(1079, 139, '_category', 'field_571cf231cca90'),
(1080, 139, 'order_me', '6'),
(1081, 139, '_order_me', 'field_571cf209cca8f'),
(1082, 138, 'category', 'property-management'),
(1083, 138, '_category', 'field_571cf231cca90'),
(1084, 138, 'order_me', '3'),
(1085, 138, '_order_me', 'field_571cf209cca8f'),
(1086, 137, 'category', 'senior-executive'),
(1087, 137, '_category', 'field_571cf231cca90'),
(1088, 137, 'order_me', '33'),
(1089, 137, '_order_me', 'field_571cf209cca8f'),
(1090, 135, 'category', 'senior-executive'),
(1091, 135, '_category', 'field_571cf231cca90'),
(1092, 135, 'order_me', '30'),
(1093, 135, '_order_me', 'field_571cf209cca8f'),
(1094, 134, 'category', 'senior-executive'),
(1095, 134, '_category', 'field_571cf231cca90'),
(1096, 134, 'order_me', '27'),
(1097, 134, '_order_me', 'field_571cf209cca8f'),
(1098, 132, 'category', 'senior-executive'),
(1099, 132, '_category', 'field_571cf231cca90'),
(1100, 132, 'order_me', '24'),
(1101, 132, '_order_me', 'field_571cf209cca8f'),
(1102, 131, 'category', 'senior-executive'),
(1103, 131, '_category', 'field_571cf231cca90'),
(1104, 131, 'order_me', '21'),
(1105, 131, '_order_me', 'field_571cf209cca8f'),
(1106, 129, 'category', 'senior-executive'),
(1107, 129, '_category', 'field_571cf231cca90'),
(1108, 129, 'order_me', '18'),
(1109, 129, '_order_me', 'field_571cf209cca8f'),
(1110, 128, 'category', 'senior-executive'),
(1111, 128, '_category', 'field_571cf231cca90'),
(1112, 128, 'order_me', '15'),
(1113, 128, '_order_me', 'field_571cf209cca8f'),
(1114, 127, 'category', 'senior-executive'),
(1115, 127, '_category', 'field_571cf231cca90'),
(1116, 127, 'order_me', '12'),
(1117, 127, '_order_me', 'field_571cf209cca8f'),
(1118, 126, 'category', 'senior-executive'),
(1119, 126, '_category', 'field_571cf231cca90'),
(1120, 126, 'order_me', '9'),
(1121, 126, '_order_me', 'field_571cf209cca8f'),
(1122, 124, 'category', 'senior-executive'),
(1123, 124, '_category', 'field_571cf231cca90'),
(1124, 124, 'order_me', '6'),
(1125, 124, '_order_me', 'field_571cf209cca8f'),
(1126, 122, 'category', 'senior-executive'),
(1127, 122, '_category', 'field_571cf231cca90'),
(1128, 122, 'order_me', '3'),
(1129, 122, '_order_me', 'field_571cf209cca8f'),
(1130, 120, 'category', 'senior-executive'),
(1131, 120, '_category', 'field_571cf231cca90'),
(1132, 120, 'order_me', '1'),
(1133, 120, '_order_me', 'field_571cf209cca8f'),
(1135, 118, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"team-member";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1136, 160, 'category', 'board-member'),
(1137, 160, '_category', 'field_571cf231cca90'),
(1138, 160, 'order_me', '6'),
(1139, 160, '_order_me', 'field_571cf209cca8f'),
(1141, 169, '_wp_attached_file', '2016/02/shutterstock_171334622.jpg'),
(1142, 169, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:690;s:4:"file";s:34:"2016/02/shutterstock_171334622.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_171334622-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_171334622-300x104.jpg";s:5:"width";i:300;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_171334622-768x265.jpg";s:5:"width";i:768;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_171334622-1024x353.jpg";s:5:"width";i:1024;s:6:"height";i:353;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_171334622-800x276.jpg";s:5:"width";i:800;s:6:"height";i:276;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_171334622-1400x483.jpg";s:5:"width";i:1400;s:6:"height";i:483;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:35:"shutterstock_171334622-2000x690.jpg";s:5:"width";i:2000;s:6:"height";i:690;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1143, 170, '_wp_attached_file', '2016/02/shutterstock_279709709.jpg'),
(1144, 170, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2016;s:6:"height";i:1344;s:4:"file";s:34:"2016/02/shutterstock_279709709.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_279709709-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_279709709-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_279709709-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_279709709-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_279709709-800x533.jpg";s:5:"width";i:800;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_279709709-1400x933.jpg";s:5:"width";i:1400;s:6:"height";i:933;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_279709709-2000x1333.jpg";s:5:"width";i:2000;s:6:"height";i:1333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1145, 171, '_wp_attached_file', '2016/02/shutterstock_268449968.jpg'),
(1146, 171, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:689;s:4:"file";s:34:"2016/02/shutterstock_268449968.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_268449968-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_268449968-300x103.jpg";s:5:"width";i:300;s:6:"height";i:103;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_268449968-768x265.jpg";s:5:"width";i:768;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_268449968-1024x353.jpg";s:5:"width";i:1024;s:6:"height";i:353;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_268449968-800x276.jpg";s:5:"width";i:800;s:6:"height";i:276;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_268449968-1400x482.jpg";s:5:"width";i:1400;s:6:"height";i:482;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:35:"shutterstock_268449968-2000x689.jpg";s:5:"width";i:2000;s:6:"height";i:689;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1147, 172, '_wp_attached_file', '2016/02/shutterstock_194129525.jpg'),
(1148, 172, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:690;s:4:"file";s:34:"2016/02/shutterstock_194129525.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_194129525-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_194129525-300x104.jpg";s:5:"width";i:300;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_194129525-768x265.jpg";s:5:"width";i:768;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_194129525-1024x353.jpg";s:5:"width";i:1024;s:6:"height";i:353;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_194129525-800x276.jpg";s:5:"width";i:800;s:6:"height";i:276;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_194129525-1400x483.jpg";s:5:"width";i:1400;s:6:"height";i:483;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:35:"shutterstock_194129525-2000x690.jpg";s:5:"width";i:2000;s:6:"height";i:690;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1149, 173, 'slider_images_0_image', '111'),
(1150, 173, '_slider_images_0_image', 'field_570669ea18290'),
(1151, 173, 'slider_images_1_image', '112'),
(1152, 173, '_slider_images_1_image', 'field_570669ea18290'),
(1153, 173, 'slider_images_2_image', '113'),
(1154, 173, '_slider_images_2_image', 'field_570669ea18290'),
(1155, 173, 'slider_images', '3'),
(1156, 173, '_slider_images', 'field_5706698c1828f'),
(1157, 173, 'content_fields_0_who_we_are_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1158, 173, '_content_fields_0_who_we_are_blurb', 'field_5703a4cc1c74d'),
(1159, 173, 'content_fields_0_who_we_are_hero_image', '169'),
(1160, 173, '_content_fields_0_who_we_are_hero_image', 'field_571f56a9907e8'),
(1161, 173, 'content_fields_0_giving_back_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1162, 173, '_content_fields_0_giving_back_blurb', 'field_5703a5c61c74e'),
(1163, 173, 'content_fields_0_giving_back_hero_image', '170'),
(1164, 173, '_content_fields_0_giving_back_hero_image', 'field_571f5705907e9'),
(1165, 173, 'content_fields_0_careers_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1166, 173, '_content_fields_0_careers_blurb', 'field_5703a5e21c74f'),
(1167, 173, 'content_fields_0_careers_hero_image', '171'),
(1168, 173, '_content_fields_0_careers_hero_image', 'field_571f5726907ea'),
(1169, 173, 'content_fields_0_our_reputation_hero_image', '172'),
(1170, 173, '_content_fields_0_our_reputation_hero_image', 'field_571f5746907eb'),
(1171, 173, 'content_fields_0_our_vision_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1172, 173, '_content_fields_0_our_vision_blurb', 'field_5703a6021c750'),
(1173, 173, 'content_fields_0_our_values_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1174, 173, '_content_fields_0_our_values_blurb', 'field_5703a6131c751'),
(1175, 173, 'content_fields_0_our_reputation_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1176, 173, '_content_fields_0_our_reputation_blurb', 'field_5703a6281c752'),
(1177, 173, 'content_fields', '1'),
(1178, 173, '_content_fields', 'field_5703a49e1c74c'),
(1179, 8, 'content_fields_0_who_we_are_hero_image', '169'),
(1180, 8, '_content_fields_0_who_we_are_hero_image', 'field_571f56a9907e8'),
(1181, 8, 'content_fields_0_giving_back_hero_image', '170'),
(1182, 8, '_content_fields_0_giving_back_hero_image', 'field_571f5705907e9'),
(1183, 8, 'content_fields_0_careers_hero_image', '171'),
(1184, 8, '_content_fields_0_careers_hero_image', 'field_571f5726907ea'),
(1185, 8, 'content_fields_0_our_reputation_hero_image', '172'),
(1186, 8, '_content_fields_0_our_reputation_hero_image', 'field_571f5746907eb'),
(1189, 174, '_menu_item_type', 'custom'),
(1190, 174, '_menu_item_menu_item_parent', '0'),
(1191, 174, '_menu_item_object_id', '174'),
(1192, 174, '_menu_item_object', 'custom'),
(1193, 174, '_menu_item_target', ''),
(1194, 174, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1195, 174, '_menu_item_xfn', ''),
(1196, 174, '_menu_item_url', 'https://basalt.peopleanswers.com/pa/testPortalEntry.do?pc=992507&src=185087'),
(1207, 176, '_menu_item_type', 'custom'),
(1208, 176, '_menu_item_menu_item_parent', '229'),
(1209, 176, '_menu_item_object_id', '176'),
(1210, 176, '_menu_item_object', 'custom'),
(1211, 176, '_menu_item_target', ''),
(1212, 176, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1213, 176, '_menu_item_xfn', ''),
(1214, 176, '_menu_item_url', '#0'),
(1216, 177, '_menu_item_type', 'custom'),
(1217, 177, '_menu_item_menu_item_parent', '7'),
(1218, 177, '_menu_item_object_id', '177'),
(1219, 177, '_menu_item_object', 'custom'),
(1220, 177, '_menu_item_target', ''),
(1221, 177, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1222, 177, '_menu_item_xfn', ''),
(1223, 177, '_menu_item_url', 'http://www.cottonwoodres.com/user'),
(1225, 178, '_menu_item_type', 'custom'),
(1226, 178, '_menu_item_menu_item_parent', '7'),
(1227, 178, '_menu_item_object_id', '178'),
(1228, 178, '_menu_item_object', 'custom'),
(1229, 178, '_menu_item_target', ''),
(1230, 178, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1231, 178, '_menu_item_xfn', ''),
(1232, 178, '_menu_item_url', 'http://employee.cottonwoodres.com/'),
(1234, 179, '_menu_item_type', 'post_type'),
(1235, 179, '_menu_item_menu_item_parent', '0'),
(1236, 179, '_menu_item_object_id', '46'),
(1237, 179, '_menu_item_object', 'page'),
(1238, 179, '_menu_item_target', ''),
(1239, 179, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1240, 179, '_menu_item_xfn', ''),
(1241, 179, '_menu_item_url', ''),
(1242, 181, '_wp_attached_file', '2016/02/Alicante-1.jpg'),
(1243, 181, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1333;s:4:"file";s:22:"2016/02/Alicante-1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Alicante-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Alicante-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Alicante-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Alicante-1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:22:"Alicante-1-800x533.jpg";s:5:"width";i:800;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:23:"Alicante-1-1400x933.jpg";s:5:"width";i:1400;s:6:"height";i:933;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:24:"Alicante-1-2000x1333.jpg";s:5:"width";i:2000;s:6:"height";i:1333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1244, 182, '_wp_attached_file', '2016/02/Alicante.jpg'),
(1245, 182, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1333;s:4:"file";s:20:"2016/02/Alicante.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Alicante-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Alicante-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Alicante-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"Alicante-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:20:"Alicante-800x533.jpg";s:5:"width";i:800;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:21:"Alicante-1400x933.jpg";s:5:"width";i:1400;s:6:"height";i:933;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:22:"Alicante-2000x1333.jpg";s:5:"width";i:2000;s:6:"height";i:1333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1246, 183, '_wp_attached_file', '2016/02/Enclave-on-Golden-Triangle.jpg'),
(1247, 183, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1336;s:4:"file";s:38:"2016/02/Enclave-on-Golden-Triangle.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"Enclave-on-Golden-Triangle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"Enclave-on-Golden-Triangle-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"Enclave-on-Golden-Triangle-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"Enclave-on-Golden-Triangle-1024x684.jpg";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:38:"Enclave-on-Golden-Triangle-800x534.jpg";s:5:"width";i:800;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:39:"Enclave-on-Golden-Triangle-1400x935.jpg";s:5:"width";i:1400;s:6:"height";i:935;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:40:"Enclave-on-Golden-Triangle-2000x1336.jpg";s:5:"width";i:2000;s:6:"height";i:1336;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1248, 184, '_wp_attached_file', '2016/02/HeightsMeridian_Pool_37_72ppi.jpg'),
(1249, 184, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1798;s:6:"height";i:1200;s:4:"file";s:41:"2016/02/HeightsMeridian_Pool_37_72ppi.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"HeightsMeridian_Pool_37_72ppi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"HeightsMeridian_Pool_37_72ppi-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:41:"HeightsMeridian_Pool_37_72ppi-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:42:"HeightsMeridian_Pool_37_72ppi-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:41:"HeightsMeridian_Pool_37_72ppi-800x534.jpg";s:5:"width";i:800;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:42:"HeightsMeridian_Pool_37_72ppi-1400x934.jpg";s:5:"width";i:1400;s:6:"height";i:934;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1250, 185, '_wp_attached_file', '2016/02/Highland-Park.jpg'),
(1251, 185, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1333;s:4:"file";s:25:"2016/02/Highland-Park.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Highland-Park-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Highland-Park-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Highland-Park-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Highland-Park-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:25:"Highland-Park-800x533.jpg";s:5:"width";i:800;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:26:"Highland-Park-1400x933.jpg";s:5:"width";i:1400;s:6:"height";i:933;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:27:"Highland-Park-2000x1333.jpg";s:5:"width";i:2000;s:6:"height";i:1333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1252, 186, '_wp_attached_file', '2016/02/Regatta.jpg'),
(1253, 186, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1333;s:4:"file";s:19:"2016/02/Regatta.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Regatta-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"Regatta-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"Regatta-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"Regatta-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:19:"Regatta-800x533.jpg";s:5:"width";i:800;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:20:"Regatta-1400x933.jpg";s:5:"width";i:1400;s:6:"height";i:933;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:21:"Regatta-2000x1333.jpg";s:5:"width";i:2000;s:6:"height";i:1333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1254, 187, 'slider_images_0_image', '181'),
(1255, 187, '_slider_images_0_image', 'field_570669ea18290'),
(1256, 187, 'slider_images_1_image', '182'),
(1257, 187, '_slider_images_1_image', 'field_570669ea18290'),
(1258, 187, 'slider_images_2_image', '183'),
(1259, 187, '_slider_images_2_image', 'field_570669ea18290'),
(1260, 187, 'slider_images_3_image', '184'),
(1261, 187, '_slider_images_3_image', 'field_570669ea18290'),
(1262, 187, 'slider_images_4_image', '185'),
(1263, 187, '_slider_images_4_image', 'field_570669ea18290'),
(1264, 187, 'slider_images_5_image', '186'),
(1265, 187, '_slider_images_5_image', 'field_570669ea18290'),
(1266, 187, 'slider_images', '6'),
(1267, 187, '_slider_images', 'field_5706698c1828f'),
(1268, 187, 'content_fields_0_who_we_are_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1269, 187, '_content_fields_0_who_we_are_blurb', 'field_5703a4cc1c74d'),
(1270, 187, 'content_fields_0_giving_back_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1271, 187, '_content_fields_0_giving_back_blurb', 'field_5703a5c61c74e'),
(1272, 187, 'content_fields_0_careers_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1273, 187, '_content_fields_0_careers_blurb', 'field_5703a5e21c74f'),
(1274, 187, 'content_fields_0_our_vision_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1275, 187, '_content_fields_0_our_vision_blurb', 'field_5703a6021c750'),
(1276, 187, 'content_fields_0_our_values_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1277, 187, '_content_fields_0_our_values_blurb', 'field_5703a6131c751'),
(1278, 187, 'content_fields_0_our_reputation_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1279, 187, '_content_fields_0_our_reputation_blurb', 'field_5703a6281c752'),
(1280, 187, 'content_fields', '1'),
(1281, 187, '_content_fields', 'field_5703a49e1c74c'),
(1282, 8, 'slider_images_3_image', '184'),
(1283, 8, '_slider_images_3_image', 'field_570669ea18290'),
(1284, 8, 'slider_images_4_image', '185'),
(1285, 8, '_slider_images_4_image', 'field_570669ea18290'),
(1286, 8, 'slider_images_5_image', '186'),
(1287, 8, '_slider_images_5_image', 'field_570669ea18290'),
(1288, 32, '_edit_lock', '1464261450:1'),
(1291, 189, '_edit_lock', '1463600695:1'),
(1292, 189, '_edit_last', '1');
INSERT INTO `wp_20_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1293, 189, 'field_573c79e47a60f', 'a:13:{s:3:"key";s:19:"field_573c79e47a60f";s:5:"label";s:12:"Page Content";s:4:"name";s:12:"page_content";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:11:{i:0;a:12:{s:3:"key";s:19:"field_573cc0cc88bf4";s:5:"label";s:10:"Hero Image";s:4:"name";s:10:"hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:14:{s:3:"key";s:19:"field_573c7a417a610";s:5:"label";s:10:"Hero Blurb";s:4:"name";s:10:"hero_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}i:2;a:14:{s:3:"key";s:19:"field_573c7a687a611";s:5:"label";s:17:"Section Two Blurb";s:4:"name";s:17:"section_two_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}i:3;a:12:{s:3:"key";s:19:"field_573cc0ee88bf5";s:5:"label";s:24:"Section Three Hero Image";s:4:"name";s:24:"section_three_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}i:4;a:15:{s:3:"key";s:19:"field_573c7ab07a613";s:5:"label";s:25:"Section Three Button Text";s:4:"name";s:25:"section_three_button_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}i:5;a:14:{s:3:"key";s:19:"field_573c7a927a612";s:5:"label";s:19:"Section Three Blurb";s:4:"name";s:19:"section_three_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}i:6;a:12:{s:3:"key";s:19:"field_573cc11c88bf6";s:5:"label";s:23:"Section Four Hero Image";s:4:"name";s:23:"section_four_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}i:7;a:12:{s:3:"key";s:19:"field_573cc16988bf7";s:5:"label";s:23:"Section Five Hero Image";s:4:"name";s:23:"section_five_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}i:8;a:15:{s:3:"key";s:19:"field_573c7aed7a615";s:5:"label";s:24:"Section Five Button Text";s:4:"name";s:24:"section_five_button_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}i:9;a:14:{s:3:"key";s:19:"field_573c7add7a614";s:5:"label";s:18:"Section Five Blurb";s:4:"name";s:18:"section_five_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}i:10;a:12:{s:3:"key";s:19:"field_573cc18088bf8";s:5:"label";s:22:"Section Six Hero Image";s:4:"name";s:22:"section_six_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}}s:7:"row_min";s:1:"1";s:9:"row_limit";s:1:"1";s:6:"layout";s:3:"row";s:12:"button_label";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1295, 189, 'position', 'normal'),
(1296, 189, 'layout', 'no_box'),
(1297, 189, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(1298, 190, 'page_content_0_hero_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1299, 190, '_page_content_0_hero_blurb', 'field_573c7a417a610'),
(1300, 190, 'page_content_0_section_two_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1301, 190, '_page_content_0_section_two_blurb', 'field_573c7a687a611'),
(1302, 190, 'page_content_0_section_three_button_text', 'button text'),
(1303, 190, '_page_content_0_section_three_button_text', 'field_573c7ab07a613'),
(1304, 190, 'page_content_0_section_three_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1305, 190, '_page_content_0_section_three_blurb', 'field_573c7a927a612'),
(1306, 190, 'page_content_0_section_four_button_text', 'button text'),
(1307, 190, '_page_content_0_section_four_button_text', 'field_573c7aed7a615'),
(1308, 190, 'page_content_0_section_four_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1309, 190, '_page_content_0_section_four_blurb', 'field_573c7add7a614'),
(1310, 190, 'page_content', '1'),
(1311, 190, '_page_content', 'field_573c79e47a60f'),
(1312, 32, 'page_content_0_hero_blurb', 'Cottonwood Residential’s service-oriented and people-focused approach to multifamily residential living often gives new residents and employees a welcomed pause because we are not fixated on corporate jargon and financials. Rather, our goal is to produce the feeling of coming home.'),
(1313, 32, '_page_content_0_hero_blurb', 'field_573c7a417a610'),
(1314, 32, 'page_content_0_section_two_blurb', 'People have noticed we’re different, and the numbers speak for themselves. As a fully integrated real estate investment trust (REIT), Cottonwood Residential now owns and/or manages nearly 22,000 multifamily units in 17 states, Cottonwood Residential has taken over as the Asset and Property Manager for several multifamily syndicators, including DBSI, DeSanto, Eliason, Sagebrush, RealSource, TIC Properties, Daymark/Triple Net Realty and MSI/Jacobson. \r\n\r\nCottonwood Residential is proud to welcome its residents and employees home at last, providing exceptional service, competitive locations and sophisticated amenities. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies. Welcome home. Please, kick off your shoes and stay a while, because you are home at last.'),
(1315, 32, '_page_content_0_section_two_blurb', 'field_573c7a687a611'),
(1316, 32, 'page_content_0_section_three_button_text', 'warm welcome, cool vibe'),
(1317, 32, '_page_content_0_section_three_button_text', 'field_573c7ab07a613'),
(1318, 32, 'page_content_0_section_three_blurb', 'With charming garden-style complexes in prominent, high-growth areas, Cottonwood Residential is your first step in creating a home that boasts location, career and comfort. We outfit our crisp, clean apartments with elegant finishes. Our grounds flaunt exquisite landscaping and alluring amenities such as sparkling pools and well-equipped fitness centers.'),
(1319, 32, '_page_content_0_section_three_blurb', 'field_573c7a927a612'),
(1320, 32, 'page_content_0_section_four_button_text', 'contemporary comforts'),
(1321, 32, '_page_content_0_section_four_button_text', 'field_573c7aed7a615'),
(1322, 32, 'page_content_0_section_four_blurb', 'Cottonwood Residential encourages modern, simple living. We understand that you manage a majority of your life online, and our websites, apps and social media presence further streamline your apartment-living experience. Your satisfaction is our priority, so we are a listening company always asking, “How can we say yes?”'),
(1323, 32, '_page_content_0_section_four_blurb', 'field_573c7add7a614'),
(1324, 32, 'page_content', '1'),
(1325, 32, '_page_content', 'field_573c79e47a60f'),
(1326, 191, '_edit_lock', '1463601406:1'),
(1327, 191, '_edit_last', '1'),
(1328, 191, 'field_573c8105d1a11', 'a:13:{s:3:"key";s:19:"field_573c8105d1a11";s:5:"label";s:12:"Page Content";s:4:"name";s:12:"page_content";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:10:{i:0;a:12:{s:3:"key";s:19:"field_573cc6d731d7a";s:5:"label";s:10:"Hero Image";s:4:"name";s:10:"hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:14:{s:3:"key";s:19:"field_573c8118d1a12";s:5:"label";s:10:"Hero Blurb";s:4:"name";s:10:"hero_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"3";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}i:2;a:12:{s:3:"key";s:19:"field_573cc70e31d7b";s:5:"label";s:22:"Section Two Hero Image";s:4:"name";s:22:"section_two_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}i:3;a:15:{s:3:"key";s:19:"field_573c8157d1a13";s:5:"label";s:23:"Section Two Button Text";s:4:"name";s:23:"section_two_button_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}i:4;a:14:{s:3:"key";s:19:"field_573c818fd1a14";s:5:"label";s:17:"Section Two Blurb";s:4:"name";s:17:"section_two_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}i:5;a:12:{s:3:"key";s:19:"field_573cc73c31d7c";s:5:"label";s:24:"Section Three Hero Image";s:4:"name";s:24:"section_three_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}i:6;a:15:{s:3:"key";s:19:"field_573c81b2d1a15";s:5:"label";s:25:"Section Three Button Text";s:4:"name";s:25:"section_three_button_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}i:7;a:12:{s:3:"key";s:19:"field_573cc75831d7d";s:5:"label";s:23:"Section Four Hero Image";s:4:"name";s:23:"section_four_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}i:8;a:15:{s:3:"key";s:19:"field_573c81d4d1a16";s:5:"label";s:24:"Section Four Button Text";s:4:"name";s:24:"section_four_button_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}i:9;a:14:{s:3:"key";s:19:"field_573c8254d1a17";s:5:"label";s:18:"Section Four Blurb";s:4:"name";s:18:"section_four_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}}s:7:"row_min";s:1:"1";s:9:"row_limit";s:1:"1";s:6:"layout";s:3:"row";s:12:"button_label";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1330, 191, 'position', 'normal'),
(1331, 191, 'layout', 'no_box'),
(1332, 191, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(1333, 34, '_edit_lock', '1464261490:1'),
(1334, 192, 'page_content_0_hero_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1335, 192, '_page_content_0_hero_blurb', 'field_573c8118d1a12'),
(1336, 192, 'page_content_0_section_two_button_text', 'Button Text'),
(1337, 192, '_page_content_0_section_two_button_text', 'field_573c8157d1a13'),
(1338, 192, 'page_content_0_section_two_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1339, 192, '_page_content_0_section_two_blurb', 'field_573c818fd1a14'),
(1340, 192, 'page_content_0_section_three_button_text', 'Button Text'),
(1341, 192, '_page_content_0_section_three_button_text', 'field_573c81b2d1a15'),
(1342, 192, 'page_content_0_section_four_button_text', 'Button Text'),
(1343, 192, '_page_content_0_section_four_button_text', 'field_573c81d4d1a16'),
(1344, 192, 'page_content_0_section_four_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1345, 192, '_page_content_0_section_four_blurb', 'field_573c8254d1a17'),
(1346, 192, 'page_content', '1'),
(1347, 192, '_page_content', 'field_573c8105d1a11'),
(1348, 34, 'page_content_0_hero_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1349, 34, '_page_content_0_hero_blurb', 'field_573c8118d1a12'),
(1350, 34, 'page_content_0_section_two_button_text', 'Button Text'),
(1351, 34, '_page_content_0_section_two_button_text', 'field_573c8157d1a13'),
(1352, 34, 'page_content_0_section_two_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1353, 34, '_page_content_0_section_two_blurb', 'field_573c818fd1a14'),
(1354, 34, 'page_content_0_section_three_button_text', 'Button Text'),
(1355, 34, '_page_content_0_section_three_button_text', 'field_573c81b2d1a15'),
(1356, 34, 'page_content_0_section_four_button_text', 'Button Text'),
(1357, 34, '_page_content_0_section_four_button_text', 'field_573c81d4d1a16'),
(1358, 34, 'page_content_0_section_four_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1359, 34, '_page_content_0_section_four_blurb', 'field_573c8254d1a17'),
(1360, 34, 'page_content', '1'),
(1361, 34, '_page_content', 'field_573c8105d1a11'),
(1362, 193, 'slider_images_0_image', '181'),
(1363, 193, '_slider_images_0_image', 'field_570669ea18290'),
(1364, 193, 'slider_images_1_image', '182'),
(1365, 193, '_slider_images_1_image', 'field_570669ea18290'),
(1366, 193, 'slider_images_2_image', '183'),
(1367, 193, '_slider_images_2_image', 'field_570669ea18290'),
(1368, 193, 'slider_images_3_image', '184'),
(1369, 193, '_slider_images_3_image', 'field_570669ea18290'),
(1370, 193, 'slider_images_4_image', '185'),
(1371, 193, '_slider_images_4_image', 'field_570669ea18290'),
(1372, 193, 'slider_images_5_image', '186'),
(1373, 193, '_slider_images_5_image', 'field_570669ea18290'),
(1374, 193, 'slider_images', '6'),
(1375, 193, '_slider_images', 'field_5706698c1828f'),
(1376, 193, 'content_fields_0_who_we_are_blurb', 'Cottonwood Residential is your home at last. With prime locations and upgraded amenities, we are the place where you work hard and play harder. Our residents are friendly, and our employees are committed to superior service and finding a way to say “yes.” Welcome home to your happy place.'),
(1377, 193, '_content_fields_0_who_we_are_blurb', 'field_5703a4cc1c74d'),
(1378, 193, 'content_fields_0_giving_back_blurb', 'We work where we live. We’re a part of the areas and communities where we live.'),
(1379, 193, '_content_fields_0_giving_back_blurb', 'field_5703a5c61c74e'),
(1380, 193, 'content_fields_0_careers_blurb', 'If you want a fulfilling, uplifting, high-potential career that is less about work and more about people, warmth and fun, then welcome home. At Cottonwood Residential, we invite you into our wild and crazy family, where we treat our employees like guests in our own homes.'),
(1381, 193, '_content_fields_0_careers_blurb', 'field_5703a5e21c74f'),
(1382, 193, 'content_fields_0_our_vision_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1383, 193, '_content_fields_0_our_vision_blurb', 'field_5703a6021c750'),
(1384, 193, 'content_fields_0_our_values_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1385, 193, '_content_fields_0_our_values_blurb', 'field_5703a6131c751'),
(1386, 193, 'content_fields_0_our_reputation_blurb', 'Spectacular service is at the heart of Cottonwood Residential, and our sincere commitment to our residents, employees and investors shows. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies.'),
(1387, 193, '_content_fields_0_our_reputation_blurb', 'field_5703a6281c752'),
(1388, 193, 'content_fields', '1'),
(1389, 193, '_content_fields', 'field_5703a49e1c74c'),
(1390, 194, '_edit_lock', '1463598377:1'),
(1391, 194, '_edit_last', '1'),
(1392, 194, 'field_573c8c79468e8', 'a:13:{s:3:"key";s:19:"field_573c8c79468e8";s:5:"label";s:12:"Page Content";s:4:"name";s:12:"page_content";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:2:{i:0;a:12:{s:3:"key";s:19:"field_573cbcb25a460";s:5:"label";s:10:"Hero Image";s:4:"name";s:10:"hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:14:{s:3:"key";s:19:"field_573c8c8a468e9";s:5:"label";s:10:"Hero Blurb";s:4:"name";s:10:"hero_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}}s:7:"row_min";s:1:"1";s:9:"row_limit";s:1:"1";s:6:"layout";s:3:"row";s:12:"button_label";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1394, 194, 'position', 'normal'),
(1395, 194, 'layout', 'no_box'),
(1396, 194, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(1397, 30, '_edit_lock', '1463598424:1'),
(1398, 195, 'page_content_0_hero_blurb', 'Formerly known as Cottonwood Capital, Cottonwood Residential launched in 2004 and operates as a fully integrated real estate investment trust (REIT). Managing nearly 21,000 multifamily units in 17 states, Cottonwood Residential has taken over as the Asset and Property Manager for several multifamily syndicators, including DBSI, DeSanto, Eliason, Sagebrush, RealSource, TIC Properties, Daymark/Triple Net Realty and MSI/Jacobson. \r\n\r\nCottonwood Residential is proud to welcome its residents and employees home at last, providing exceptional service, competitive locations and sophisticated amenities. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies. Welcome home.'),
(1399, 195, '_page_content_0_hero_blurb', 'field_573c8c8a468e9'),
(1400, 195, 'page_content', '1'),
(1401, 195, '_page_content', 'field_573c8c79468e8'),
(1402, 30, 'page_content_0_hero_blurb', 'Formerly known as Cottonwood Capital, Cottonwood Residential launched in 2004 and operates as a fully integrated real estate investment trust (REIT). Managing nearly 21,000 multifamily units in 17 states, Cottonwood Residential has taken over as the Asset and Property Manager for several multifamily syndicators, including DBSI, DeSanto, Eliason, Sagebrush, RealSource, TIC Properties, Daymark/Triple Net Realty and MSI/Jacobson. \r\n\r\nCottonwood Residential is proud to welcome its residents and employees home at last, providing exceptional service, competitive locations and sophisticated amenities. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies. Welcome home.'),
(1403, 30, '_page_content_0_hero_blurb', 'field_573c8c8a468e9'),
(1404, 30, 'page_content', '1'),
(1405, 30, '_page_content', 'field_573c8c79468e8'),
(1406, 196, 'page_content_0_hero_blurb', 'Cottonwood Residential’s service-oriented and people-focused approach to multifamily residential living often gives new residents and employees a welcomed pause because we are not fixated on corporate jargon and financials. Rather, our goal is to produce the feeling of coming home.'),
(1407, 196, '_page_content_0_hero_blurb', 'field_573c7a417a610'),
(1408, 196, 'page_content_0_section_two_blurb', 'People have noticed we’re different, and the numbers speak for themselves. As a fully integrated real estate investment trust (REIT), Cottonwood Residential now owns and/or manages nearly 22,000 multifamily units in 17states. Please, kick off your shoes and stay a while, because you are home at last.'),
(1409, 196, '_page_content_0_section_two_blurb', 'field_573c7a687a611'),
(1410, 196, 'page_content_0_section_three_button_text', 'WARM WELCOME, COOL VIBE'),
(1411, 196, '_page_content_0_section_three_button_text', 'field_573c7ab07a613'),
(1412, 196, 'page_content_0_section_three_blurb', 'With charming garden-style complexes in prominent, high-growth areas, Cottonwood Residential is your first step in creating a home that boasts location, career and comfort. We outfit our crisp, clean apartments with elegant finishes. Our grounds flaunt exquisite landscaping and alluring amenities such as sparkling pools and well-equipped fitness centers.'),
(1413, 196, '_page_content_0_section_three_blurb', 'field_573c7a927a612'),
(1414, 196, 'page_content_0_section_four_button_text', 'CONTEMPORARY COMFORTS'),
(1415, 196, '_page_content_0_section_four_button_text', 'field_573c7aed7a615'),
(1416, 196, 'page_content_0_section_four_blurb', 'Cottonwood Residential encourages modern, simple living. We understand that you manage a majority of your life online, and our websites, apps and social media presence further streamline your apartment-living experience. Your satisfaction is our priority, so we are a listening company always asking, “How can we say yes?”'),
(1417, 196, '_page_content_0_section_four_blurb', 'field_573c7add7a614'),
(1418, 196, 'page_content', '1'),
(1419, 196, '_page_content', 'field_573c79e47a60f'),
(1420, 36, '_edit_lock', '1464261551:1'),
(1421, 197, '_edit_lock', '1463601991:1'),
(1422, 197, '_edit_last', '1'),
(1423, 197, 'field_573c93a00b77d', 'a:13:{s:3:"key";s:19:"field_573c93a00b77d";s:5:"label";s:12:"Page Content";s:4:"name";s:12:"page_content";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:6:{i:0;a:12:{s:3:"key";s:19:"field_573cc99898f63";s:5:"label";s:10:"Hero Image";s:4:"name";s:10:"hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:14:{s:3:"key";s:19:"field_573c93b60b77e";s:5:"label";s:10:"Hero Blurb";s:4:"name";s:10:"hero_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}i:2;a:14:{s:3:"key";s:19:"field_573c93cd0b77f";s:5:"label";s:17:"Mission Statement";s:4:"name";s:17:"mission_statement";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}i:3;a:12:{s:3:"key";s:19:"field_573cc9cf98f64";s:5:"label";s:24:"Section Three Hero Image";s:4:"name";s:24:"section_three_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}i:4;a:12:{s:3:"key";s:19:"field_573cc9fc98f65";s:5:"label";s:24:"Meet Our Team Hero Image";s:4:"name";s:24:"meet_our_team_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}i:5;a:14:{s:3:"key";s:19:"field_573c93ed0b780";s:5:"label";s:19:"Meet Our Team Blurb";s:4:"name";s:19:"meet_our_team_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}}s:7:"row_min";s:1:"1";s:9:"row_limit";s:1:"1";s:6:"layout";s:3:"row";s:12:"button_label";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1425, 197, 'position', 'normal'),
(1426, 197, 'layout', 'no_box'),
(1427, 197, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(1428, 198, 'page_content_0_hero_blurb', 'In addition to our focus on excellent service, Cottonwood Residential provides unsurpassed expertise in asset and property management. Our robust capabilities in the financial, construction and legal aspects of Tenants in Common multifamily ownership have greatly contributed to the value we create for residents, investors and employees.'),
(1429, 198, '_page_content_0_hero_blurb', 'field_573c93b60b77e'),
(1430, 198, 'page_content_0_mission_statement', 'At Cottonwood Residential, our mission is to deliver long-term value to investors, residents and employees.'),
(1431, 198, '_page_content_0_mission_statement', 'field_573c93cd0b77f'),
(1432, 198, 'page_content_0_meet_our_team_blurb', 'Cottonwood Residential boasts nearly 600 friendly, talented and hard-working team members who manage approximately 80 properties. With high growth potential, a fun atmosphere and even handwritten notes at times, we welcome our employees home at last.'),
(1433, 198, '_page_content_0_meet_our_team_blurb', 'field_573c93ed0b780'),
(1434, 198, 'page_content', '1'),
(1435, 198, '_page_content', 'field_573c93a00b77d'),
(1436, 36, 'page_content_0_hero_blurb', 'In addition to our focus on excellent service, Cottonwood Residential provides unsurpassed expertise in asset and property management. Our robust capabilities in the financial, construction and legal aspects of Tenants in Common multifamily ownership have greatly contributed to the value we create for residents, investors and employees.'),
(1437, 36, '_page_content_0_hero_blurb', 'field_573c93b60b77e'),
(1438, 36, 'page_content_0_mission_statement', 'At Cottonwood Residential, our mission is to deliver long-term value to investors, residents and employees.'),
(1439, 36, '_page_content_0_mission_statement', 'field_573c93cd0b77f'),
(1440, 36, 'page_content_0_meet_our_team_blurb', 'Cottonwood Residential boasts nearly 600 friendly, talented and hard-working team members who manage approximately 80 properties. With high growth potential, a fun atmosphere and even handwritten notes at times, we welcome our employees home at last.'),
(1441, 36, '_page_content_0_meet_our_team_blurb', 'field_573c93ed0b780'),
(1442, 36, 'page_content', '1'),
(1443, 36, '_page_content', 'field_573c93a00b77d'),
(1444, 199, '_edit_lock', '1463602154:1'),
(1445, 199, '_edit_last', '1'),
(1446, 199, 'field_573c952b30ebf', 'a:13:{s:3:"key";s:19:"field_573c952b30ebf";s:5:"label";s:12:"Page Content";s:4:"name";s:12:"page_content";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:2:{i:0;a:12:{s:3:"key";s:19:"field_573ccbe564f80";s:5:"label";s:10:"Hero Image";s:4:"name";s:10:"hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:14:{s:3:"key";s:19:"field_573c954630ec0";s:5:"label";s:10:"Hero Blurb";s:4:"name";s:10:"hero_blurb";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}}s:7:"row_min";s:1:"1";s:9:"row_limit";s:1:"1";s:6:"layout";s:3:"row";s:12:"button_label";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1448, 199, 'position', 'normal'),
(1449, 199, 'layout', 'no_box'),
(1450, 199, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(1451, 38, '_edit_lock', '1464261651:1'),
(1452, 200, 'page_content_0_hero_blurb', 'The Cottonwood Residential executive team showcases outstanding talent, expertise and leadership in the multifamily and property management industries. Our leaders have passionately guided Cottonwood Residential to a reputation of spectacular service and impressive growth. They have led us home at last.'),
(1453, 200, '_page_content_0_hero_blurb', 'field_573c954630ec0'),
(1454, 200, 'page_content', '1'),
(1455, 200, '_page_content', 'field_573c952b30ebf'),
(1456, 38, 'page_content_0_hero_blurb', 'The Cottonwood Residential executive team showcases outstanding talent, expertise and leadership in the multifamily and property management industries. Our leaders have passionately guided Cottonwood Residential to a reputation of spectacular service and impressive growth. They have led us home at last.'),
(1457, 38, '_page_content_0_hero_blurb', 'field_573c954630ec0'),
(1458, 38, 'page_content', '1'),
(1459, 38, '_page_content', 'field_573c952b30ebf'),
(1460, 201, 'page_content_0_hero_blurb', 'Cottonwood Residential’s service-oriented and people-focused approach to multifamily residential living often gives new residents and employees a welcomed pause because we are not fixated on corporate jargon and financials. Rather, our goal is to produce the feeling of coming home.'),
(1461, 201, '_page_content_0_hero_blurb', 'field_573c7a417a610'),
(1462, 201, 'page_content_0_section_two_blurb', 'People have noticed we’re different, and the numbers speak for themselves. As a fully integrated real estate investment trust (REIT), Cottonwood Residential now owns and/or manages nearly 22,000 multifamily units in 17states. Please, kick off your shoes and stay a while, because you are home at last.'),
(1463, 201, '_page_content_0_section_two_blurb', 'field_573c7a687a611'),
(1464, 201, 'page_content_0_section_three_button_text', 'warm welcome, cool vibe'),
(1465, 201, '_page_content_0_section_three_button_text', 'field_573c7ab07a613'),
(1466, 201, 'page_content_0_section_three_blurb', 'With charming garden-style complexes in prominent, high-growth areas, Cottonwood Residential is your first step in creating a home that boasts location, career and comfort. We outfit our crisp, clean apartments with elegant finishes. Our grounds flaunt exquisite landscaping and alluring amenities such as sparkling pools and well-equipped fitness centers.'),
(1467, 201, '_page_content_0_section_three_blurb', 'field_573c7a927a612'),
(1468, 201, 'page_content_0_section_four_button_text', 'contemporary comforts'),
(1469, 201, '_page_content_0_section_four_button_text', 'field_573c7aed7a615'),
(1470, 201, 'page_content_0_section_four_blurb', 'Cottonwood Residential encourages modern, simple living. We understand that you manage a majority of your life online, and our websites, apps and social media presence further streamline your apartment-living experience. Your satisfaction is our priority, so we are a listening company always asking, “How can we say yes?”'),
(1471, 201, '_page_content_0_section_four_blurb', 'field_573c7add7a614'),
(1472, 201, 'page_content', '1'),
(1473, 201, '_page_content', 'field_573c79e47a60f'),
(1479, 203, 'slider_images_0_image', '181'),
(1480, 203, '_slider_images_0_image', 'field_570669ea18290'),
(1481, 203, 'slider_images_1_image', '182'),
(1482, 203, '_slider_images_1_image', 'field_570669ea18290'),
(1483, 203, 'slider_images_2_image', '183'),
(1484, 203, '_slider_images_2_image', 'field_570669ea18290'),
(1485, 203, 'slider_images_3_image', '184'),
(1486, 203, '_slider_images_3_image', 'field_570669ea18290'),
(1487, 203, 'slider_images_4_image', '185'),
(1488, 203, '_slider_images_4_image', 'field_570669ea18290'),
(1489, 203, 'slider_images_5_image', '186'),
(1490, 203, '_slider_images_5_image', 'field_570669ea18290'),
(1491, 203, 'slider_images', '6'),
(1492, 203, '_slider_images', 'field_5706698c1828f'),
(1493, 203, 'content_fields_0_who_we_are_hero', '202'),
(1494, 203, '_content_fields_0_who_we_are_hero', 'field_573ca3723b211'),
(1495, 203, 'content_fields_0_who_we_are_blurb', 'Cottonwood Residential is your home at last. With prime locations and upgraded amenities, we are the place where you work hard and play harder. Our residents are friendly, and our employees are committed to superior service and finding a way to say “yes.” Welcome home to your happy place.'),
(1496, 203, '_content_fields_0_who_we_are_blurb', 'field_5703a4cc1c74d'),
(1497, 203, 'content_fields_0_giving_back_blurb', 'We work where we live. We’re a part of the areas and communities where we live.'),
(1498, 203, '_content_fields_0_giving_back_blurb', 'field_5703a5c61c74e'),
(1499, 203, 'content_fields_0_careers_blurb', 'If you want a fulfilling, uplifting, high-potential career that is less about work and more about people, warmth and fun, then welcome home. At Cottonwood Residential, we invite you into our wild and crazy family, where we treat our employees like guests in our own homes.'),
(1500, 203, '_content_fields_0_careers_blurb', 'field_5703a5e21c74f'),
(1501, 203, 'content_fields_0_our_vision_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1502, 203, '_content_fields_0_our_vision_blurb', 'field_5703a6021c750'),
(1503, 203, 'content_fields_0_our_values_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1504, 203, '_content_fields_0_our_values_blurb', 'field_5703a6131c751'),
(1505, 203, 'content_fields_0_our_reputation_blurb', 'Spectacular service is at the heart of Cottonwood Residential, and our sincere commitment to our residents, employees and investors shows. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies.'),
(1506, 203, '_content_fields_0_our_reputation_blurb', 'field_5703a6281c752'),
(1507, 203, 'content_fields', '1'),
(1508, 203, '_content_fields', 'field_5703a49e1c74c'),
(1509, 8, 'content_fields_0_who_we_are_hero', '204'),
(1510, 8, '_content_fields_0_who_we_are_hero', 'field_573ca3723b211'),
(1512, 204, '_wp_attached_file', '2016/02/who-we-are-hero.jpg'),
(1513, 204, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1333;s:4:"file";s:27:"2016/02/who-we-are-hero.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"who-we-are-hero-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"who-we-are-hero-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"who-we-are-hero-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"who-we-are-hero-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:27:"who-we-are-hero-800x533.jpg";s:5:"width";i:800;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:28:"who-we-are-hero-1400x933.jpg";s:5:"width";i:1400;s:6:"height";i:933;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:29:"who-we-are-hero-2000x1333.jpg";s:5:"width";i:2000;s:6:"height";i:1333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1514, 205, 'slider_images_0_image', '181'),
(1515, 205, '_slider_images_0_image', 'field_570669ea18290'),
(1516, 205, 'slider_images_1_image', '182'),
(1517, 205, '_slider_images_1_image', 'field_570669ea18290'),
(1518, 205, 'slider_images_2_image', '183'),
(1519, 205, '_slider_images_2_image', 'field_570669ea18290'),
(1520, 205, 'slider_images_3_image', '184'),
(1521, 205, '_slider_images_3_image', 'field_570669ea18290'),
(1522, 205, 'slider_images_4_image', '185'),
(1523, 205, '_slider_images_4_image', 'field_570669ea18290'),
(1524, 205, 'slider_images_5_image', '186'),
(1525, 205, '_slider_images_5_image', 'field_570669ea18290'),
(1526, 205, 'slider_images', '6'),
(1527, 205, '_slider_images', 'field_5706698c1828f'),
(1528, 205, 'content_fields_0_who_we_are_hero', '204'),
(1529, 205, '_content_fields_0_who_we_are_hero', 'field_573ca3723b211'),
(1530, 205, 'content_fields_0_who_we_are_blurb', 'Cottonwood Residential is your home at last. With prime locations and upgraded amenities, we are the place where you work hard and play harder. Our residents are friendly, and our employees are committed to superior service and finding a way to say “yes.” Welcome home to your happy place.'),
(1531, 205, '_content_fields_0_who_we_are_blurb', 'field_5703a4cc1c74d'),
(1532, 205, 'content_fields_0_giving_back_blurb', 'We work where we live. We’re a part of the areas and communities where we live.'),
(1533, 205, '_content_fields_0_giving_back_blurb', 'field_5703a5c61c74e'),
(1534, 205, 'content_fields_0_careers_blurb', 'If you want a fulfilling, uplifting, high-potential career that is less about work and more about people, warmth and fun, then welcome home. At Cottonwood Residential, we invite you into our wild and crazy family, where we treat our employees like guests in our own homes.'),
(1535, 205, '_content_fields_0_careers_blurb', 'field_5703a5e21c74f'),
(1536, 205, 'content_fields_0_our_vision_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1537, 205, '_content_fields_0_our_vision_blurb', 'field_5703a6021c750'),
(1538, 205, 'content_fields_0_our_values_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1539, 205, '_content_fields_0_our_values_blurb', 'field_5703a6131c751'),
(1540, 205, 'content_fields_0_our_reputation_blurb', 'Spectacular service is at the heart of Cottonwood Residential, and our sincere commitment to our residents, employees and investors shows. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies.'),
(1541, 205, '_content_fields_0_our_reputation_blurb', 'field_5703a6281c752'),
(1542, 205, 'content_fields', '1'),
(1543, 205, '_content_fields', 'field_5703a49e1c74c'),
(1547, 207, '_wp_attached_file', '2016/02/shutterstock_194129525-1.jpg');
INSERT INTO `wp_20_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1548, 207, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1334;s:4:"file";s:36:"2016/02/shutterstock_194129525-1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"shutterstock_194129525-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"shutterstock_194129525-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"shutterstock_194129525-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"shutterstock_194129525-1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:36:"shutterstock_194129525-1-800x534.jpg";s:5:"width";i:800;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:37:"shutterstock_194129525-1-1400x934.jpg";s:5:"width";i:1400;s:6:"height";i:934;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:38:"shutterstock_194129525-1-2000x1334.jpg";s:5:"width";i:2000;s:6:"height";i:1334;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1549, 208, 'slider_images_0_image', '181'),
(1550, 208, '_slider_images_0_image', 'field_570669ea18290'),
(1551, 208, 'slider_images_1_image', '182'),
(1552, 208, '_slider_images_1_image', 'field_570669ea18290'),
(1553, 208, 'slider_images_2_image', '183'),
(1554, 208, '_slider_images_2_image', 'field_570669ea18290'),
(1555, 208, 'slider_images_3_image', '184'),
(1556, 208, '_slider_images_3_image', 'field_570669ea18290'),
(1557, 208, 'slider_images_4_image', '185'),
(1558, 208, '_slider_images_4_image', 'field_570669ea18290'),
(1559, 208, 'slider_images_5_image', '186'),
(1560, 208, '_slider_images_5_image', 'field_570669ea18290'),
(1561, 208, 'slider_images', '6'),
(1562, 208, '_slider_images', 'field_5706698c1828f'),
(1563, 208, 'content_fields_0_who_we_are_hero', '204'),
(1564, 208, '_content_fields_0_who_we_are_hero', 'field_573ca3723b211'),
(1565, 208, 'content_fields_0_who_we_are_blurb', 'Cottonwood Residential is your home at last. With prime locations and upgraded amenities, we are the place where you work hard and play harder. Our residents are friendly, and our employees are committed to superior service and finding a way to say “yes.” Welcome home to your happy place.'),
(1566, 208, '_content_fields_0_who_we_are_blurb', 'field_5703a4cc1c74d'),
(1567, 208, 'content_fields_0_giving_back_hero', '170'),
(1568, 208, '_content_fields_0_giving_back_hero', 'field_573cb0369597e'),
(1569, 208, 'content_fields_0_giving_back_blurb', 'We work where we live. We’re a part of the areas and communities where we live.'),
(1570, 208, '_content_fields_0_giving_back_blurb', 'field_5703a5c61c74e'),
(1571, 208, 'content_fields_0_careers_hero', '171'),
(1572, 208, '_content_fields_0_careers_hero', 'field_573cb06a9597f'),
(1573, 208, 'content_fields_0_careers_blurb', 'If you want a fulfilling, uplifting, high-potential career that is less about work and more about people, warmth and fun, then welcome home. At Cottonwood Residential, we invite you into our wild and crazy family, where we treat our employees like guests in our own homes.'),
(1574, 208, '_content_fields_0_careers_blurb', 'field_5703a5e21c74f'),
(1575, 208, 'content_fields_0_our_vision_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1576, 208, '_content_fields_0_our_vision_blurb', 'field_5703a6021c750'),
(1577, 208, 'content_fields_0_our_values_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(1578, 208, '_content_fields_0_our_values_blurb', 'field_5703a6131c751'),
(1579, 208, 'content_fields_0_reputation_hero', '172'),
(1580, 208, '_content_fields_0_reputation_hero', 'field_573cb08e95980'),
(1581, 208, 'content_fields_0_our_reputation_blurb', 'Spectacular service is at the heart of Cottonwood Residential, and our sincere commitment to our residents, employees and investors shows. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies.'),
(1582, 208, '_content_fields_0_our_reputation_blurb', 'field_5703a6281c752'),
(1583, 208, 'content_fields', '1'),
(1584, 208, '_content_fields', 'field_5703a49e1c74c'),
(1585, 8, 'content_fields_0_giving_back_hero', '170'),
(1586, 8, '_content_fields_0_giving_back_hero', 'field_573cb0369597e'),
(1587, 8, 'content_fields_0_careers_hero', '171'),
(1588, 8, '_content_fields_0_careers_hero', 'field_573cb06a9597f'),
(1589, 8, 'content_fields_0_reputation_hero', '172'),
(1590, 8, '_content_fields_0_reputation_hero', 'field_573cb08e95980'),
(1591, 194, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"30";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1592, 209, 'page_content_0_hero_image', '170'),
(1593, 209, '_page_content_0_hero_image', 'field_573cbcb25a460'),
(1594, 209, 'page_content_0_hero_blurb', 'Formerly known as Cottonwood Capital, Cottonwood Residential launched in 2004 and operates as a fully integrated real estate investment trust (REIT). Managing nearly 21,000 multifamily units in 17 states, Cottonwood Residential has taken over as the Asset and Property Manager for several multifamily syndicators, including DBSI, DeSanto, Eliason, Sagebrush, RealSource, TIC Properties, Daymark/Triple Net Realty and MSI/Jacobson. \r\n\r\nCottonwood Residential is proud to welcome its residents and employees home at last, providing exceptional service, competitive locations and sophisticated amenities. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies. Welcome home.'),
(1595, 209, '_page_content_0_hero_blurb', 'field_573c8c8a468e9'),
(1596, 209, 'page_content', '1'),
(1597, 209, '_page_content', 'field_573c8c79468e8'),
(1598, 30, 'page_content_0_hero_image', '170'),
(1599, 30, '_page_content_0_hero_image', 'field_573cbcb25a460'),
(1600, 91, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"8";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1601, 189, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"32";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1602, 210, '_wp_attached_file', '2016/03/shutterstock_180990944.jpg'),
(1603, 210, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1111;s:4:"file";s:34:"2016/03/shutterstock_180990944.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_180990944-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_180990944-300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_180990944-768x427.jpg";s:5:"width";i:768;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_180990944-1024x569.jpg";s:5:"width";i:1024;s:6:"height";i:569;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_180990944-800x444.jpg";s:5:"width";i:800;s:6:"height";i:444;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_180990944-1400x778.jpg";s:5:"width";i:1400;s:6:"height";i:778;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_180990944-2000x1111.jpg";s:5:"width";i:2000;s:6:"height";i:1111;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1604, 211, '_wp_attached_file', '2016/03/shutterstock_309171938.jpg'),
(1605, 211, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:34:"2016/03/shutterstock_309171938.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_309171938-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_309171938-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_309171938-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_309171938-800x534.jpg";s:5:"width";i:800;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1606, 212, '_wp_attached_file', '2016/03/shutterstock_262840061.jpg'),
(1607, 212, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1381;s:4:"file";s:34:"2016/03/shutterstock_262840061.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_262840061-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_262840061-300x207.jpg";s:5:"width";i:300;s:6:"height";i:207;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_262840061-768x530.jpg";s:5:"width";i:768;s:6:"height";i:530;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_262840061-1024x707.jpg";s:5:"width";i:1024;s:6:"height";i:707;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_262840061-800x552.jpg";s:5:"width";i:800;s:6:"height";i:552;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_262840061-1400x967.jpg";s:5:"width";i:1400;s:6:"height";i:967;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_262840061-2000x1381.jpg";s:5:"width";i:2000;s:6:"height";i:1381;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1608, 213, '_wp_attached_file', '2016/03/shutterstock_266080838.jpg'),
(1609, 213, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1335;s:4:"file";s:34:"2016/03/shutterstock_266080838.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_266080838-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_266080838-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_266080838-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_266080838-1024x684.jpg";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_266080838-800x534.jpg";s:5:"width";i:800;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_266080838-1400x935.jpg";s:5:"width";i:1400;s:6:"height";i:935;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_266080838-2000x1335.jpg";s:5:"width";i:2000;s:6:"height";i:1335;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1610, 214, 'page_content_0_hero_image', '210'),
(1611, 214, '_page_content_0_hero_image', 'field_573cc0cc88bf4'),
(1612, 214, 'page_content_0_hero_blurb', 'Cottonwood Residential’s service-oriented and people-focused approach to multifamily residential living often gives new residents and employees a welcomed pause because we are not fixated on corporate jargon and financials. Rather, our goal is to produce the feeling of coming home.'),
(1613, 214, '_page_content_0_hero_blurb', 'field_573c7a417a610'),
(1614, 214, 'page_content_0_section_two_blurb', 'People have noticed we’re different, and the numbers speak for themselves. As a fully integrated real estate investment trust (REIT), Cottonwood Residential now owns and/or manages nearly 22,000 multifamily units in 17states. Please, kick off your shoes and stay a while, because you are home at last.'),
(1615, 214, '_page_content_0_section_two_blurb', 'field_573c7a687a611'),
(1616, 214, 'page_content_0_section_three_hero_image', '211'),
(1617, 214, '_page_content_0_section_three_hero_image', 'field_573cc0ee88bf5'),
(1618, 214, 'page_content_0_section_three_button_text', 'warm welcome, cool vibe'),
(1619, 214, '_page_content_0_section_three_button_text', 'field_573c7ab07a613'),
(1620, 214, 'page_content_0_section_three_blurb', 'With charming garden-style complexes in prominent, high-growth areas, Cottonwood Residential is your first step in creating a home that boasts location, career and comfort. We outfit our crisp, clean apartments with elegant finishes. Our grounds flaunt exquisite landscaping and alluring amenities such as sparkling pools and well-equipped fitness centers.'),
(1621, 214, '_page_content_0_section_three_blurb', 'field_573c7a927a612'),
(1622, 214, 'page_content_0_section_four_hero_image', '204'),
(1623, 214, '_page_content_0_section_four_hero_image', 'field_573cc11c88bf6'),
(1624, 214, 'page_content_0_section_five_hero_image', '212'),
(1625, 214, '_page_content_0_section_five_hero_image', 'field_573cc16988bf7'),
(1626, 214, 'page_content_0_section_five_button_text', 'contemporary comforts'),
(1627, 214, '_page_content_0_section_five_button_text', 'field_573c7aed7a615'),
(1628, 214, 'page_content_0_section_five_blurb', 'Cottonwood Residential encourages modern, simple living. We understand that you manage a majority of your life online, and our websites, apps and social media presence further streamline your apartment-living experience. Your satisfaction is our priority, so we are a listening company always asking, “How can we say yes?”'),
(1629, 214, '_page_content_0_section_five_blurb', 'field_573c7add7a614'),
(1630, 214, 'page_content_0_section_six_hero_image', '213'),
(1631, 214, '_page_content_0_section_six_hero_image', 'field_573cc18088bf8'),
(1632, 214, 'page_content', '1'),
(1633, 214, '_page_content', 'field_573c79e47a60f'),
(1634, 32, 'page_content_0_hero_image', '210'),
(1635, 32, '_page_content_0_hero_image', 'field_573cc0cc88bf4'),
(1636, 32, 'page_content_0_section_three_hero_image', '211'),
(1637, 32, '_page_content_0_section_three_hero_image', 'field_573cc0ee88bf5'),
(1638, 32, 'page_content_0_section_four_hero_image', '204'),
(1639, 32, '_page_content_0_section_four_hero_image', 'field_573cc11c88bf6'),
(1640, 32, 'page_content_0_section_five_hero_image', '212'),
(1641, 32, '_page_content_0_section_five_hero_image', 'field_573cc16988bf7'),
(1642, 32, 'page_content_0_section_five_button_text', 'contemporary comforts'),
(1643, 32, '_page_content_0_section_five_button_text', 'field_573c7aed7a615'),
(1644, 32, 'page_content_0_section_five_blurb', 'Cottonwood Residential encourages modern, simple living. We understand that you manage a majority of your life online, and our websites, apps and social media presence further streamline your apartment-living experience. Your satisfaction is our priority, so we are a listening company always asking, “How can we say yes?”'),
(1645, 32, '_page_content_0_section_five_blurb', 'field_573c7add7a614'),
(1646, 32, 'page_content_0_section_six_hero_image', '213'),
(1647, 32, '_page_content_0_section_six_hero_image', 'field_573cc18088bf8'),
(1648, 191, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"34";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1649, 215, '_wp_attached_file', '2016/03/shutterstock_233804083.jpg'),
(1650, 215, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1333;s:4:"file";s:34:"2016/03/shutterstock_233804083.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_233804083-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_233804083-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_233804083-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_233804083-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_233804083-800x533.jpg";s:5:"width";i:800;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_233804083-1400x933.jpg";s:5:"width";i:1400;s:6:"height";i:933;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_233804083-2000x1333.jpg";s:5:"width";i:2000;s:6:"height";i:1333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1651, 216, '_wp_attached_file', '2016/03/shutterstock_325756721.jpg'),
(1652, 216, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1334;s:4:"file";s:34:"2016/03/shutterstock_325756721.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_325756721-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_325756721-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_325756721-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_325756721-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_325756721-800x534.jpg";s:5:"width";i:800;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_325756721-1400x934.jpg";s:5:"width";i:1400;s:6:"height";i:934;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_325756721-2000x1334.jpg";s:5:"width";i:2000;s:6:"height";i:1334;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1653, 217, 'page_content_0_hero_image', '170'),
(1654, 217, '_page_content_0_hero_image', 'field_573cc6d731d7a'),
(1655, 217, 'page_content_0_hero_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1656, 217, '_page_content_0_hero_blurb', 'field_573c8118d1a12'),
(1657, 217, 'page_content_0_section_two_hero_image', '215'),
(1658, 217, '_page_content_0_section_two_hero_image', 'field_573cc70e31d7b'),
(1659, 217, 'page_content_0_section_two_button_text', 'Button Text'),
(1660, 217, '_page_content_0_section_two_button_text', 'field_573c8157d1a13'),
(1661, 217, 'page_content_0_section_two_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1662, 217, '_page_content_0_section_two_blurb', 'field_573c818fd1a14'),
(1663, 217, 'page_content_0_section_three_hero_image', '216'),
(1664, 217, '_page_content_0_section_three_hero_image', 'field_573cc73c31d7c'),
(1665, 217, 'page_content_0_section_three_button_text', 'Button Text'),
(1666, 217, '_page_content_0_section_three_button_text', 'field_573c81b2d1a15'),
(1667, 217, 'page_content_0_section_four_hero_image', '112'),
(1668, 217, '_page_content_0_section_four_hero_image', 'field_573cc75831d7d'),
(1669, 217, 'page_content_0_section_four_button_text', 'Button Text'),
(1670, 217, '_page_content_0_section_four_button_text', 'field_573c81d4d1a16'),
(1671, 217, 'page_content_0_section_four_blurb', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
(1672, 217, '_page_content_0_section_four_blurb', 'field_573c8254d1a17'),
(1673, 217, 'page_content', '1'),
(1674, 217, '_page_content', 'field_573c8105d1a11'),
(1675, 34, 'page_content_0_hero_image', '170'),
(1676, 34, '_page_content_0_hero_image', 'field_573cc6d731d7a'),
(1677, 34, 'page_content_0_section_two_hero_image', '215'),
(1678, 34, '_page_content_0_section_two_hero_image', 'field_573cc70e31d7b'),
(1679, 34, 'page_content_0_section_three_hero_image', '216'),
(1680, 34, '_page_content_0_section_three_hero_image', 'field_573cc73c31d7c'),
(1681, 34, 'page_content_0_section_four_hero_image', '112'),
(1682, 34, '_page_content_0_section_four_hero_image', 'field_573cc75831d7d'),
(1683, 197, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"36";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1684, 218, '_wp_attached_file', '2016/03/shutterstock_257743489.jpg'),
(1685, 218, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1333;s:4:"file";s:34:"2016/03/shutterstock_257743489.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_257743489-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_257743489-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_257743489-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_257743489-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_257743489-800x533.jpg";s:5:"width";i:800;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_257743489-1400x933.jpg";s:5:"width";i:1400;s:6:"height";i:933;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_257743489-2000x1333.jpg";s:5:"width";i:2000;s:6:"height";i:1333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1686, 219, '_wp_attached_file', '2016/03/shutterstock_16416475.jpg'),
(1687, 219, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1333;s:4:"file";s:33:"2016/03/shutterstock_16416475.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"shutterstock_16416475-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"shutterstock_16416475-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"shutterstock_16416475-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"shutterstock_16416475-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:33:"shutterstock_16416475-800x533.jpg";s:5:"width";i:800;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:34:"shutterstock_16416475-1400x933.jpg";s:5:"width";i:1400;s:6:"height";i:933;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:35:"shutterstock_16416475-2000x1333.jpg";s:5:"width";i:2000;s:6:"height";i:1333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1688, 220, '_wp_attached_file', '2016/03/shutterstock_337088285.jpg'),
(1689, 220, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1000;s:4:"file";s:34:"2016/03/shutterstock_337088285.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_337088285-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_337088285-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_337088285-768x384.jpg";s:5:"width";i:768;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_337088285-1024x512.jpg";s:5:"width";i:1024;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_337088285-800x400.jpg";s:5:"width";i:800;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_337088285-1400x700.jpg";s:5:"width";i:1400;s:6:"height";i:700;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_337088285-2000x1000.jpg";s:5:"width";i:2000;s:6:"height";i:1000;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1690, 221, 'page_content_0_hero_image', '218'),
(1691, 221, '_page_content_0_hero_image', 'field_573cc99898f63'),
(1692, 221, 'page_content_0_hero_blurb', 'In addition to our focus on excellent service, Cottonwood Residential provides unsurpassed expertise in asset and property management. Our robust capabilities in the financial, construction and legal aspects of Tenants in Common multifamily ownership have greatly contributed to the value we create for residents, investors and employees.'),
(1693, 221, '_page_content_0_hero_blurb', 'field_573c93b60b77e'),
(1694, 221, 'page_content_0_mission_statement', 'At Cottonwood Residential, our mission is to deliver long-term value to investors, residents and employees.'),
(1695, 221, '_page_content_0_mission_statement', 'field_573c93cd0b77f'),
(1696, 221, 'page_content_0_section_three_hero_image', '219'),
(1697, 221, '_page_content_0_section_three_hero_image', 'field_573cc9cf98f64'),
(1698, 221, 'page_content_0_meet_our_team_hero_image', '220'),
(1699, 221, '_page_content_0_meet_our_team_hero_image', 'field_573cc9fc98f65'),
(1700, 221, 'page_content_0_meet_our_team_blurb', 'Cottonwood Residential boasts nearly 600 friendly, talented and hard-working team members who manage approximately 80 properties. With high growth potential, a fun atmosphere and even handwritten notes at times, we welcome our employees home at last.'),
(1701, 221, '_page_content_0_meet_our_team_blurb', 'field_573c93ed0b780'),
(1702, 221, 'page_content', '1'),
(1703, 221, '_page_content', 'field_573c93a00b77d'),
(1704, 36, 'page_content_0_hero_image', '218'),
(1705, 36, '_page_content_0_hero_image', 'field_573cc99898f63'),
(1706, 36, 'page_content_0_section_three_hero_image', '219'),
(1707, 36, '_page_content_0_section_three_hero_image', 'field_573cc9cf98f64'),
(1708, 36, 'page_content_0_meet_our_team_hero_image', '220'),
(1709, 36, '_page_content_0_meet_our_team_hero_image', 'field_573cc9fc98f65'),
(1710, 199, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"38";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1711, 222, '_wp_attached_file', '2016/03/shutterstock_328291079.jpg'),
(1712, 222, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1334;s:4:"file";s:34:"2016/03/shutterstock_328291079.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_328291079-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_328291079-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_328291079-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_328291079-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_328291079-800x534.jpg";s:5:"width";i:800;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_328291079-1400x934.jpg";s:5:"width";i:1400;s:6:"height";i:934;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_328291079-2000x1334.jpg";s:5:"width";i:2000;s:6:"height";i:1334;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1713, 223, 'page_content_0_hero_image', '222'),
(1714, 223, '_page_content_0_hero_image', 'field_573ccbe564f80'),
(1715, 223, 'page_content_0_hero_blurb', 'The Cottonwood Residential executive team showcases outstanding talent, expertise and leadership in the multifamily and property management industries. Our leaders have passionately guided Cottonwood Residential to a reputation of spectacular service and impressive growth. They have led us home at last.'),
(1716, 223, '_page_content_0_hero_blurb', 'field_573c954630ec0'),
(1717, 223, 'page_content', '1'),
(1718, 223, '_page_content', 'field_573c952b30ebf'),
(1719, 38, 'page_content_0_hero_image', '222'),
(1720, 38, '_page_content_0_hero_image', 'field_573ccbe564f80'),
(1721, 15, '_edit_lock', '1464261668:1'),
(1722, 224, '_edit_lock', '1463603177:1'),
(1723, 224, '_edit_last', '1'),
(1724, 224, 'field_573ccc9dd59d7', 'a:11:{s:3:"key";s:19:"field_573ccc9dd59d7";s:5:"label";s:10:"Hero Image";s:4:"name";s:10:"hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1726, 224, 'position', 'normal'),
(1727, 224, 'layout', 'no_box'),
(1728, 224, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(1729, 225, '_wp_attached_file', '2016/02/shutterstock_249380374.jpg'),
(1730, 225, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1335;s:4:"file";s:34:"2016/02/shutterstock_249380374.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_249380374-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_249380374-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_249380374-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_249380374-1024x684.jpg";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_249380374-800x534.jpg";s:5:"width";i:800;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_249380374-1400x935.jpg";s:5:"width";i:1400;s:6:"height";i:935;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_249380374-2000x1335.jpg";s:5:"width";i:2000;s:6:"height";i:1335;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1731, 226, 'hero_image', '225'),
(1732, 226, '_hero_image', 'field_573ccc9dd59d7'),
(1733, 15, 'hero_image', '225'),
(1734, 15, '_hero_image', 'field_573ccc9dd59d7'),
(1735, 224, 'field_573ccd487b931', 'a:11:{s:3:"key";s:19:"field_573ccd487b931";s:5:"label";s:24:"Section Three Hero Image";s:4:"name";s:24:"section_three_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1736, 224, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"15";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1737, 227, '_wp_attached_file', '2016/02/shutterstock_272091356.jpg'),
(1738, 227, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1333;s:4:"file";s:34:"2016/02/shutterstock_272091356.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"shutterstock_272091356-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"shutterstock_272091356-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"shutterstock_272091356-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"shutterstock_272091356-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:11:"small-image";a:4:{s:4:"file";s:34:"shutterstock_272091356-800x533.jpg";s:5:"width";i:800;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";}s:10:"wide-image";a:4:{s:4:"file";s:35:"shutterstock_272091356-1400x933.jpg";s:5:"width";i:1400;s:6:"height";i:933;s:9:"mime-type";s:10:"image/jpeg";}s:16:"extra-wide-image";a:4:{s:4:"file";s:36:"shutterstock_272091356-2000x1333.jpg";s:5:"width";i:2000;s:6:"height";i:1333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1739, 228, 'hero_image', '225'),
(1740, 228, '_hero_image', 'field_573ccc9dd59d7'),
(1741, 228, 'section_three_hero_image', '227'),
(1742, 228, '_section_three_hero_image', 'field_573ccd487b931'),
(1743, 15, 'section_three_hero_image', '227'),
(1744, 15, '_section_three_hero_image', 'field_573ccd487b931'),
(1745, 229, '_menu_item_type', 'custom'),
(1746, 229, '_menu_item_menu_item_parent', '0'),
(1747, 229, '_menu_item_object_id', '229'),
(1748, 229, '_menu_item_object', 'custom'),
(1749, 229, '_menu_item_target', ''),
(1750, 229, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1751, 229, '_menu_item_xfn', ''),
(1752, 229, '_menu_item_url', '#0'),
(1753, 230, 'page_content_0_hero_image', '210'),
(1754, 230, '_page_content_0_hero_image', 'field_573cc0cc88bf4'),
(1755, 230, 'page_content_0_hero_blurb', 'Cottonwood Residential’s service-oriented and people-focused approach to multifamily residential living often gives new residents and employees a welcomed pause because we are not fixated on corporate jargon and financials. Rather, our goal is to produce the feeling of coming home.'),
(1756, 230, '_page_content_0_hero_blurb', 'field_573c7a417a610'),
(1757, 230, 'page_content_0_section_two_blurb', 'People have noticed we’re different, and the numbers speak for themselves. As a fully integrated real estate investment trust (REIT), Cottonwood Residential now owns and/or manages nearly 22,000 multifamily units in 17 states, Cottonwood Residential has taken over as the Asset and Property Manager for several multifamily syndicators, including DBSI, DeSanto, Eliason, Sagebrush, RealSource, TIC Properties, Daymark/Triple Net Realty and MSI/Jacobson. \r\n\r\nCottonwood Residential is proud to welcome its residents and employees home at last, providing exceptional service, competitive locations and sophisticated amenities. Cottonwood Residential was ranked No. 6 nationally for customer satisfaction, and the National Multifamily Housing Council honored us as one of the Top 50 Management Companies. Welcome home. Please, kick off your shoes and stay a while, because you are home at last.'),
(1758, 230, '_page_content_0_section_two_blurb', 'field_573c7a687a611'),
(1759, 230, 'page_content_0_section_three_hero_image', '211'),
(1760, 230, '_page_content_0_section_three_hero_image', 'field_573cc0ee88bf5'),
(1761, 230, 'page_content_0_section_three_button_text', 'warm welcome, cool vibe'),
(1762, 230, '_page_content_0_section_three_button_text', 'field_573c7ab07a613'),
(1763, 230, 'page_content_0_section_three_blurb', 'With charming garden-style complexes in prominent, high-growth areas, Cottonwood Residential is your first step in creating a home that boasts location, career and comfort. We outfit our crisp, clean apartments with elegant finishes. Our grounds flaunt exquisite landscaping and alluring amenities such as sparkling pools and well-equipped fitness centers.'),
(1764, 230, '_page_content_0_section_three_blurb', 'field_573c7a927a612'),
(1765, 230, 'page_content_0_section_four_hero_image', '204'),
(1766, 230, '_page_content_0_section_four_hero_image', 'field_573cc11c88bf6'),
(1767, 230, 'page_content_0_section_five_hero_image', '212'),
(1768, 230, '_page_content_0_section_five_hero_image', 'field_573cc16988bf7'),
(1769, 230, 'page_content_0_section_five_button_text', 'contemporary comforts'),
(1770, 230, '_page_content_0_section_five_button_text', 'field_573c7aed7a615'),
(1771, 230, 'page_content_0_section_five_blurb', 'Cottonwood Residential encourages modern, simple living. We understand that you manage a majority of your life online, and our websites, apps and social media presence further streamline your apartment-living experience. Your satisfaction is our priority, so we are a listening company always asking, “How can we say yes?”'),
(1772, 230, '_page_content_0_section_five_blurb', 'field_573c7add7a614'),
(1773, 230, 'page_content_0_section_six_hero_image', '213'),
(1774, 230, '_page_content_0_section_six_hero_image', 'field_573cc18088bf8'),
(1775, 230, 'page_content', '1'),
(1776, 230, '_page_content', 'field_573c79e47a60f');

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_posts`
--

CREATE TABLE `wp_20_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_20_posts`
--

INSERT INTO `wp_20_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2016-04-05 15:12:27', '2016-04-05 15:12:27', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://cottonwood.dev/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-04-05 15:12:27', '2016-04-05 15:12:27', '', 0, 'http://cottonwood.dev/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-04-05 15:16:44', '2016-04-05 15:16:44', '', 'Altis-at-Highland-Park_400', '', 'inherit', 'open', 'closed', '', 'altis-at-highland-park_400', '', '', '2016-04-05 15:16:44', '2016-04-05 15:16:44', '', 0, 'http://cottonwood.dev/app/uploads/2016/04/Altis-at-Highland-Park_400.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2016-04-05 15:16:44', '2016-04-05 15:16:44', '', 'Cottonwood-Ranked-No6-400', '', 'inherit', 'open', 'closed', '', 'cottonwood-ranked-no6-400', '', '', '2016-04-05 15:16:44', '2016-04-05 15:16:44', '', 0, 'http://cottonwood.dev/app/uploads/2016/04/Cottonwood-Ranked-No6-400.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2016-04-05 15:17:21', '2016-04-05 15:17:21', '', 'User Log In', '', 'publish', 'closed', 'closed', '', 'user-log-in', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/2016/04/05/user-log-in/', 12, 'nav_menu_item', '', 0),
(8, 2, '2016-02-23 17:11:19', '2016-02-23 17:11:19', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-05-18 18:25:34', '2016-05-18 18:25:34', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=5', 0, 'page', '', 0),
(15, 2, '2016-02-23 17:10:30', '2016-02-23 17:10:30', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-05-18 20:15:56', '2016-05-18 20:15:56', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=15', 0, 'page', '', 0),
(27, 2, '2016-03-29 19:37:46', '2016-03-29 19:37:46', '<p class="open_sans_light">AaBbCcDdEeFfGgHhIiJjKkLlMmNnO</p>\n<p class="open_sans_regular">AaBbCcDdEeFfGgHhIiJjKkLlMmNnO</p>\n<p class="open_sans_semi_bold">AaBbCcDdEeFfGgHhIiJjKkLlMmNnO</p>\n<p class="open_sans_bold">AaBbCcDdEeFfGgHhIiJjKkLlMmNnO</p>\n<p class="noto_serif">who we are AaBbCcDdEeFfGgHhIiJjKkLlMmNnO</p>\n<p class="azo_regular">AaBbCcDdEeFfGgHhIiJjKkLlMmNnO</p>\n<p class="azo_bold">AaBbCcDdEeFfGgHhIiJjKkLlMmNnO</p>', 'Typography', '', 'publish', 'closed', 'closed', '', 'typography', '', '', '2016-03-29 19:37:46', '2016-03-29 19:37:46', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=27', 0, 'page', '', 0),
(30, 2, '2016-03-30 11:39:06', '2016-03-30 11:39:06', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-05-18 19:05:25', '2016-05-18 19:05:25', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=30', 0, 'page', '', 0),
(32, 2, '2016-03-30 11:39:25', '2016-03-30 11:39:25', '', 'Who We Are', '', 'publish', 'closed', 'closed', '', 'who-we-are', '', '', '2016-05-24 17:56:05', '2016-05-24 17:56:05', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=32', 0, 'page', '', 0),
(34, 2, '2016-03-30 11:39:40', '2016-03-30 11:39:40', '', 'Giving Back', '', 'publish', 'closed', 'closed', '', 'giving-back', '', '', '2016-05-18 19:52:20', '2016-05-18 19:52:20', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=34', 0, 'page', '', 0),
(36, 2, '2016-03-30 11:39:54', '2016-03-30 11:39:54', '', 'Capabilities', '', 'publish', 'closed', 'closed', '', 'capabilities', '', '', '2016-05-18 20:03:18', '2016-05-18 20:03:18', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=36', 0, 'page', '', 0),
(38, 2, '2016-03-30 11:40:07', '2016-03-30 11:40:07', '', 'Leadership Team', '', 'publish', 'closed', 'closed', '', 'leadership-team', '', '', '2016-05-18 20:10:14', '2016-05-18 20:10:14', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=38', 0, 'page', '', 0),
(40, 2, '2016-03-30 11:40:20', '2016-03-30 11:40:20', '', 'Find Your Home', '', 'publish', 'closed', 'closed', '', 'find-your-home', '', '', '2016-03-30 11:40:20', '2016-03-30 11:40:20', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=40', 0, 'page', '', 0),
(42, 2, '2016-03-30 11:40:37', '2016-03-30 11:40:37', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-04-07 16:01:07', '2016-04-07 16:01:07', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=42', 0, 'page', '', 0),
(44, 2, '2016-03-30 11:40:49', '2016-03-30 11:40:49', '', 'Careers', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2016-03-30 11:40:49', '2016-03-30 11:40:49', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=44', 0, 'page', '', 0),
(46, 2, '2016-03-30 11:41:00', '2016-03-30 11:41:00', '', 'Investors', '', 'publish', 'closed', 'closed', '', 'investors', '', '', '2016-03-30 11:41:00', '2016-03-30 11:41:00', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?page_id=46', 0, 'page', '', 0),
(64, 1, '2016-03-31 14:45:30', '2016-03-31 14:45:30', '', 'Global Values', '', 'publish', 'closed', 'closed', '', 'acf_global-values', '', '', '2016-04-05 15:20:10', '2016-04-05 15:20:10', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?post_type=acf&#038;p=64', 0, 'acf', '', 0),
(65, 2, '2016-01-04 12:07:19', '2016-01-04 12:07:19', 'Cottonwood Residential acquired Altis Highland Park in Tampa, Florida on December 21, 2015. This unique, class-A property features 239 units with modern amenities including USB charging stations, granite counter tops, stainless steel refrigerators and designer tile bathrooms.<!--more-->\r\n\r\nEach of the contemporary studio, 1, 2 and 3 bedroom apartments blends high-end amenities with nearby world class golf and the cultural scene of Tampa’s Westchase neighborhood.\r\n\r\nBrandy Hall, Vice President of Operations at Cottonwood Residential, was on site at the property on the first day of the transition. “This is an amazing community. We’re so thrilled to own and manage such a wonderful place for our residents to call home.”\r\n\r\nAltis Highland Park is the seventh property owned or managed by Cottonwood Residential in Florida. It also joins sister property, 456 unit Sanctuary at Highland Park, as the company’s second fully-owned property in the Tampa market.\r\n\r\n“This acquisition shows how Cottonwood is continuing to grow its multifamily portfolio with exceptional assets in strong markets. We’re pleased to bring this kind of value to our investors, and to offer this level of amenities to residents,” remarked Chad Christensen, President of Cottonwood Residential.', 'Cottonwood Residential Acquires Altis Highland Park in Tampa, Florida', '', 'publish', 'closed', 'closed', '', 'cottonwood-residential-acquires-altis-highland-park-in-tampa-florida', '', '', '2016-04-24 16:11:57', '2016-04-24 16:11:57', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?p=65', 0, 'post', '', 0),
(69, 2, '2015-12-02 13:29:49', '2015-12-02 13:29:49', 'Cottonwood Residential has worked to position itself as a customer-focused company in its approach to customer reviews.<!--more--> The company’s multi-year effort to improve its reputation scores continues to pay dividends as rankings were recently released by J Turner Research. Cottonwood was recognized for being ranked #6 nationally for customer satisfaction.\r\n\r\nAnnette Folch, Director of Operations and Education, remarked: “We train and instill service at every level. We want to create a better overall experience for the resident. That’s the bedrock of our success with online reviews.”\r\n\r\nAccording to findings released in August 2015 by UK-based BrightLocal, 92% of consumers read online reviews. Apartment searchers are increasingly taking part in that trend, basing their apartment rental decision on comments and ratings made by others.\r\n\r\n“Marketing is no longer about delivering a message. It’s about delivering on our promises. It’s thrilling to see what we’re doing on site and how it’s creating positive word of mouth online,” says Matt Bullock, Director of Marketing.\r\n\r\nThe company continues to emphasize that all feedback is welcome. Any current or former residents, in addition to guests who have visited a nearby community, are encouraged to submit a review on Google, Yelp, or ApartmentRatings.com.', 'Cottonwood Residential Ranked #6 in NMHC Top 50 for Reputation', '', 'publish', 'open', 'closed', '', 'cottonwood-residential-ranked-6-in-nmhc-top-50-for-reputation', '', '', '2016-04-24 16:12:16', '2016-04-24 16:12:16', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?p=69', 0, 'post', '', 1),
(72, 2, '2015-11-02 13:33:36', '2015-11-02 13:33:36', 'Cottonwood Residential is pleased to announce seven new properties under management from The Kislak Organization. The Cottonwood portfolio increased by 1,630 units managed across properties in Florida and Texas.<!--more-->\r\n\r\nAccording to Debra Spohn, Senior Vice President of Property Management, “We’re thrilled to welcome these communities to Cottonwood. They are excellent properties with strong teams. It’s a win-win for Cottonwood and Kislak.”\r\n\r\nCottonwood Residential, headquartered in Salt Lake City, Utah, is a fully integrated real estate investment company. Its operating officers have been focused solely on the multifamily sector since 2004. The firm currently owns and/or manages 21,941 multifamily units in 18 states.', 'Cottonwood Residential Now Managing for The Kislak Organization', '', 'publish', 'open', 'closed', '', 'cottonwood-residential-now-managing-for-the-kislak-organization', '', '', '2016-04-12 20:14:46', '2016-04-12 20:14:46', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?p=72', 0, 'post', '', 0),
(74, 2, '2015-10-16 13:34:56', '2015-10-16 13:34:56', 'Park City, Utah - July 9, 2015 - Cottonwood Residential honored members of its national property management team during its Annual Leadership Conference retreat at Stein Eriksen Lodge in Park City, Utah.<!--more-->\n\n“As Cottonwood continues to grow and mature, we continue to see extraordinary leaders develop at every level in our organization,” said Debra Spohn, Senior Vice President of Property Management.\n\nAnnette Pena, Director of Training and Operations, remarked, “Our 2014 award winners are like many in our organization: true professionals with so much heart and soul for their teams and communities.”\n\nThe following awards were presented at the Thursday, July 9 Gala Event and Awards Ceremony.\n\n• Community Manager of the Year: Tara Cruz, Plantations at Haywood, Greenville, SC\n• Service Manager of the Year: Kenneth Clark, Oak Ridge – Austin, TX\n• Assistant Community Manager of the Year: Sonya Turner, Cason Estates – Murfreesboro, TN\n• Service Technician of the Year: Pablo De La Garza, Retreat at Stafford – Stafford, TX\n• Leasing Consultant of the Year: James VanHorn, Oaks of North Dallas/4804 Haverwood – Dallas, TX\n• Groundskeeper of the Year: Fred Worthy, Knoxville Pointe – Dunlap, IL\n• Rising Star Award: Crystal Dukes, Corporate Office – Salt Lake City, UT\n• Regional Manager of the Year: Jerri Risch – Raleigh, NC\n• President’s Leadership Award: Matt Bullock, Director of Marketing – Salt Lake City, UT', '2014 Award Winners Recognized at Annual Leadership Conference', '', 'publish', 'closed', 'closed', '', '2014-award-winners-recognized-at-annual-leadership-conference', '', '', '2015-10-16 13:34:56', '2015-10-16 13:34:56', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?p=74', 0, 'post', '', 0),
(76, 1, '2016-04-05 15:17:21', '2016-04-05 15:17:21', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/2016/04/05/76/', 11, 'nav_menu_item', '', 0),
(79, 1, '2016-04-05 15:17:21', '2016-04-05 15:17:21', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/2016/04/05/79/', 8, 'nav_menu_item', '', 0),
(81, 1, '2016-04-05 15:17:21', '2016-04-05 15:17:21', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/2016/04/05/81/', 6, 'nav_menu_item', '', 0),
(82, 1, '2016-04-05 15:17:21', '2016-04-05 15:17:21', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/2016/04/05/82/', 5, 'nav_menu_item', '', 0),
(83, 1, '2016-04-05 15:17:21', '2016-04-05 15:17:21', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/2016/04/05/83/', 4, 'nav_menu_item', '', 0),
(84, 1, '2016-04-05 15:17:21', '2016-04-05 15:17:21', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/2016/04/05/84/', 3, 'nav_menu_item', '', 0),
(91, 1, '2016-04-05 11:49:56', '2016-04-05 11:49:56', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'acf_home-page', '', '', '2016-05-18 19:09:22', '2016-05-18 19:09:22', '', 0, 'http://cottonwood.miscellaneous2.wpengine.com/?post_type=acf&#038;p=76', 0, 'acf', '', 0),
(93, 1, '2016-04-05 15:19:49', '2016-04-05 15:19:49', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/2016/04/05/93/', 1, 'nav_menu_item', '', 0),
(108, 1, '2016-04-05 15:22:54', '2016-04-05 15:22:54', 'Cottonwood Residential acquired Altis Highland Park in Tampa, Florida on December 21, 2015. This unique, class-A property features 239 units with modern amenities including USB charging stations, granite counter tops, stainless steel refrigerators and designer tile bathrooms.<!--more-->\r\n\r\nEach of the contemporary studio, 1, 2 and 3 bedroom apartments blends high-end amenities with nearby world class golf and the cultural scene of Tampa’s Westchase neighborhood.\r\n\r\nBrandy Hall, Vice President of Operations at Cottonwood Residential, was on site at the property on the first day of the transition. “This is an amazing community. We’re so thrilled to own and manage such a wonderful place for our residents to call home.”\r\n\r\nAltis Highland Park is the seventh property owned or managed by Cottonwood Residential in Florida. It also joins sister property, 456 unit Sanctuary at Highland Park, as the company’s second fully-owned property in the Tampa market.\r\n\r\n“This acquisition shows how Cottonwood is continuing to grow its multifamily portfolio with exceptional assets in strong markets. We’re pleased to bring this kind of value to our investors, and to offer this level of amenities to residents,” remarked Chad Christensen, President of Cottonwood Residential.', 'Cottonwood Residential Acquires Altis Highland Park in Tampa, Florida', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2016-04-05 15:22:54', '2016-04-05 15:22:54', '', 65, 'http://cottonwood.dev/65-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2016-04-05 15:23:16', '2016-04-05 15:23:16', 'Cottonwood Residential has worked to position itself as a customer-focused company in its approach to customer reviews.<!--more--> The company’s multi-year effort to improve its reputation scores continues to pay dividends as rankings were recently released by J Turner Research. Cottonwood was recognized for being ranked #6 nationally for customer satisfaction.\r\n\r\nAnnette Folch, Director of Operations and Education, remarked: “We train and instill service at every level. We want to create a better overall experience for the resident. That’s the bedrock of our success with online reviews.”\r\n\r\nAccording to findings released in August 2015 by UK-based BrightLocal, 92% of consumers read online reviews. Apartment searchers are increasingly taking part in that trend, basing their apartment rental decision on comments and ratings made by others.\r\n\r\n“Marketing is no longer about delivering a message. It’s about delivering on our promises. It’s thrilling to see what we’re doing on site and how it’s creating positive word of mouth online,” says Matt Bullock, Director of Marketing.\r\n\r\nThe company continues to emphasize that all feedback is welcome. Any current or former residents, in addition to guests who have visited a nearby community, are encouraged to submit a review on Google, Yelp, or ApartmentRatings.com.', 'Cottonwood Residential Ranked #6 in NMHC Top 50 for Reputation', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-04-05 15:23:16', '2016-04-05 15:23:16', '', 69, 'http://cottonwood.dev/69-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2016-04-05 15:28:07', '2016-04-05 15:28:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-04-05 15:28:07', '2016-04-05 15:28:07', '', 8, 'http://cottonwood.dev/8-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2016-04-07 14:25:12', '2016-04-07 14:25:12', '', 'fpo-shutterstock_166026071', '', 'inherit', 'open', 'closed', '', 'fpo-shutterstock_166026071', '', '', '2016-04-07 14:25:12', '2016-04-07 14:25:12', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/fpo-shutterstock_166026071.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2016-04-07 14:25:14', '2016-04-07 14:25:14', '', 'fpo-shutterstock_212621356', '', 'inherit', 'open', 'closed', '', 'fpo-shutterstock_212621356', '', '', '2016-04-07 14:25:14', '2016-04-07 14:25:14', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/fpo-shutterstock_212621356.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2016-04-07 14:25:16', '2016-04-07 14:25:16', '', 'fpo-shutterstock_220674340', '', 'inherit', 'open', 'closed', '', 'fpo-shutterstock_220674340', '', '', '2016-04-07 14:25:16', '2016-04-07 14:25:16', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/fpo-shutterstock_220674340.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2016-04-07 14:25:30', '2016-04-07 14:25:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-04-07 14:25:30', '2016-04-07 14:25:30', '', 8, 'http://cottonwood.dev/8-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2016-04-07 16:01:07', '2016-04-07 16:01:07', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2016-04-07 16:01:07', '2016-04-07 16:01:07', '', 42, 'http://cottonwood.dev/42-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2016-04-11 14:13:25', '2016-04-11 14:13:25', 'Cottonwood Residential is pleased to announce seven new properties under management from The Kislak Organization. The Cottonwood portfolio increased by 1,630 units managed across properties in Florida and Texas.<!--more-->\r\n\r\nAccording to Debra Spohn, Senior Vice President of Property Management, “We’re thrilled to welcome these communities to Cottonwood. They are excellent properties with strong teams. It’s a win-win for Cottonwood and Kislak.”\r\n\r\nCottonwood Residential, headquartered in Salt Lake City, Utah, is a fully integrated real estate investment company. Its operating officers have been focused solely on the multifamily sector since 2004. The firm currently owns and/or manages 21,941 multifamily units in 18 states.', 'Cottonwood Residential Now Managing for The Kislak Organization', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2016-04-11 14:13:25', '2016-04-11 14:13:25', '', 72, 'http://cottonwood.dev/72-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2015-08-13 16:34:01', '2015-08-13 16:34:01', '', 'Team Content', '', 'publish', 'closed', 'closed', '', 'acf_team-content', '', '', '2016-04-24 18:14:00', '2016-04-24 18:14:00', '', 0, 'http://brandproperties.miscellaneous2.wpengine.com/?post_type=acf&#038;p=5', 0, 'acf', '', 0),
(120, 1, '2016-04-14 18:53:16', '2016-04-14 18:53:16', '', 'DANIEL SHAEFFER', '', 'publish', 'closed', 'closed', '', 'daniel-shaeffer', '', '', '2016-04-24 18:08:22', '2016-04-24 18:08:22', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=120', 0, 'team-member', '', 0),
(121, 1, '2016-04-14 18:52:22', '2016-04-14 18:52:22', '', 'DANIEL SHAEFFER', '', 'inherit', 'open', 'closed', '', 'dan-s_hi-res_bw_flat_2', '', '', '2016-04-14 18:53:12', '2016-04-14 18:53:12', '', 120, 'http://cottonwood.dev/app/uploads/2016/04/Dan-S_hi-res_BW_flat_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2016-04-14 19:05:16', '2016-04-14 19:05:16', '', 'CHAD CHRISTENSEN', '', 'publish', 'closed', 'closed', '', 'chad-christensen', '', '', '2016-04-24 18:08:11', '2016-04-24 18:08:11', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=122', 0, 'team-member', '', 0),
(123, 1, '2016-04-14 19:04:41', '2016-04-14 19:04:41', '', 'CHAD CHRISTENSEN', '', 'inherit', 'open', 'closed', '', 'chad-c_hi-res_bw_flat', '', '', '2016-04-14 19:05:13', '2016-04-14 19:05:13', '', 122, 'http://cottonwood.dev/app/uploads/2016/04/Chad-C_hi-res_BW_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2016-04-15 12:58:55', '2016-04-15 12:58:55', '', 'GREGG T. CHRISTENSEN', '', 'publish', 'closed', 'closed', '', 'gregg-t-christensen', '', '', '2016-04-24 18:08:00', '2016-04-24 18:08:00', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=124', 0, 'team-member', '', 0),
(125, 1, '2016-04-15 12:58:22', '2016-04-15 12:58:22', '', 'GREGG T. CHRISTENSEN', '', 'inherit', 'open', 'closed', '', 'gregg-c_hi-res_bw_flat_2', '', '', '2016-04-15 12:58:32', '2016-04-15 12:58:32', '', 124, 'http://cottonwood.dev/app/uploads/2016/04/Gregg-C_hi-res_BW_flat_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2016-04-15 13:03:13', '2016-04-15 13:03:13', '', 'SUSAN E. HALLENBERG', '', 'publish', 'closed', 'closed', '', 'susan-e-hallenberg', '', '', '2016-04-24 18:07:50', '2016-04-24 18:07:50', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=126', 0, 'team-member', '', 0),
(127, 1, '2016-04-15 13:04:41', '2016-04-15 13:04:41', '', 'DEBRA SPOHN', '', 'publish', 'closed', 'closed', '', 'debra-spohn', '', '', '2016-04-24 18:07:40', '2016-04-24 18:07:40', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=127', 0, 'team-member', '', 0),
(128, 1, '2016-04-15 13:06:34', '2016-04-15 13:06:34', '', 'PAUL FREDENBERG', '', 'publish', 'closed', 'closed', '', 'paul-fredenberg', '', '', '2016-04-24 18:07:31', '2016-04-24 18:07:31', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=128', 0, 'team-member', '', 0),
(129, 1, '2016-04-15 13:08:49', '2016-04-15 13:08:49', '', 'RALPH H. SMITH', '', 'publish', 'closed', 'closed', '', 'ralph-h-smith', '', '', '2016-04-24 18:07:21', '2016-04-24 18:07:21', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=129', 0, 'team-member', '', 0),
(130, 1, '2016-04-15 13:07:43', '2016-04-15 13:07:43', '', 'RALPH H. SMITH', '', 'inherit', 'open', 'closed', '', 'ralph-smith-big', '', '', '2016-04-15 13:08:04', '2016-04-15 13:08:04', '', 129, 'http://cottonwood.dev/app/uploads/2016/04/Ralph-Smith-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2016-04-15 13:10:07', '2016-04-15 13:10:07', '', 'LANCE HOWELL', '', 'publish', 'closed', 'closed', '', 'lance-howell', '', '', '2016-04-24 18:07:10', '2016-04-24 18:07:10', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=131', 0, 'team-member', '', 0),
(132, 1, '2016-04-15 13:11:51', '2016-04-15 13:11:51', '', 'STAN HANKS', '', 'publish', 'closed', 'closed', '', 'stan-hanks', '', '', '2016-04-24 18:07:00', '2016-04-24 18:07:00', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=132', 0, 'team-member', '', 0),
(133, 1, '2016-04-15 13:11:03', '2016-04-15 13:11:03', '', 'STAN HANKS', '', 'inherit', 'open', 'closed', '', 'stan-hanks-big', '', '', '2016-04-15 13:11:11', '2016-04-15 13:11:11', '', 132, 'http://cottonwood.dev/app/uploads/2016/04/Stan-Hanks-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2016-04-15 13:13:18', '2016-04-15 13:13:18', '', 'ADAM LARSON', '', 'publish', 'closed', 'closed', '', 'adam-larson', '', '', '2016-04-24 18:06:50', '2016-04-24 18:06:50', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=134', 0, 'team-member', '', 0),
(135, 1, '2016-04-15 13:14:50', '2016-04-15 13:14:50', '', 'ERIC MARLIN', '', 'publish', 'closed', 'closed', '', 'eric-marlin', '', '', '2016-04-24 18:06:39', '2016-04-24 18:06:39', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=135', 0, 'team-member', '', 0),
(136, 1, '2016-04-15 13:14:10', '2016-04-15 13:14:10', '', 'ERIC MARLIN', '', 'inherit', 'open', 'closed', '', 'eric-marlin_hi-res_bw', '', '', '2016-04-15 13:14:17', '2016-04-15 13:14:17', '', 135, 'http://cottonwood.dev/app/uploads/2016/04/Eric-Marlin_hi-res_BW.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2016-04-15 13:16:17', '2016-04-15 13:16:17', '', 'DORA CHI', '', 'publish', 'closed', 'closed', '', 'dora-chi', '', '', '2016-04-24 18:06:29', '2016-04-24 18:06:29', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=137', 0, 'team-member', '', 0),
(138, 1, '2016-04-15 13:18:13', '2016-04-15 13:18:13', '', 'KATHY FELIX', '', 'publish', 'closed', 'closed', '', 'kathy-felix', '', '', '2016-04-24 18:06:18', '2016-04-24 18:06:18', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=138', 0, 'team-member', '', 0),
(139, 1, '2016-04-15 13:20:08', '2016-04-15 13:20:08', '', 'STEVEN P. FALTZ, ARM, CPMC', '', 'publish', 'closed', 'closed', '', 'steven-p-faltz-arm-cpmc', '', '', '2016-04-24 18:06:03', '2016-04-24 18:06:03', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=139', 0, 'team-member', '', 0),
(140, 1, '2016-04-15 13:19:37', '2016-04-15 13:19:37', '', 'STEVEN P. FALTZ, ARM, CPMC', '', 'inherit', 'open', 'closed', '', 'steven-faltz-big', '', '', '2016-04-15 13:19:44', '2016-04-15 13:19:44', '', 139, 'http://cottonwood.dev/app/uploads/2016/04/Steven-Faltz-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2016-04-15 13:22:02', '2016-04-15 13:22:02', '', 'ANNETTE FOLCH', '', 'publish', 'closed', 'closed', '', 'annette-folch', '', '', '2016-04-24 18:05:53', '2016-04-24 18:05:53', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=141', 0, 'team-member', '', 0),
(142, 1, '2016-04-15 13:21:30', '2016-04-15 13:21:30', '', 'ANNETTE FOLCH', '', 'inherit', 'open', 'closed', '', 'annette-big', '', '', '2016-04-15 13:21:41', '2016-04-15 13:21:41', '', 141, 'http://cottonwood.dev/app/uploads/2016/04/Annette-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2016-04-15 13:26:26', '2016-04-15 13:26:26', '', 'JANA DANIEL', '', 'publish', 'closed', 'closed', '', 'jana-daniel', '', '', '2016-04-24 18:05:33', '2016-04-24 18:05:33', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=143', 0, 'team-member', '', 0),
(144, 1, '2016-04-15 13:25:57', '2016-04-15 13:25:57', '', 'JANA DANIEL', '', 'inherit', 'open', 'closed', '', 'jana-daniel-big', '', '', '2016-04-15 13:26:03', '2016-04-15 13:26:03', '', 143, 'http://cottonwood.dev/app/uploads/2016/04/Jana-Daniel-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2016-04-15 13:50:24', '2016-04-15 13:50:24', '', 'MARTY CURTIS', '', 'publish', 'closed', 'closed', '', 'marty-curtis', '', '', '2016-04-24 18:05:22', '2016-04-24 18:05:22', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=145', 0, 'team-member', '', 0),
(146, 1, '2016-04-15 13:49:45', '2016-04-15 13:49:45', '', 'MARTY CURTIS', '', 'inherit', 'open', 'closed', '', 'marty-curtis-big', '', '', '2016-04-15 13:49:52', '2016-04-15 13:49:52', '', 145, 'http://cottonwood.dev/app/uploads/2016/04/Marty-Curtis-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2016-04-15 13:52:17', '2016-04-15 13:52:17', '', 'JOCELYN FORCHT-LANGFITT', '', 'publish', 'closed', 'closed', '', 'jocelyn-forcht-langfitt', '', '', '2016-04-24 18:05:11', '2016-04-24 18:05:11', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=147', 0, 'team-member', '', 0),
(148, 1, '2016-04-15 13:51:41', '2016-04-15 13:51:41', '', 'JOCELYN FORCHT-LANGFITT', '', 'inherit', 'open', 'closed', '', 'jocelyn-forcht-langfitt-big', '', '', '2016-04-15 13:51:49', '2016-04-15 13:51:49', '', 147, 'http://cottonwood.dev/app/uploads/2016/04/Jocelyn-Forcht-Langfitt-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2016-04-15 13:54:23', '2016-04-15 13:54:23', '', 'JERRI RISCH', '', 'publish', 'closed', 'closed', '', 'jerri-risch', '', '', '2016-04-24 18:05:01', '2016-04-24 18:05:01', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=149', 0, 'team-member', '', 0),
(150, 1, '2016-04-15 13:53:39', '2016-04-15 13:53:39', '', 'JERRI RISCH', '', 'inherit', 'open', 'closed', '', 'jerri-risch-big', '', '', '2016-04-15 13:53:49', '2016-04-15 13:53:49', '', 149, 'http://cottonwood.dev/app/uploads/2016/04/Jerri-Risch-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2016-04-15 14:16:18', '2016-04-15 14:16:18', '', 'KENDRA ROBERTS', '', 'publish', 'closed', 'closed', '', 'kendra-roberts', '', '', '2016-04-24 18:04:50', '2016-04-24 18:04:50', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=151', 0, 'team-member', '', 0),
(152, 1, '2016-04-15 14:15:41', '2016-04-15 14:15:41', '', 'KENDRA ROBERTS', '', 'inherit', 'open', 'closed', '', 'kendra-roberts-big', '', '', '2016-04-15 14:15:46', '2016-04-15 14:15:46', '', 151, 'http://cottonwood.dev/app/uploads/2016/04/Kendra-Roberts-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2016-04-15 14:17:31', '2016-04-15 14:17:31', '', 'ASHLEY N. JONES', '', 'publish', 'closed', 'closed', '', 'ashley-n-jones', '', '', '2016-04-24 18:04:37', '2016-04-24 18:04:37', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=153', 0, 'team-member', '', 0),
(154, 1, '2016-04-15 14:19:55', '2016-04-15 14:19:55', '', 'PAM SNELLING', '', 'publish', 'closed', 'closed', '', 'pam-snelling', '', '', '2016-04-24 18:04:26', '2016-04-24 18:04:26', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=154', 0, 'team-member', '', 0),
(155, 1, '2016-04-15 14:19:21', '2016-04-15 14:19:21', '', 'PAM SNELLING', '', 'inherit', 'open', 'closed', '', 'pam-snelling-big', '', '', '2016-04-15 14:19:30', '2016-04-15 14:19:30', '', 154, 'http://cottonwood.dev/app/uploads/2016/04/Pam-Snelling-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2016-04-15 14:22:33', '2016-04-15 14:22:33', '', 'MARY A. HOLLINGSHED', '', 'publish', 'closed', 'closed', '', 'mary-a-hollingshed', '', '', '2016-04-24 18:04:16', '2016-04-24 18:04:16', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=156', 0, 'team-member', '', 0),
(157, 1, '2016-04-15 14:21:50', '2016-04-15 14:21:50', '', 'MARY A. HOLLINGSHED', '', 'inherit', 'open', 'closed', '', 'mary', '', '', '2016-04-15 14:21:56', '2016-04-15 14:21:56', '', 156, 'http://cottonwood.dev/app/uploads/2016/04/Mary.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2016-04-21 19:52:50', '2016-04-21 19:52:50', '', 'DANIEL SHAEFFER', '', 'publish', 'closed', 'closed', '', 'daniel-shaeffer-2', '', '', '2016-04-25 18:25:44', '2016-04-25 18:25:44', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=160', 0, 'team-member', '', 0),
(161, 1, '2016-04-21 19:54:25', '2016-04-21 19:54:25', '', 'CHAD CHRISTENSEN', '', 'publish', 'closed', 'closed', '', 'chad-christensen-3', '', '', '2016-04-24 16:39:47', '2016-04-24 16:39:47', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=161', 0, 'team-member', '', 0),
(162, 1, '2016-04-21 19:55:34', '2016-04-21 19:55:34', '', 'GREGG T. CHRISTENSEN', '', 'publish', 'closed', 'closed', '', 'gregg-t-christensen-2', '', '', '2016-04-24 18:03:42', '2016-04-24 18:03:42', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=162', 0, 'team-member', '', 0),
(163, 1, '2016-04-21 19:59:19', '2016-04-21 19:59:19', '', 'DAVID ROBERTSON', '', 'publish', 'closed', 'closed', '', 'david-robertson', '', '', '2016-04-24 16:39:31', '2016-04-24 16:39:31', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=163', 0, 'team-member', '', 0),
(164, 1, '2016-04-21 20:00:32', '2016-04-21 20:00:32', '', 'LANCE GRABER', '', 'publish', 'closed', 'closed', '', 'lance-graber', '', '', '2016-04-24 16:39:25', '2016-04-24 16:39:25', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=164', 0, 'team-member', '', 0),
(165, 1, '2016-04-21 20:02:12', '2016-04-21 20:02:12', '', 'WILLIAM ANDREWS', '', 'publish', 'closed', 'closed', '', 'william-andrews', '', '', '2016-04-24 16:39:17', '2016-04-24 16:39:17', '', 0, 'http://cottonwood.dev/?post_type=team-member&#038;p=165', 0, 'team-member', '', 0),
(167, 1, '2016-04-24 16:11:57', '2016-04-24 16:11:57', 'Cottonwood Residential acquired Altis Highland Park in Tampa, Florida on December 21, 2015. This unique, class-A property features 239 units with modern amenities including USB charging stations, granite counter tops, stainless steel refrigerators and designer tile bathrooms.<!--more-->\r\n\r\nEach of the contemporary studio, 1, 2 and 3 bedroom apartments blends high-end amenities with nearby world class golf and the cultural scene of Tampa’s Westchase neighborhood.\r\n\r\nBrandy Hall, Vice President of Operations at Cottonwood Residential, was on site at the property on the first day of the transition. “This is an amazing community. We’re so thrilled to own and manage such a wonderful place for our residents to call home.”\r\n\r\nAltis Highland Park is the seventh property owned or managed by Cottonwood Residential in Florida. It also joins sister property, 456 unit Sanctuary at Highland Park, as the company’s second fully-owned property in the Tampa market.\r\n\r\n“This acquisition shows how Cottonwood is continuing to grow its multifamily portfolio with exceptional assets in strong markets. We’re pleased to bring this kind of value to our investors, and to offer this level of amenities to residents,” remarked Chad Christensen, President of Cottonwood Residential.', 'Cottonwood Residential Acquires Altis Highland Park in Tampa, Florida', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2016-04-24 16:11:57', '2016-04-24 16:11:57', '', 65, 'http://cottonwood.dev/65-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2016-04-24 16:12:16', '2016-04-24 16:12:16', 'Cottonwood Residential has worked to position itself as a customer-focused company in its approach to customer reviews.<!--more--> The company’s multi-year effort to improve its reputation scores continues to pay dividends as rankings were recently released by J Turner Research. Cottonwood was recognized for being ranked #6 nationally for customer satisfaction.\r\n\r\nAnnette Folch, Director of Operations and Education, remarked: “We train and instill service at every level. We want to create a better overall experience for the resident. That’s the bedrock of our success with online reviews.”\r\n\r\nAccording to findings released in August 2015 by UK-based BrightLocal, 92% of consumers read online reviews. Apartment searchers are increasingly taking part in that trend, basing their apartment rental decision on comments and ratings made by others.\r\n\r\n“Marketing is no longer about delivering a message. It’s about delivering on our promises. It’s thrilling to see what we’re doing on site and how it’s creating positive word of mouth online,” says Matt Bullock, Director of Marketing.\r\n\r\nThe company continues to emphasize that all feedback is welcome. Any current or former residents, in addition to guests who have visited a nearby community, are encouraged to submit a review on Google, Yelp, or ApartmentRatings.com.', 'Cottonwood Residential Ranked #6 in NMHC Top 50 for Reputation', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-04-24 16:12:16', '2016-04-24 16:12:16', '', 69, 'http://cottonwood.dev/69-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2016-04-26 11:57:51', '2016-04-26 11:57:51', '', 'shutterstock_171334622', '', 'inherit', 'open', 'closed', '', 'shutterstock_171334622', '', '', '2016-04-26 11:57:51', '2016-04-26 11:57:51', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/shutterstock_171334622.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2016-04-26 11:58:37', '2016-04-26 11:58:37', '', 'shutterstock_279709709', '', 'inherit', 'open', 'closed', '', 'shutterstock_279709709', '', '', '2016-04-26 11:58:37', '2016-04-26 11:58:37', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/shutterstock_279709709.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2016-04-26 11:59:19', '2016-04-26 11:59:19', '', 'shutterstock_268449968', '', 'inherit', 'open', 'closed', '', 'shutterstock_268449968', '', '', '2016-04-26 11:59:19', '2016-04-26 11:59:19', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/shutterstock_268449968.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2016-04-26 11:59:57', '2016-04-26 11:59:57', '', 'shutterstock_194129525', '', 'inherit', 'open', 'closed', '', 'shutterstock_194129525', '', '', '2016-04-26 11:59:57', '2016-04-26 11:59:57', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/shutterstock_194129525.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2016-04-26 12:00:02', '2016-04-26 12:00:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-04-26 12:00:02', '2016-04-26 12:00:02', '', 8, 'http://cottonwood.dev/8-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2016-04-26 12:32:28', '2016-04-26 12:32:28', '', 'Careers', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/?p=174', 9, 'nav_menu_item', '', 0),
(176, 1, '2016-04-26 12:32:28', '2016-04-26 12:32:28', '', 'Find Your Home', '', 'publish', 'closed', 'closed', '', 'find-your-home', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/?p=176', 7, 'nav_menu_item', '', 0),
(177, 1, '2016-04-26 18:12:57', '2016-04-26 18:12:57', '', 'Investors', '', 'publish', 'closed', 'closed', '', 'investors-2', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/?p=177', 13, 'nav_menu_item', '', 0),
(178, 1, '2016-04-26 18:12:57', '2016-04-26 18:12:57', '', 'Employees', '', 'publish', 'closed', 'closed', '', 'employees', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/?p=178', 14, 'nav_menu_item', '', 0),
(179, 1, '2016-04-26 18:25:23', '2016-04-26 18:25:23', ' ', '', '', 'publish', 'closed', 'closed', '', '179', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/?p=179', 10, 'nav_menu_item', '', 0),
(181, 1, '2016-05-05 16:25:20', '2016-05-05 16:25:20', '', 'Alicante-1', '', 'inherit', 'open', 'closed', '', 'alicante-1', '', '', '2016-05-05 16:25:20', '2016-05-05 16:25:20', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/Alicante-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2016-05-05 16:25:22', '2016-05-05 16:25:22', '', 'Alicante', '', 'inherit', 'open', 'closed', '', 'alicante', '', '', '2016-05-05 16:25:22', '2016-05-05 16:25:22', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/Alicante.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2016-05-05 16:25:24', '2016-05-05 16:25:24', '', 'Enclave-on-Golden-Triangle', '', 'inherit', 'open', 'closed', '', 'enclave-on-golden-triangle', '', '', '2016-05-05 16:25:24', '2016-05-05 16:25:24', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/Enclave-on-Golden-Triangle.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2016-05-05 16:25:27', '2016-05-05 16:25:27', '', 'HeightsMeridian_Pool_37_72ppi', '', 'inherit', 'open', 'closed', '', 'heightsmeridian_pool_37_72ppi', '', '', '2016-05-05 16:25:27', '2016-05-05 16:25:27', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/HeightsMeridian_Pool_37_72ppi.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2016-05-05 16:25:28', '2016-05-05 16:25:28', '', 'Highland-Park', '', 'inherit', 'open', 'closed', '', 'highland-park', '', '', '2016-05-05 16:25:28', '2016-05-05 16:25:28', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/Highland-Park.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2016-05-05 16:25:30', '2016-05-05 16:25:30', '', 'Regatta', '', 'inherit', 'open', 'closed', '', 'regatta', '', '', '2016-05-05 16:25:30', '2016-05-05 16:25:30', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/Regatta.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2016-05-05 16:25:47', '2016-05-05 16:25:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-05-05 16:25:47', '2016-05-05 16:25:47', '', 8, 'http://cottonwood.dev/8-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2016-05-18 14:24:25', '2016-05-18 14:24:25', '', 'Who We Are', '', 'publish', 'closed', 'closed', '', 'acf_who-we-are', '', '', '2016-05-18 19:25:07', '2016-05-18 19:25:07', '', 0, 'http://cottonwood.dev/?post_type=acf&#038;p=189', 0, 'acf', '', 0),
(190, 1, '2016-05-18 14:25:58', '2016-05-18 14:25:58', '', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-05-18 14:25:58', '2016-05-18 14:25:58', '', 32, 'http://cottonwood.dev/32-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2016-05-18 14:56:02', '2016-05-18 14:56:02', '', 'Giving Back', '', 'publish', 'closed', 'closed', '', 'acf_giving-back', '', '', '2016-05-18 19:50:06', '2016-05-18 19:50:06', '', 0, 'http://cottonwood.dev/?post_type=acf&#038;p=191', 0, 'acf', '', 0),
(192, 1, '2016-05-18 14:58:10', '2016-05-18 14:58:10', '', 'Giving Back', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-05-18 14:58:10', '2016-05-18 14:58:10', '', 34, 'http://cottonwood.dev/34-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2016-05-18 15:34:03', '2016-05-18 15:34:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-05-18 15:34:03', '2016-05-18 15:34:03', '', 8, 'http://cottonwood.dev/8-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2016-05-18 15:39:38', '2016-05-18 15:39:38', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'acf_about-us', '', '', '2016-05-18 19:04:56', '2016-05-18 19:04:56', '', 0, 'http://cottonwood.dev/?post_type=acf&#038;p=194', 0, 'acf', '', 0),
(195, 1, '2016-05-18 15:39:57', '2016-05-18 15:39:57', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-05-18 15:39:57', '2016-05-18 15:39:57', '', 30, 'http://cottonwood.dev/30-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2016-05-18 16:02:09', '2016-05-18 16:02:09', '', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-05-18 16:02:09', '2016-05-18 16:02:09', '', 32, 'http://cottonwood.dev/32-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2016-05-18 16:10:45', '2016-05-18 16:10:45', '', 'Capabilities', '', 'publish', 'closed', 'closed', '', 'acf_capabilities', '', '', '2016-05-18 20:01:22', '2016-05-18 20:01:22', '', 0, 'http://cottonwood.dev/?post_type=acf&#038;p=197', 0, 'acf', '', 0),
(198, 1, '2016-05-18 16:11:25', '2016-05-18 16:11:25', '', 'Capabilities', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2016-05-18 16:11:25', '2016-05-18 16:11:25', '', 36, 'http://cottonwood.dev/36-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2016-05-18 16:16:26', '2016-05-18 16:16:26', '', 'Leadership Team', '', 'publish', 'closed', 'closed', '', 'acf_leadership-team', '', '', '2016-05-18 20:09:30', '2016-05-18 20:09:30', '', 0, 'http://cottonwood.dev/?post_type=acf&#038;p=199', 0, 'acf', '', 0),
(200, 1, '2016-05-18 16:17:20', '2016-05-18 16:17:20', '', 'Leadership Team', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2016-05-18 16:17:20', '2016-05-18 16:17:20', '', 38, 'http://cottonwood.dev/38-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2016-05-18 16:21:45', '2016-05-18 16:21:45', '', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-05-18 16:21:45', '2016-05-18 16:21:45', '', 32, 'http://cottonwood.dev/32-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2016-05-18 17:30:13', '2016-05-18 17:30:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-05-18 17:30:13', '2016-05-18 17:30:13', '', 8, 'http://cottonwood.dev/8-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2016-05-18 17:55:59', '2016-05-18 17:55:59', '', 'who-we-are-hero', '', 'inherit', 'open', 'closed', '', 'who-we-are-hero', '', '', '2016-05-18 17:55:59', '2016-05-18 17:55:59', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/who-we-are-hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2016-05-18 17:56:08', '2016-05-18 17:56:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-05-18 17:56:08', '2016-05-18 17:56:08', '', 8, 'http://cottonwood.dev/8-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2016-05-18 18:25:17', '2016-05-18 18:25:17', '', 'shutterstock_194129525', '', 'inherit', 'open', 'closed', '', 'shutterstock_194129525-2', '', '', '2016-05-18 18:25:17', '2016-05-18 18:25:17', '', 8, 'http://cottonwood.dev/app/uploads/2016/02/shutterstock_194129525-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(208, 1, '2016-05-18 18:25:34', '2016-05-18 18:25:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-05-18 18:25:34', '2016-05-18 18:25:34', '', 8, 'http://cottonwood.dev/8-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2016-05-18 19:05:25', '2016-05-18 19:05:25', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-05-18 19:05:25', '2016-05-18 19:05:25', '', 30, 'http://cottonwood.dev/30-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2016-05-18 19:28:56', '2016-05-18 19:28:56', '', 'shutterstock_180990944', '', 'inherit', 'open', 'closed', '', 'shutterstock_180990944', '', '', '2016-05-18 19:28:56', '2016-05-18 19:28:56', '', 32, 'http://cottonwood.dev/app/uploads/2016/03/shutterstock_180990944.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2016-05-18 19:29:35', '2016-05-18 19:29:35', '', 'shutterstock_309171938', '', 'inherit', 'open', 'closed', '', 'shutterstock_309171938', '', '', '2016-05-18 19:29:35', '2016-05-18 19:29:35', '', 32, 'http://cottonwood.dev/app/uploads/2016/03/shutterstock_309171938.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2016-05-18 19:30:45', '2016-05-18 19:30:45', '', 'shutterstock_262840061', '', 'inherit', 'open', 'closed', '', 'shutterstock_262840061', '', '', '2016-05-18 19:30:45', '2016-05-18 19:30:45', '', 32, 'http://cottonwood.dev/app/uploads/2016/03/shutterstock_262840061.jpg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2016-05-18 19:31:21', '2016-05-18 19:31:21', '', 'shutterstock_266080838', '', 'inherit', 'open', 'closed', '', 'shutterstock_266080838', '', '', '2016-05-18 19:31:21', '2016-05-18 19:31:21', '', 32, 'http://cottonwood.dev/app/uploads/2016/03/shutterstock_266080838.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2016-05-18 19:31:28', '2016-05-18 19:31:28', '', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-05-18 19:31:28', '2016-05-18 19:31:28', '', 32, 'http://cottonwood.dev/32-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2016-05-18 19:51:03', '2016-05-18 19:51:03', '', 'shutterstock_233804083', '', 'inherit', 'open', 'closed', '', 'shutterstock_233804083', '', '', '2016-05-18 19:51:03', '2016-05-18 19:51:03', '', 34, 'http://cottonwood.dev/app/uploads/2016/03/shutterstock_233804083.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2016-05-18 19:51:56', '2016-05-18 19:51:56', '', 'shutterstock_325756721', '', 'inherit', 'open', 'closed', '', 'shutterstock_325756721', '', '', '2016-05-18 19:51:56', '2016-05-18 19:51:56', '', 34, 'http://cottonwood.dev/app/uploads/2016/03/shutterstock_325756721.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2016-05-18 19:52:20', '2016-05-18 19:52:20', '', 'Giving Back', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-05-18 19:52:20', '2016-05-18 19:52:20', '', 34, 'http://cottonwood.dev/34-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2016-05-18 20:02:04', '2016-05-18 20:02:04', '', 'shutterstock_257743489', '', 'inherit', 'open', 'closed', '', 'shutterstock_257743489', '', '', '2016-05-18 20:02:04', '2016-05-18 20:02:04', '', 36, 'http://cottonwood.dev/app/uploads/2016/03/shutterstock_257743489.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_20_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(219, 1, '2016-05-18 20:02:31', '2016-05-18 20:02:31', '', 'shutterstock_16416475', '', 'inherit', 'open', 'closed', '', 'shutterstock_16416475', '', '', '2016-05-18 20:02:31', '2016-05-18 20:02:31', '', 36, 'http://cottonwood.dev/app/uploads/2016/03/shutterstock_16416475.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2016-05-18 20:03:11', '2016-05-18 20:03:11', '', 'shutterstock_337088285', '', 'inherit', 'open', 'closed', '', 'shutterstock_337088285', '', '', '2016-05-18 20:03:11', '2016-05-18 20:03:11', '', 36, 'http://cottonwood.dev/app/uploads/2016/03/shutterstock_337088285.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2016-05-18 20:03:18', '2016-05-18 20:03:18', '', 'Capabilities', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2016-05-18 20:03:18', '2016-05-18 20:03:18', '', 36, 'http://cottonwood.dev/36-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2016-05-18 20:10:08', '2016-05-18 20:10:08', '', 'shutterstock_328291079', '', 'inherit', 'open', 'closed', '', 'shutterstock_328291079', '', '', '2016-05-18 20:10:08', '2016-05-18 20:10:08', '', 38, 'http://cottonwood.dev/app/uploads/2016/03/shutterstock_328291079.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2016-05-18 20:10:14', '2016-05-18 20:10:14', '', 'Leadership Team', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2016-05-18 20:10:14', '2016-05-18 20:10:14', '', 38, 'http://cottonwood.dev/38-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2016-05-18 20:12:33', '2016-05-18 20:12:33', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'acf_contact-us', '', '', '2016-05-18 20:15:24', '2016-05-18 20:15:24', '', 0, 'http://cottonwood.dev/?post_type=acf&#038;p=224', 0, 'acf', '', 0),
(225, 1, '2016-05-18 20:13:11', '2016-05-18 20:13:11', '', 'shutterstock_249380374', '', 'inherit', 'open', 'closed', '', 'shutterstock_249380374', '', '', '2016-05-18 20:13:11', '2016-05-18 20:13:11', '', 15, 'http://cottonwood.dev/app/uploads/2016/02/shutterstock_249380374.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2016-05-18 20:13:16', '2016-05-18 20:13:16', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-05-18 20:13:16', '2016-05-18 20:13:16', '', 15, 'http://cottonwood.dev/15-revision-v1/', 0, 'revision', '', 0),
(227, 1, '2016-05-18 20:15:51', '2016-05-18 20:15:51', '', 'shutterstock_272091356', '', 'inherit', 'open', 'closed', '', 'shutterstock_272091356', '', '', '2016-05-18 20:15:51', '2016-05-18 20:15:51', '', 15, 'http://cottonwood.dev/app/uploads/2016/02/shutterstock_272091356.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2016-05-18 20:15:56', '2016-05-18 20:15:56', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-05-18 20:15:56', '2016-05-18 20:15:56', '', 15, 'http://cottonwood.dev/15-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2016-05-19 13:39:05', '2016-05-19 13:39:05', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-06-02 22:19:36', '2016-06-02 22:19:36', '', 0, 'http://cottonwood.dev/?p=229', 2, 'nav_menu_item', '', 0),
(230, 1, '2016-05-24 17:56:05', '2016-05-24 17:56:05', '', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-05-24 17:56:05', '2016-05-24 17:56:05', '', 32, 'http://cottonwood.dev/32-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2016-08-09 18:31:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2016-08-09 18:31:16', '0000-00-00 00:00:00', '', 0, 'http://cottonwood.dev/?p=231', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_rg_form`
--

CREATE TABLE `wp_20_rg_form` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_20_rg_form`
--

INSERT INTO `wp_20_rg_form` (`id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'Leave a Message', '2016-04-26 14:26:09', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_rg_form_meta`
--

CREATE TABLE `wp_20_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_20_rg_form_meta`
--

INSERT INTO `wp_20_rg_form_meta` (`form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{"title":"Leave a Message","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Send","imageUrl":""},"fields":[{"type":"text","id":1,"label":"Your name","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"description":"","inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","displayOnly":""},{"type":"email","id":2,"label":"Your email","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"description":"","inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","displayOnly":""},{"type":"textarea","id":3,"label":"Message","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"description":"","inputType":"","cssClass":"","inputName":"","adminOnly":false,"noDuplicates":false,"defaultValue":"","choices":"","conditionalLogic":"","displayOnly":""}],"version":"1.9.9","id":1,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"notifications":{"571f7a8203f01":{"id":"571f7a8203f01","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}},"confirmations":{"571f7a820e344":{"id":"571f7a820e344","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}},"subLabelPlacement":"below","cssClass":"","enableHoneypot":false,"enableAnimation":false,"save":{"enabled":false,"button":{"type":"link","text":"Save and Continue Later"}},"limitEntries":false,"limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":false,"scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":false,"requireLoginMessage":""}', NULL, '{"571f7a820e344":{"id":"571f7a820e344","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"571f7a8203f01":{"id":"571f7a8203f01","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_rg_form_view`
--

CREATE TABLE `wp_20_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_20_rg_form_view`
--

INSERT INTO `wp_20_rg_form_view` (`id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 1, '2016-04-26 14:33:12', '127.0.0.1', 2),
(2, 1, '2016-04-26 15:56:51', '127.0.0.1', 1),
(3, 1, '2016-05-18 20:11:15', '127.0.0.1', 7),
(4, 1, '2016-05-19 12:35:45', '127.0.0.1', 2),
(5, 1, '2016-05-24 11:38:15', '127.0.0.1', 3),
(6, 1, '2016-05-24 12:46:41', '127.0.0.1', 1),
(7, 1, '2016-05-24 13:12:43', '127.0.0.1', 2),
(8, 1, '2016-05-24 14:09:17', '127.0.0.1', 1),
(9, 1, '2016-05-26 11:23:10', '127.0.0.1', 1),
(10, 1, '2016-05-31 18:25:35', '127.0.0.1', 1),
(11, 1, '2016-06-01 19:59:24', '127.0.0.1', 2),
(12, 1, '2016-06-02 18:12:32', '127.0.0.1', 14),
(13, 1, '2016-06-02 20:32:30', '127.0.0.1', 1),
(14, 1, '2016-06-03 11:16:45', '127.0.0.1', 1),
(15, 1, '2016-06-03 12:54:50', '127.0.0.1', 6),
(16, 1, '2016-06-03 13:46:40', '127.0.0.1', 3),
(17, 1, '2016-06-03 14:01:43', '127.0.0.1', 8),
(18, 1, '2016-06-03 17:01:50', '127.0.0.1', 8),
(19, 1, '2016-06-03 19:03:09', '127.0.0.1', 1),
(20, 1, '2016-06-06 15:34:02', '127.0.0.1', 1),
(21, 1, '2016-06-06 15:34:02', '127.0.0.1', 1),
(22, 1, '2016-08-09 04:00:13', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_rg_incomplete_submissions`
--

CREATE TABLE `wp_20_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_rg_lead`
--

CREATE TABLE `wp_20_rg_lead` (
  `id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_20_rg_lead`
--

INSERT INTO `wp_20_rg_lead` (`id`, `form_id`, `post_id`, `date_created`, `is_starred`, `is_read`, `ip`, `source_url`, `user_agent`, `currency`, `payment_status`, `payment_date`, `payment_amount`, `payment_method`, `transaction_id`, `is_fulfilled`, `created_by`, `transaction_type`, `status`) VALUES
(1, 1, NULL, '2016-06-02 18:37:16', 0, 0, '127.0.0.1', 'http://cottonwood.dev/contact-us/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active'),
(2, 1, NULL, '2016-06-02 18:37:16', 0, 0, '127.0.0.1', 'http://cottonwood.dev/contact-us/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_rg_lead_detail`
--

CREATE TABLE `wp_20_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_20_rg_lead_detail`
--

INSERT INTO `wp_20_rg_lead_detail` (`id`, `lead_id`, `form_id`, `field_number`, `value`) VALUES
(1, 1, 1, 1, 'dffd'),
(2, 2, 1, 1, 'dffd'),
(3, 1, 1, 2, 'dbs@ffdd.com'),
(4, 2, 1, 2, 'dbs@ffdd.com'),
(5, 1, 1, 3, 'jknvisdisdvjs'),
(6, 2, 1, 3, 'jknvisdisdvjs');

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_rg_lead_detail_long`
--

CREATE TABLE `wp_20_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_rg_lead_meta`
--

CREATE TABLE `wp_20_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_rg_lead_notes`
--

CREATE TABLE `wp_20_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_termmeta`
--

CREATE TABLE `wp_20_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_terms`
--

CREATE TABLE `wp_20_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_20_terms`
--

INSERT INTO `wp_20_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'News', 'news', 0),
(4, 'Main Menu', 'main-menu', 0),
(5, 'Community', 'community', 0),
(6, 'New', 'new', 0),
(7, 'Residents', 'residents', 0),
(8, 'Rent', 'rent', 0),
(9, 'Save', 'save', 0),
(10, 'Senior Executives', 'senior-executives', 0),
(11, 'Property Management', 'property-management', 0),
(12, 'Board Members', 'board-members', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_term_relationships`
--

CREATE TABLE `wp_20_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_20_term_relationships`
--

INSERT INTO `wp_20_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 4, 0),
(65, 2, 0),
(65, 5, 0),
(65, 6, 0),
(65, 7, 0),
(65, 8, 0),
(65, 9, 0),
(69, 1, 0),
(72, 1, 0),
(72, 5, 0),
(72, 6, 0),
(72, 7, 0),
(72, 8, 0),
(72, 9, 0),
(74, 1, 0),
(76, 4, 0),
(79, 4, 0),
(81, 4, 0),
(82, 4, 0),
(83, 4, 0),
(84, 4, 0),
(93, 4, 0),
(156, 11, 0),
(174, 4, 0),
(176, 4, 0),
(177, 4, 0),
(178, 4, 0),
(179, 4, 0),
(229, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_term_taxonomy`
--

CREATE TABLE `wp_20_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_20_term_taxonomy`
--

INSERT INTO `wp_20_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'category', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 14),
(5, 5, 'post_tag', '', 0, 2),
(6, 6, 'post_tag', '', 0, 2),
(7, 7, 'post_tag', '', 0, 2),
(8, 8, 'post_tag', '', 0, 2),
(9, 9, 'post_tag', '', 0, 2),
(10, 10, 'categories', '', 0, 0),
(11, 11, 'categories', '', 0, 1),
(12, 12, 'categories', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_usermeta`
--

CREATE TABLE `wp_20_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_20_usermeta`
--

INSERT INTO `wp_20_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_20_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_20_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"aebd9193b9c9234e135ccbbe53d0c69ea50b1be8bb4bfe7f7bb93a05cac464a5";a:4:{s:10:"expiration";i:1470887948;s:2:"ip";s:3:"::1";s:2:"ua";s:118:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/601.6.17 (KHTML, like Gecko) Version/9.1.1 Safari/601.6.17";s:5:"login";i:1470715148;}s:64:"9a263389ef390da46faa4b8ffe354c54f8a631e4c4408049a19e83aad3552ec8";a:4:{s:10:"expiration";i:1470940275;s:2:"ip";s:3:"::1";s:2:"ua";s:118:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/601.6.17 (KHTML, like Gecko) Version/9.1.1 Safari/601.6.17";s:5:"login";i:1470767475;}}'),
(15, 1, 'wp_20_dashboard_quick_press_last_post_id', '231');

-- --------------------------------------------------------

--
-- Table structure for table `wp_20_users`
--

CREATE TABLE `wp_20_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_20_users`
--

INSERT INTO `wp_20_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BezHlQObeQcMuzxz/OrNZ8G0W8divd.', 'admin', 'm.walcott33@gmail.com', '', '2016-08-09 03:59:00', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_20_commentmeta`
--
ALTER TABLE `wp_20_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_20_comments`
--
ALTER TABLE `wp_20_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_20_links`
--
ALTER TABLE `wp_20_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_20_options`
--
ALTER TABLE `wp_20_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_20_postmeta`
--
ALTER TABLE `wp_20_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_20_posts`
--
ALTER TABLE `wp_20_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_20_rg_form`
--
ALTER TABLE `wp_20_rg_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_20_rg_form_meta`
--
ALTER TABLE `wp_20_rg_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_20_rg_form_view`
--
ALTER TABLE `wp_20_rg_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_20_rg_incomplete_submissions`
--
ALTER TABLE `wp_20_rg_incomplete_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_20_rg_lead`
--
ALTER TABLE `wp_20_rg_lead`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_20_rg_lead_detail`
--
ALTER TABLE `wp_20_rg_lead_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_field_number` (`lead_id`,`field_number`);

--
-- Indexes for table `wp_20_rg_lead_detail_long`
--
ALTER TABLE `wp_20_rg_lead_detail_long`
  ADD PRIMARY KEY (`lead_detail_id`);

--
-- Indexes for table `wp_20_rg_lead_meta`
--
ALTER TABLE `wp_20_rg_lead_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `form_id_meta_key` (`form_id`,`meta_key`(191));

--
-- Indexes for table `wp_20_rg_lead_notes`
--
ALTER TABLE `wp_20_rg_lead_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_user_key` (`lead_id`,`user_id`);

--
-- Indexes for table `wp_20_termmeta`
--
ALTER TABLE `wp_20_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_20_terms`
--
ALTER TABLE `wp_20_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_20_term_relationships`
--
ALTER TABLE `wp_20_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_20_term_taxonomy`
--
ALTER TABLE `wp_20_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_20_usermeta`
--
ALTER TABLE `wp_20_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_20_users`
--
ALTER TABLE `wp_20_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_20_commentmeta`
--
ALTER TABLE `wp_20_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_20_comments`
--
ALTER TABLE `wp_20_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_20_links`
--
ALTER TABLE `wp_20_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_20_options`
--
ALTER TABLE `wp_20_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1107;
--
-- AUTO_INCREMENT for table `wp_20_postmeta`
--
ALTER TABLE `wp_20_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1777;
--
-- AUTO_INCREMENT for table `wp_20_posts`
--
ALTER TABLE `wp_20_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=232;
--
-- AUTO_INCREMENT for table `wp_20_rg_form`
--
ALTER TABLE `wp_20_rg_form`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_20_rg_form_view`
--
ALTER TABLE `wp_20_rg_form_view`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_20_rg_lead`
--
ALTER TABLE `wp_20_rg_lead`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_20_rg_lead_detail`
--
ALTER TABLE `wp_20_rg_lead_detail`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_20_rg_lead_meta`
--
ALTER TABLE `wp_20_rg_lead_meta`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_20_rg_lead_notes`
--
ALTER TABLE `wp_20_rg_lead_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_20_termmeta`
--
ALTER TABLE `wp_20_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_20_terms`
--
ALTER TABLE `wp_20_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wp_20_term_taxonomy`
--
ALTER TABLE `wp_20_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wp_20_usermeta`
--
ALTER TABLE `wp_20_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wp_20_users`
--
ALTER TABLE `wp_20_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
