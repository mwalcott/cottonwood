SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE IF NOT EXISTS `#__wpl_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `position` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `index` float(5,2) NOT NULL DEFAULT '99.00',
  `params` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_title` tinyint(4) NOT NULL DEFAULT '1',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

INSERT INTO `#__wpl_activities` (`id`, `activity`, `position`, `enabled`, `index`, `params`, `show_title`, `title`) VALUES
(1, 'listing_gallery', 'plisting_position1', 0, 0.13, '', 0, ''),
(3, 'listing_gallery:pshow', 'pshow_gallery', 1, 0.05, '{"image_width":"1600","image_height":"420","image_class":"","rewrite":"0","watermark":"0"}', 0, ''),
(2, 'listing_links', 'plisting_position2', 1, 0.03, '{"facebook":"1","google_plus":"1","twitter":"1","pinterest":"1"}', 0, ''),
(4, 'listing_links:pshow', 'pshow_position2', 1, 0.04, '{"facebook":"1","google_plus":"1","twitter":"1","pinterest":"1"}', 0, ''),
(5, 'property_manager_actions', 'pmanager_position2', 1, 2.00, '', 0, ''),
(6, 'listing_gallery:pmanager', 'pmanager_position3', 1, 0.12, '', 0, ''),
(7, 'agent_info', 'pshow_position2', 1, 0.06, '', 1, 'Agent info'),
(8, 'listing_rooms', 'pshow_position2', 1, 0.07, '', 1, 'Property Rooms'),
(9, 'listing_attachments', 'pshow_position2', 1, 0.08, '', 1, 'Attachments'),
(10, 'qrcode:default', 'pshow_qr_code', 1, 0.10, '{"picture_width":"90","picture_height":"90","outer_margin":"2","size":"4"}', 1, 'QR Code'),
(11, 'listing_videos', 'pshow_video', 0, 0.14, '', 0, ''),
(12, 'agent_info', 'profile_show_position1', 1, 0.02, '', 1, 'Agent info'),
(13, 'listing_gallery', 'wpl_property_listing_image', 1, 0.01, '{"image_width":"285","image_height":"200","image_class":"","rewrite":"0","watermark":"0"}', 0, ''),
(14, 'googlemap', 'plisting_position1', 1, 0.11, '', 0, ''),
(15, 'googlemap:pshow', 'pshow_googlemap', 1, 1.00, '{"default_lt":"38.685516","default_ln":"-101.073324","default_zoom":"4"}', 0, '');

CREATE TABLE IF NOT EXISTS `#__wpl_addons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `addon_name` varchar(100) NOT NULL,
  `params` text NOT NULL,
  `update` varchar(200) NOT NULL,
  `update_key` varchar(100) NOT NULL,
  `support_key` varchar(100) NOT NULL,
  `updatable` tinyint(4) NOT NULL DEFAULT '1',
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_cronjobs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cronjob_name` varchar(255) NOT NULL,
  `period` int(10) NOT NULL,
  `class_location` varchar(255) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `function_name` varchar(100) NOT NULL,
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `latest_run` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `#__wpl_cronjobs` (`id`, `cronjob_name`, `period`, `class_location`, `class_name`, `function_name`, `params`, `enabled`, `latest_run`) VALUES
(1, 'Location Text Update', 24, 'libraries.locations', 'wpl_locations', 'update_locationtextsearch_data', '', 1, '2014-02-10 08:14:11'),
(2, 'Remove Expired tmp Directories', 24, 'global', 'wpl_global', 'delete_expired_tmp', '', 1, '2014-02-10 08:09:10');

CREATE TABLE IF NOT EXISTS `#__wpl_dbcat` (
  `id` int(11) NOT NULL,
  `kind` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=property, 1=complex',
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT '',
  `index` float NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `pshow` tinyint(4) NOT NULL,
  `searchmod` tinyint(4) NOT NULL,
  `rankable` tinyint(4) NOT NULL,
  `prefix` varchar(5) NOT NULL,
  `listing_specific` varchar(200) NOT NULL,
  `property_type_specific` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `#__wpl_dbcat` (`id`, `kind`, `name`, `icon`, `index`, `enabled`, `pshow`, `searchmod`, `rankable`, `prefix`, `listing_specific`, `property_type_specific`) VALUES
(1, 0, 'Basic Details', 'wpl_basic.png', 1, 1, 1, 1, 1, 'b', '', ''),
(2, 0, 'Address Map', 'wpl_map.png', 2, 1, 1, 1, 1, 'ad', '', ''),
(3, 0, 'Image Gallery', 'wpl_gallery.png', 3, 1, 0, 1, 0, 'gal', '', ''),
(4, 0, 'Features', 'wpl_features.png', 1.5, 1, 1, 1, 1, 'f', '', ''),
(5, 0, 'Appliances', 'wpl_appliance.png', 1.7, 1, 1, 1, 1, 'app', '', ''),
(6, 0, 'Neighborhood', 'wpl_neihbor.png', 2.5, 1, 1, 1, 1, 'n', '', ''),
(7, 0, 'Video', 'wpl_video.png', 7, 1, 0, 0, 0, 'v', '9,10,', ''),
(9, 0, 'Attachments', 'wpl_attachments.png', 9, 1, 0, 0, 0, 'att', '', ''),
(10, 2, 'Basic Details', 'wpl_basic.png', 1, 1, 1, 1, 1, 'b', '', ''),
(11, 0, 'Specialties', 'wpl_specialties.png', 10, 1, 0, 1, 1, 'sp', '', '');

CREATE TABLE IF NOT EXISTS `#__wpl_dbst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=property, 1=complex',
  `mandatory` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=no,1=yes,2=always,3=never',
  `name` varchar(150) NOT NULL,
  `type` varchar(20) NOT NULL,
  `options` text NOT NULL,
  `enabled` tinyint(4) NOT NULL COMMENT '0=no,1=yes,2=always',
  `pshow` varchar(255) NOT NULL DEFAULT '1' COMMENT 'To show in propertyshow or not',
  `plisting` tinyint(4) NOT NULL,
  `searchmod` tinyint(4) NOT NULL DEFAULT '0',
  `editable` tinyint(4) NOT NULL DEFAULT '1',
  `deletable` tinyint(4) NOT NULL DEFAULT '1',
  `index` float(5,2) NOT NULL,
  `css` varchar(50) NOT NULL,
  `style` text NOT NULL,
  `specificable` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=no,1=yes',
  `listing_specific` varchar(200) NOT NULL DEFAULT '',
  `property_type_specific` varchar(200) NOT NULL DEFAULT '',
  `table_name` varchar(30) NOT NULL DEFAULT '' COMMENT 'table which the data is stored to',
  `table_column` varchar(30) NOT NULL COMMENT 'column of table which datat is stored to',
  `category` int(11) NOT NULL COMMENT 'in propertywizard category',
  `rankable` tinyint(4) NOT NULL DEFAULT '1',
  `rank_point` int(11) NOT NULL,
  `comments` text,
  `pwizard` varchar(255) NOT NULL DEFAULT '1' COMMENT '0=no,1=yes,2=always',
  `text_search` tinyint(4) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=915 ;

INSERT INTO `#__wpl_dbst` (`id`, `kind`, `mandatory`, `name`, `type`, `options`, `enabled`, `pshow`, `plisting`, `searchmod`, `editable`, `deletable`, `index`, `css`, `style`, `specificable`, `listing_specific`, `property_type_specific`, `table_name`, `table_column`, `category`, `rankable`, `rank_point`, `comments`, `pwizard`, `text_search`, `params`) VALUES
(1, 0, 0, 'Listing Setting', 'separator', '', 1, '0', 0, 1, 1, 0, 1.01, '', 'font-weight:bold', 0, '', '', '', '', 1, 1, 0, '', '1', 1, ''),
(2, 0, 2, 'Listing Type', 'listings', '', 2, '1', 1, 1, 1, 1, 1.03, '', '', 0, '', '', 'wpl_properties', 'listing', 1, 0, 0, '', '1', 1, ''),
(3, 0, 2, 'Property Type', 'property_types', '', 2, '1', 1, 1, 1, 1, 1.02, '', '', 0, '', '', 'wpl_properties', 'property_type', 1, 0, 0, '', '1', 1, ''),
(4, 0, 0, 'Ref ID', 'text', '', 1, '0', 0, 1, 1, 1, 1.05, '', '', 1, '', '', 'wpl_properties', 'ref_id', 1, 1, 10, '', '1', 1, ''),
(5, 0, 3, 'Listing ID', 'number', '{"readonly":"1"}', 1, '1', 1, 1, 1, 1, 1.04, '', '', 1, '', '', 'wpl_properties', 'mls_id', 1, 0, 0, '', '1', 1, ''),
(6, 0, 1, 'Price', 'price', '{"call":"1"}', 1, '1', 1, 1, 1, 1, 1.08, '', '', 1, '', '', 'wpl_properties', 'price', 1, 0, 0, '', '1', 1, ''),
(7, 0, 1, 'View', 'select', '{"params":{"1":{"key":"1","enabled":"1","value":"Garden"},"2":{"key":"2","enabled":"1","value":"Street"},"3":{"key":"3","enabled":"1","value":"Sea"}}}', 1, '1', 0, 1, 1, 1, 1.10, '', '', 1, '', '', 'wpl_properties', 'field_7', 1, 1, 0, '', '1', 1, ''),
(8, 0, 1, 'Bedrooms', 'number', '', 1, '1', 1, 1, 0, 1, 1.11, '', '', 1, '', '6,7,', 'wpl_properties', 'bedrooms', 1, 1, 0, '', '1', 1, ''),
(9, 0, 1, 'Bathrooms', 'number', '', 1, '1', 1, 1, 1, 1, 1.13, '', '', 1, '', '6,7,13,', 'wpl_properties', 'bathrooms', 1, 1, 0, '', '1', 1, ''),
(10, 0, 1, 'Built Up Area', 'area', '', 1, '1', 1, 1, 1, 1, 1.15, '', '', 1, '', '6,7,13,', 'wpl_properties', 'living_area', 1, 1, 0, '', '1', 1, ''),
(11, 0, 0, 'Lot Area', 'area', '', 1, '1', 1, 1, 1, 1, 1.17, '', '', 1, '', '', 'wpl_properties', 'lot_area', 1, 1, 0, '', '1', 1, ''),
(12, 0, 0, 'Year Built', 'number', '', 1, '1', 0, 1, 1, 1, 1.16, '', '', 1, '', '', 'wpl_properties', 'build_year', 1, 1, 0, '', '1', 1, ''),
(13, 0, 1, 'Rooms', 'number', '', 1, '1', 1, 1, 0, 1, 1.12, '', '', 1, '', '13,', 'wpl_properties', 'rooms', 1, 1, 0, '', '1', 1, ''),
(14, 0, 1, 'Price Type', 'select', '{"params":{"1":{"key":"30","enabled":"1","value":"Per Month"},"2":{"key":"7","enabled":"1","value":"Per Week"},"3":{"key":"365","enabled":"1","value":"Per Year"},"4":{"key":"1","enabled":"1","value":"Per Day"}}}', 1, '1', 1, 1, 0, 1, 1.07, '', '', 1, '10,12,', '', 'wpl_properties', 'price_period', 1, 1, 0, '', '1', 1, ''),
(17, 0, 0, 'Half Bathrooms', 'number', '', 1, '1', 1, 1, 1, 1, 1.14, '', '', 1, '', '6,7,13,', 'wpl_properties', 'half_bathrooms', 1, 1, 0, '', '1', 1, ''),
(18, 0, 0, 'Text Search', 'textsearch', '', 2, '0', 0, 1, 0, 1, 1.22, '', '', 0, '', '', 'wpl_properties', 'textsearch', 1, 0, 0, '', '0', 0, ''),
(19, 0, 0, 'Age of Listing', 'date', '', 1, '0', 0, 1, 0, 0, 1.09, '', '', 0, '', '', 'wpl_properties', 'add_date', 1, 0, 0, '', '0', 0, ''),
(40, 0, 0, 'Address Location', 'separator', '', 1, '0', 0, 1, 1, 0, 1.00, '', 'font-weight:bold', 0, '', '', '', '', 2, 1, 0, '', '1', 1, ''),
(41, 0, 0, 'Location', 'locations', '', 1, '1', 1, 1, 1, 1, 2.00, '', '', 1, '', '', 'wpl_properties', '', 2, 0, 0, '', '1', 1, ''),
(42, 0, 0, 'Street', 'text', '', 1, '1', 1, 1, 1, 1, 12.00, 'class', 'style', 1, '', '', 'wpl_properties', 'field_42', 2, 1, 0, '', '1', 1, ''),
(43, 0, 0, 'Postal Code', 'text', '', 1, '1', 1, 1, 1, 1, 21.00, '', '', 1, '', '', 'wpl_properties', 'post_code', 2, 1, 30, '', '1', 1, ''),
(50, 0, 0, 'Google Map', 'separator', '', 1, '0', 0, 1, 1, 0, 48.00, '', '', 0, '', '', '', '', 2, 1, 0, '', '1', 0, ''),
(51, 0, 3, 'Longitude', 'text', '{"readonly":"1"}', 2, '1', 1, 0, 0, 1, 49.00, '', '', 1, '', '', 'wpl_properties', 'googlemap_ln', 2, 0, 0, '', '1', 0, ''),
(52, 0, 3, 'Latitude', 'text', '{"readonly":"1"}', 2, '1', 1, 0, 0, 1, 58.00, '', '', 1, '', '', 'wpl_properties', 'googlemap_lt', 2, 0, 0, '', '1', 0, ''),
(53, 0, 3, 'Map', 'googlemap', '', 1, '0', 0, 0, 0, 1, 67.00, '', '', 1, '', '', '', 'googlemap_lt', 2, 1, 50, '', '1', 1, ''),
(54, 0, 0, 'Building Name', 'text', '', 1, '1', 1, 1, 1, 1, 30.00, '', '', 1, '', '', 'wpl_properties', 'field_54', 2, 1, 30, '', '1', 1, ''),
(55, 0, 0, 'Floor Number', 'number', '', 1, '1', 1, 1, 1, 1, 39.00, '', '', 1, '', '', 'wpl_properties', 'field_55', 2, 1, 10, '', '1', 1, ''),
(91, 0, 0, 'Appliances', 'separator', '', 1, '0', 0, 1, 1, 0, 1.00, '', 'font-weight:bold', 0, '', '', '', '', 5, 1, 0, '', '1', 1, ''),
(92, 0, 0, 'Neighborhood', 'separator', '', 1, '0', 0, 1, 1, 0, 1.00, '', 'font-weight:bold', 0, '', '', '', '', 6, 1, 0, '', '1', 1, ''),
(100, 0, 3, 'Shopping Center', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 1.00, '', '', 1, '', '', 'wpl_properties', 'n_100', 6, 1, 10, '', '1', 1, ''),
(101, 0, 3, 'Hospital', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 21.00, '', '', 1, '', '', 'wpl_properties', 'n_101', 6, 1, 10, '', '1', 1, ''),
(102, 0, 3, 'Cinema', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 101.00, '', '', 1, '', '', 'wpl_properties', 'n_102', 6, 1, 0, '', '1', 1, ''),
(103, 0, 3, 'Park', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 111.00, '', '', 1, '', '', 'wpl_properties', 'n_103', 6, 1, 10, '', '1', 1, ''),
(105, 0, 3, 'Beach', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 81.00, '', '', 1, '', '', 'wpl_properties', 'n_105', 6, 1, 20, '', '1', 1, ''),
(106, 0, 3, 'Coffee Shop', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 71.00, '', '', 1, '', '', 'wpl_properties', 'n_106', 6, 1, 0, '', '1', 1, ''),
(107, 0, 3, 'Airport', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 61.00, '', '', 1, '', '', 'wpl_properties', 'n_107', 6, 1, 0, '', '1', 1, ''),
(108, 0, 3, 'Bus Station', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 51.00, '', '', 1, '', '', 'wpl_properties', 'n_108', 6, 1, 0, '', '1', 1, ''),
(109, 0, 3, 'Train Station', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 41.00, '', '', 1, '', '', 'wpl_properties', 'n_109', 6, 1, 0, '', '1', 1, ''),
(110, 0, 3, 'School', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 121.00, '', '', 1, '', '', 'wpl_properties', 'n_110', 6, 1, 10, '', '1', 1, ''),
(111, 0, 3, 'University', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 131.00, '', '', 1, '', '', 'wpl_properties', 'n_111', 6, 1, 0, '', '1', 1, ''),
(112, 0, 3, 'Police Station', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 31.00, '', '', 1, '', '', 'wpl_properties', 'n_112', 6, 1, 10, '', '1', 1, ''),
(113, 0, 3, 'Town Center', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 11.00, '', '', 1, '', '', 'wpl_properties', 'n_113', 6, 1, 20, '', '1', 1, ''),
(114, 0, 3, 'Exhibition', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 151.00, '', '', 1, '', '', 'wpl_properties', 'n_114', 6, 1, 0, '', '1', 1, ''),
(115, 0, 3, 'Tourist Site', 'neighborhood', '', 1, '1', 0, 1, 1, 1, 141.00, '', '', 1, '', '', 'wpl_properties', 'n_115', 6, 1, 0, '', '1', 1, ''),
(129, 0, 0, 'Features', 'separator', '', 1, '0', 0, 1, 1, 0, 4.00, '', 'font-weight:bold', 0, '', '', '', '', 4, 1, 0, '', '1', 1, ''),
(130, 0, 3, 'Heating System', 'feature', '{"type":"single","values":[{"key":"1","value":"Split"},{"key":"2","value":"Heat Pump"},{"key":"3","value":"Central"}]}', 1, '1', 0, 1, 1, 1, 4.04, '', '', 1, '', '', 'wpl_properties', 'f_130', 4, 1, 5, '', '1', 1, ''),
(131, 0, 3, 'Swimming Pool', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.02, '', '', 1, '', '', 'wpl_properties', 'f_131', 4, 1, 30, '', '1', 1, ''),
(132, 0, 3, 'Jacuzzi', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.03, '', '', 1, '', '', 'wpl_properties', 'f_132', 4, 1, 10, '', '1', 1, ''),
(133, 0, 3, 'Elevator', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.06, '', '', 1, '', '', 'wpl_properties', 'f_133', 4, 1, 5, '', '1', 1, ''),
(134, 0, 3, 'Cooling System', 'feature', '{"type":"single","values":[{"key":"1","value":"Split"},{"key":"2","value":"Central"}]}', 1, '1', 0, 1, 1, 1, 4.05, '', '', 1, '', '', 'wpl_properties', 'f_134', 4, 1, 10, '', '1', 1, ''),
(135, 0, 3, 'Garden', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.07, '', '', 1, '', '', 'wpl_properties', 'f_135', 4, 1, 0, '', '1', 1, ''),
(136, 0, 3, 'Balcony', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.08, '', '', 1, '', '', 'wpl_properties', 'f_136', 4, 1, 5, '', '1', 1, ''),
(137, 0, 3, 'Basement', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.10, '', '', 1, '', '', 'wpl_properties', 'f_137', 4, 1, 0, '', '1', 1, ''),
(138, 0, 3, 'Fence', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.11, '', '', 1, '', '', 'wpl_properties', 'f_138', 4, 1, 0, '', '1', 1, ''),
(139, 0, 3, 'View', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.12, '', '', 1, '', '', 'wpl_properties', 'f_139', 4, 1, 0, '', '1', 1, ''),
(140, 0, 3, 'Pet Policy', 'feature', '{"type":"single","values":[{"key":"1","value":"Allowed"},{"key":"2","value":"Not Allowed"}]}', 1, '1', 0, 1, 1, 1, 4.13, '', '', 1, '', '', 'wpl_properties', 'f_140', 4, 1, 0, '', '1', 1, ''),
(141, 0, 3, 'Kitchen', 'feature', '{"type":"single","values":[{"key":"1","value":"Fully Equipped"},{"key":"2","value":"Semi Equipped"},{"key":"3","value":"Not Equipped"}]}', 1, '1', 0, 1, 1, 1, 4.14, '', '', 1, '', '', 'wpl_properties', 'f_141', 4, 1, 0, '', '1', 1, ''),
(142, 0, 3, 'Steam', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.15, '', '', 1, '', '', 'wpl_properties', 'f_142', 4, 1, 0, '', '1', 1, ''),
(143, 0, 3, 'Gymnasium', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.16, '', '', 1, '', '', 'wpl_properties', 'f_143', 4, 1, 0, '', '1', 1, ''),
(144, 0, 3, 'Fireplace', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.17, '', '', 1, '', '', 'wpl_properties', 'f_144', 4, 1, 0, '', '1', 1, ''),
(146, 0, 3, 'Patio', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.19, '', '', 1, '', '', 'wpl_properties', 'f_146', 4, 1, 0, '', '1', 1, ''),
(147, 0, 3, 'Roof Deck', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.20, '', '', 1, '', '', 'wpl_properties', 'f_147', 4, 1, 0, '', '1', 1, ''),
(148, 0, 3, 'High Ceiling', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.21, '', '', 1, '', '', 'wpl_properties', 'f_148', 4, 1, 0, '', '1', 1, ''),
(149, 0, 3, 'Storage', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 4.22, '', '', 1, '', '', 'wpl_properties', 'f_149', 4, 1, 0, '', '1', 1, ''),
(150, 0, 3, 'Parking', 'feature', '{"type":"single","values":[{"key":"1","value":"1"},{"key":"2","value":"2"},{"key":"3","value":"3"},{"key":"4","value":"4"},{"key":"5","value":"5"},{"key":"6","value":"6"}]}', 1, '1', 0, 1, 1, 1, 4.23, '', '', 1, '', '', 'wpl_properties', 'f_150', 4, 1, 10, '', '1', 1, ''),
(151, 0, 3, 'Furnished', 'feature', '{"type":"single","values":[{"key":"1","value":"Fully Furnished"},{"key":"2","value":"Semi Furnished"},{"key":"3","value":"Not Furnished"}]}', 1, '1', 0, 1, 1, 1, 4.24, '', '', 1, '', '', 'wpl_properties', 'f_151', 4, 1, 10, '', '1', 1, ''),
(152, 0, 3, 'Security', 'feature', '{"type":"multiple","values":[{"key":"1","value":"Watchman"},{"key":"2","value":"Digicode"},{"key":"3","value":"Alarm"},{"key":"4","value":"Lock"},{"key":"5","value":"Cctv"},{"key":"6","value":"No"},{"key":"7","value":"Other"}]}', 1, '1', 0, 1, 1, 1, 4.18, '', '', 1, '', '', 'wpl_properties', 'f_152', 4, 1, 10, '', '1', 1, ''),
(153, 0, 3, 'Refrigerator', 'feature', '{"type":"single","values":[{"key":"1","value":"Simple"},{"key":"2","value":"Side By Side"}]}', 1, '1', 0, 1, 1, 1, 1.00, '', '', 1, '', '', 'wpl_properties', 'f_153', 5, 1, 5, '', '1', 1, ''),
(154, 0, 3, 'Stove', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 21.00, '', '', 1, '', '', 'wpl_properties', 'f_154', 5, 1, 5, '', '1', 1, ''),
(155, 0, 3, 'Microwave', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 11.00, '', '', 1, '', '', 'wpl_properties', 'f_155', 5, 1, 5, '', '1', 1, ''),
(156, 0, 3, 'Washing Machine', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 31.00, '', '', 1, '', '', 'wpl_properties', 'f_156', 5, 1, 5, '', '1', 1, ''),
(157, 0, 3, 'TV', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 41.00, '', '', 1, '', '', 'wpl_properties', 'f_157', 5, 1, 5, '', '1', 1, ''),
(158, 0, 3, 'CD Player', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 51.00, '', '', 1, '', '', 'wpl_properties', 'f_158', 5, 1, 5, '', '1', 1, ''),
(159, 0, 3, 'Internet', 'feature', '{"type":"single","values":[{"key":"1","value":"Exclusive"},{"key":"2","value":"Inclusive"},{"key":"3","value":"Wireless"}]}', 1, '1', 0, 1, 1, 1, 171.00, '', '', 1, '', '', 'wpl_properties', 'f_159', 5, 1, 5, '', '1', 1, ''),
(160, 0, 3, 'Hair Dryer', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 61.00, '', '', 1, '', '', 'wpl_properties', 'f_160', 5, 1, 5, '', '1', 1, ''),
(161, 0, 3, 'Cleaning Service', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 71.00, '', '', 1, '', '', 'wpl_properties', 'f_161', 5, 1, 5, '', '1', 1, ''),
(162, 0, 3, 'Oven', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 81.00, '', '', 1, '', '', 'wpl_properties', 'f_162', 5, 1, 5, '', '1', 1, ''),
(163, 0, 3, 'Dishwasher', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 91.00, '', '', 1, '', '', 'wpl_properties', 'f_163', 5, 1, 5, '', '1', 1, ''),
(164, 0, 3, 'Dishes', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 101.00, '', '', 1, '', '', 'wpl_properties', 'f_164', 5, 1, 5, '', '1', 1, ''),
(165, 0, 3, 'Satellite', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 111.00, '', '', 1, '', '', 'wpl_properties', 'f_165', 5, 1, 5, '', '1', 1, ''),
(166, 0, 3, 'Telephone', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 121.00, '', '', 1, '', '', 'wpl_properties', 'f_166', 5, 1, 5, '', '1', 1, ''),
(167, 0, 3, 'Towels', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 131.00, '', '', 1, '', '', 'wpl_properties', 'f_167', 5, 1, 5, '', '1', 1, ''),
(168, 0, 3, 'Hot Tub', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 151.00, '', '', 1, '', '', 'wpl_properties', 'f_168', 5, 1, 5, '', '1', 1, ''),
(169, 0, 3, 'Iron', 'feature', '{"type":"none"}', 1, '1', 0, 1, 1, 1, 161.00, '', '', 1, '', '', 'wpl_properties', 'f_169', 5, 1, 5, '', '1', 1, ''),
(171, 0, 0, 'Rooms and Sizes', 'rooms', '', 1, '0', 0, 0, 0, 1, 4.01, '', '', 1, '', '', '', '', 4, 0, 0, '', '1', 0, ''),
(300, 0, 3, 'Gallery', 'gallery', '{"ext_file":"gif,jpeg,png,jpg","file_size":"500"}', 1, '0', 0, 1, 1, 1, 1.00, '', '', 1, '', '', '', '', 3, 0, 0, '', '1', 0, ''),
(301, 0, 0, 'Attachments', 'attachments', '{"ext_file":"pdf,doc,docx,zip,tar,rar,mp3,txt","file_size":"5000"}', 1, '0', 0, 1, 1, 1, 1.00, '', '', 0, '', '', '', '', 9, 0, 0, '', '1', 0, ''),
(302, 0, 0, 'Details', 'separator', '', 1, '0', 0, 1, 1, 0, 1.06, '', 'font-weight:bold', 0, '', '', '', '', 1, 1, 0, '', '1', 1, ''),
(308, 0, 0, 'Property Description', 'textarea', '{"advanced_editor":"1","rows":"7","cols":"41"}', 1, '0', 0, 1, 1, 1, 1.19, '', '', 1, '', '', 'wpl_properties', 'field_308', 1, 1, 140, '', '1', 0, ''),
(309, 0, 0, 'Description Meta Data', 'separator', '', 1, '0', 0, 1, 1, 0, 1.18, '', 'font-weight:bold', 0, '', '', '', '', 1, 1, 0, '', '1', 0, ''),
(310, 0, 3, 'Meta Description', 'meta_desc', '{"advanced_editor":"0","rows":"6","cols":"60","readonly":"1"}', 1, '0', 0, 1, 1, 1, 1.20, '', '', 1, '', '', 'wpl_properties', 'meta_description', 1, 0, 0, '', '1', 0, ''),
(311, 0, 3, 'Meta Keywords', 'meta_key', '{"advanced_editor":"0","rows":"6","cols":"60","readonly":"1"}', 1, '0', 0, 1, 1, 1, 1.21, '', '', 1, '', '', 'wpl_properties', 'meta_keywords', 1, 0, 0, '', '1', 0, ''),
(312, 0, 3, 'Property Page Title', 'text', 'null', 1, '0', 1, 1, 1, 1, 1.00, '', '', 1, '', '', 'wpl_properties', 'field_312', 1, 0, 0, '', '1', 0, ''),
(567, 0, 0, 'Add On Video', 'addon_video', '{"ext_file":"avi,flv,mp4,swf,wmv","file_size":"100000"}', 1, '0', 0, 1, 1, 1, 1.00, '', '', 1, '', '', 'wpl_properties', '', 7, 1, 0, '', '1', 0, ''),
(912, 2, 0, 'Profile Picture', 'upload', '{"params":{"request_str":"?wpl_format=b:users:ajax&wpl_function=upload_file&file_name=[html_element_id]&item_id=[item_id]"},"preview":1,"remove_str":"wpl_format=b:users:ajax&wpl_function=delete_file&item_id=[item_id]"}', 1, '0', 0, 0, 0, 0, 2.25, '', '', 0, '', '', 'wpl_users', 'profile_picture', 10, 0, 0, '', '1', 0, ''),
(903, 2, 0, 'Company Address', 'text', '', 1, '1', 1, 0, 0, 0, 4.00, '', '', 1, '', '', 'wpl_users', 'company_address', 10, 1, 0, NULL, '1', 1, ''),
(900, 2, 1, 'First Name', 'text', '', 1, '1', 1, 0, 0, 0, 1.00, '', '', 1, '', '', 'wpl_users', 'first_name', 10, 1, 0, NULL, '1', 1, ''),
(901, 2, 1, 'Last Name', 'text', '', 1, '1', 1, 0, 0, 0, 2.00, '', '', 1, '', '', 'wpl_users', 'last_name', 10, 1, 0, NULL, '1', 1, ''),
(902, 2, 0, 'Company Name', 'text', '', 1, '1', 1, 0, 0, 0, 3.00, '', '', 1, '', '', 'wpl_users', 'company_name', 10, 1, 0, NULL, '1', 1, ''),
(904, 2, 0, 'Website', 'text', '', 1, '1', 1, 0, 0, 0, 5.00, '', '', 1, '', '', 'wpl_users', 'website', 10, 1, 0, NULL, '1', 1, ''),
(905, 2, 0, 'Secondary Email', 'text', '', 1, '1', 1, 0, 0, 0, 6.00, '', '', 1, '', '', 'wpl_users', 'secondary_email', 10, 1, 0, NULL, '1', 1, ''),
(906, 2, 0, 'Sex', 'select', '{"params":{"1":{"key":"1","enabled":"1","value":"Male"},"2":{"key":"2","enabled":"1","value":"Female"}}}', 1, '1', 1, 0, 0, 0, 2.20, '', '', 1, '', '', 'wpl_users', 'sex', 10, 1, 0, NULL, '1', 1, ''),
(907, 2, 0, 'Tel', 'text', '', 1, '1', 1, 0, 0, 0, 8.00, '', '', 1, '', '', 'wpl_users', 'tel', 10, 1, 0, NULL, '1', 1, ''),
(908, 2, 0, 'Fax', 'text', '', 1, '1', 1, 0, 0, 0, 9.00, '', '', 1, '', '', 'wpl_users', 'fax', 10, 1, 0, NULL, '1', 1, ''),
(909, 2, 0, 'Mobile', 'text', '', 1, '1', 1, 0, 0, 0, 10.00, '', '', 1, '', '', 'wpl_users', 'mobile', 10, 1, 0, NULL, '1', 1, ''),
(45, 0, 0, 'Street Number', 'text', '', 1, '1', 1, 1, 1, 1, 13.00, '', '', 1, '', '', 'wpl_properties', 'street_no', 2, 0, 0, NULL, '1', 1, ''),
(911, 2, 0, 'Location', 'locations', '', 1, '1', 1, 1, 1, 1, 11.00, '', '', 1, '', '', 'wpl_users', '', 10, 0, 0, '', '1', 1, ''),
(913, 2, 0, 'Company Logo', 'upload', '{"params":{"request_str":"?wpl_format=b:users:ajax&wpl_function=upload_file&file_name=[html_element_id]&item_id=[item_id]"},"preview":1,"remove_str":"wpl_format=b:users:ajax&wpl_function=delete_file&item_id=[item_id]"}', 1, '0', 0, 0, 0, 0, 2.30, '', '', 0, '', '', 'wpl_users', 'company_logo', 10, 0, 0, '', '1', 0, ''),
(914, 2, 0, 'Email', 'text', '', 1, '1', 1, 0, 0, 0, 5.50, '', '', 1, '', '', 'wpl_users', 'main_email', 10, 1, 0, NULL, '1', 1, ''),
(400, 0, 3, 'Featured', 'checkbox', '', 1, '1', 1, 1, 0, 0, 2.00, '', '', 1, '', '', 'wpl_properties', 'sp_featured', 11, 1, 50, NULL, '1', 1, ''),
(401, 0, 3, 'Hot Offer', 'checkbox', '', 1, '1', 1, 1, 0, 0, 3.00, '', '', 1, '', '', 'wpl_properties', 'sp_hot', 11, 1, 50, NULL, '1', 1, ''),
(402, 0, 3, 'Open House', 'checkbox', '', 1, '1', 1, 1, 0, 0, 4.00, '', '', 1, '', '', 'wpl_properties', 'sp_openhouse', 11, 1, 60, NULL, '1', 1, ''),
(403, 0, 3, 'Foreclosure', 'checkbox', '', 1, '1', 1, 1, 0, 0, 6.00, '', '', 1, '', '', 'wpl_properties', 'sp_forclosure', 11, 1, 60, NULL, '1', 1, '');

CREATE TABLE IF NOT EXISTS `#__wpl_dbst_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind` varchar(100) NOT NULL DEFAULT '[0][1]',
  `type` varchar(20) NOT NULL,
  `enabled` tinyint(4) NOT NULL COMMENT '0=no,1=yes,2=always',
  `index` float(5,2) NOT NULL DEFAULT '1.00',
  `queries_add` text NOT NULL,
  `queries_delete` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

INSERT INTO `#__wpl_dbst_types` (`id`, `kind`, `type`, `enabled`, `index`, `queries_add`, `queries_delete`) VALUES
(10, '[0][1]', 'volume', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NOT NULL;\nALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NOT NULL;\nALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NOT NULL;\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]_unit`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]_si`;'),
(11, '[0][1]', 'price', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NOT NULL;\nALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NOT NULL;\nALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NOT NULL;\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]_unit`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]_si`;'),
(9, '[0][1]', 'length', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NOT NULL;\nALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NOT NULL;\nALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NOT NULL;\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]_unit`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]_si`;'),
(8, '[0][1]', 'area', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NOT NULL;\nALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NOT NULL;\nALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NOT NULL;\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]_unit`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]_si`;'),
(6, '[0][1]', 'separator', 1, 1.00, '', ''),
(7, '[0][1]', 'neighborhood', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `n_[FIELD_ID]` tinyint(4) NOT NULL;\nALTER TABLE `#__[TABLE_NAME]` ADD `n_[FIELD_ID]_distance` int NOT NULL;\nALTER TABLE `#__[TABLE_NAME]` ADD `n_[FIELD_ID]_distance_by` tinyint(4) NOT NULL;\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''n_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\nDROP `n_[FIELD_ID]`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `n_[FIELD_ID]_distance`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `n_[FIELD_ID]_distance_by`;'),
(5, '[0][1]', 'textarea', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` text;\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]` DROP `field_[FIELD_ID]`;'),
(3, '[0][1]', 'select', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` int(11) NOT NULL;\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]` DROP `field_[FIELD_ID]`;'),
(4, '[0][1]', 'feature', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]`\r\nADD `f_[FIELD_ID]_options` text NOT NULL;\nALTER TABLE `#__[TABLE_NAME]`\r\nADD `f_[FIELD_ID]` tinyint(4) NOT NULL;\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''f_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\nDROP `f_[FIELD_ID]_options`;ALTER TABLE `#__[TABLE_NAME]`\nDROP `f_[FIELD_ID]`;'),
(1, '[0][1]', 'text', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` varchar(50) NOT NULL;\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]`;'),
(2, '[0][1]', 'number', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` float NOT NULL;\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]`;'),
(12, '[0][1]', 'date', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]`\r\nADD `field_[FIELD_ID]` date DEFAULT ''0000-00-00'';\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]`;'),
(13, '[0][1]', 'datetime', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]`\r\nADD `field_[FIELD_ID]` datetime DEFAULT ''0000-00-00 00:00:00'';\nUPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\nDROP `field_[FIELD_ID]`;');

CREATE TABLE IF NOT EXISTS `#__wpl_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `trigger` varchar(100) NOT NULL,
  `class_location` varchar(200) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `function_name` varchar(100) NOT NULL,
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET latin1 NOT NULL,
  `title` varchar(200) CHARACTER SET latin1 NOT NULL,
  `parent` int(10) NOT NULL DEFAULT '0',
  `description` text CHARACTER SET latin1 NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `param1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `param2` varchar(200) CHARACTER SET latin1 NOT NULL,
  `param3` varchar(200) CHARACTER SET latin1 NOT NULL,
  `param4` varchar(200) CHARACTER SET latin1 NOT NULL,
  `param5` varchar(200) CHARACTER SET latin1 NOT NULL,
  `params` text CHARACTER SET latin1 NOT NULL,
  `editable` tinyint(4) NOT NULL DEFAULT '1',
  `index` float(5,2) NOT NULL DEFAULT '99.99',
  `client` tinyint(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(1, 'action', 'Admin menu', 0, 'This extension generates admin menu', 1, 'admin_menu', 'wpl_extensions->wpl_admin_pages', '', '', '', '', 0, 99.99, 2),
(2, 'shortcode', 'property listing shortcode', 0, 'it used for showing property listing', 1, 'wpl_property_listings', 'wpl_controller->f:property_listing:display', '', '', '', '', 0, 99.99, 2),
(3, 'style', 'WPL backend stylesheet', 0, '', 1, 'wpl_backend_main_style', 'css/backend.css', '', '', '', '', 0, 99.99, 1),
(5, 'javascript', 'jQuery', 0, '', 1, 'jquery', '', '', '', '', '', 0, 0.00, 2),
(6, 'javascript', 'WPL backend javascript', 0, '', 1, 'wpl_backend_javascript', 'js/backend.min.js', '', '', '', '', 0, 100.10, 1),
(12, 'shortcode', 'Profile Listing shortcode', 0, 'it can be used for showing a profile (Agent) listing', 1, 'wpl_profile_listing', 'wpl_controller->f:profile_listing:display', '', '', '', '', 0, 99.99, 2),
(9, 'widget', 'WPL Search Widget', 0, '', 1, 'widgets.search.main', 'widgets_init', 'WPL_search_widget', '', '', '', 0, 99.99, 2),
(93, 'javascript', 'JQuery File Upload', 0, '', 0, 'jquery_file_upload', 'js/ajaxfileupload.js', '', '', '', '', 0, 93.00, 1),
(88, 'javascript', 'jQuery UI', 0, '', 1, 'jquery-ui-core', '', '', '', '', '', 0, 88.00, 2),
(89, 'javascript', 'jQuery UI sortable', 0, '', 1, 'jquery-ui-sortable', '', '', '', '', '', 0, 89.00, 1),
(10, 'shortcode', 'Property Show shortcode', 0, 'it can be used for showing a specific listing', 1, 'wpl_property_show', 'wpl_controller->f:property_show:display', '', '', '', '', 0, 99.99, 2),
(11, 'service', 'SEF service', 0, 'For running SEF service', 1, 'template_redirect', 'sef->run', '9999', '', '', '', 0, 99.99, 2),
(13, 'style', 'WPL frontend stylesheet', 0, '', 1, 'wpl_frontend_main_style', 'css/frontend.css', '', '', '', '', 0, 99.99, 0),
(14, 'widget', 'WPL Carousel Widget', 0, '', 1, 'widgets.carousel.main', 'widgets_init', 'WPL_carousel_widget', '', '', '', 0, 99.99, 2),
(94, 'javascript', 'Googlemap', 0, '', 1, 'google-maps', 'https://maps.google.com/maps/api/js?sensor=false', '', '', '1', '', 0, 5.00, 0),
(15, 'action', 'Admin bar menu', 0, 'This extension generates admin bar menu', 1, 'admin_bar_menu', 'wpl_extensions->wpl_admin_bar_menu', '999', '', '', '', 0, 99.99, 2),
(95, 'javascript', 'RequireJS', 0, '', 1, 'requirejs', 'js/require-min.js', '', '', '', '', 0, 100.00, 1),
(16, 'javascript', 'WPL frontend javascript', 0, '', 1, 'wpl_frontend_javascript', 'js/frontend.min.js', '', '', '', '', 0, 100.10, 0),
(18, 'service', 'IO service', 0, 'For running IO commands', 1, 'init', 'io->run', '9999', '', '', '', 0, 99.99, 0),
(98, 'javascript', 'PrettyPhotoJS', 0, '', 1, 'jquery.prettyPhoto', 'js/prettyJS/jquery.prettyPhoto.min.js', '', '', '', '', 0, 35.00, 1);

CREATE TABLE IF NOT EXISTS `#__wpl_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `trigger` varchar(100) NOT NULL,
  `class_location` varchar(200) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `function_name` varchar(100) NOT NULL,
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_kind` varchar(20) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `item_type` varchar(100) NOT NULL,
  `item_cat` varchar(100) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `item_extra1` text NOT NULL,
  `item_extra2` text NOT NULL,
  `item_extra3` text NOT NULL,
  `params` text NOT NULL,
  `index` float(5,2) NOT NULL DEFAULT '99.00',
  PRIMARY KEY (`id`),
  KEY `parent_type` (`parent_kind`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_item_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type` varchar(100) NOT NULL,
  `parent_kind` varchar(20) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `index` float(5,2) NOT NULL DEFAULT '99.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `#__wpl_item_categories` (`id`, `item_type`, `parent_kind`, `category_name`, `index`) VALUES
(1, 'gallery', '0', 'image', 99.00),
(2, 'gallery', '0', 'floorplan', 99.01),
(3, 'attachment', '0', 'attachment', 99.00),
(4, 'addon_video', '0', 'video', 99.00);

CREATE TABLE IF NOT EXISTS `#__wpl_listing_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `editable` tinyint(4) NOT NULL DEFAULT '2',
  `index` float(5,2) NOT NULL,
  `gicon` varchar(100) NOT NULL,
  `caption_img` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

INSERT INTO `#__wpl_listing_types` (`id`, `parent`, `enabled`, `editable`, `index`, `gicon`, `caption_img`, `name`) VALUES
(1, 0, 0, 1, 1.00, '', '', 'Sale'),
(2, 0, 0, 1, 2.00, '', '', 'Rental'),
(3, 0, 0, 1, 3.00, '', '', 'Vacational'),
(9, 1, 1, 2, 0.00, 'dot-blue.png', '', 'For sale'),
(10, 2, 1, 2, 12.00, 'dot-green.png', '', 'For Rent'),
(12, 3, 1, 2, 19.00, 'dot-orange.png', '', 'Vacation Rental');

CREATE TABLE IF NOT EXISTS `#__wpl_location1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tax_percent` double NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=276 ;

INSERT INTO `#__wpl_location1` (`id`, `enabled`, `name`, `tax_percent`, `latitude`, `longitude`, `params`) VALUES
(1, 0, 'Afghanistan', 0, '', '', ''),
(2, 0, 'albania', 0, '', '', ''),
(3, 0, 'Algeria', 0, '', '', ''),
(4, 0, 'American Samoa', 0, '', '', ''),
(5, 0, 'Andorra', 0, '', '', ''),
(6, 0, 'Angola', 0, '', '', ''),
(7, 0, 'Anguilla', 0, '', '', ''),
(8, 0, 'Antarctica', 0, '', '', ''),
(9, 0, 'Antigua and Barbuda', 0, '', '', ''),
(10, 0, 'Argentina', 0, '', '', ''),
(11, 0, 'Armenia', 0, '', '', ''),
(12, 0, 'Aruba', 0, '', '', ''),
(13, 0, 'Ashmore and Cartier', 0, '', '', ''),
(14, 0, 'Australia', 0, '', '', ''),
(15, 0, 'Austria', 0, '', '', ''),
(16, 0, 'Azerbaijan', 0, '', '', ''),
(17, 0, 'The Bahamas', 0, '', '', ''),
(18, 0, 'Bahrain', 0, '', '', ''),
(19, 0, 'Baker Island', 0, '', '', ''),
(20, 0, 'Bangladesh', 0, '', '', ''),
(21, 0, 'Barbados', 0, '', '', ''),
(22, 0, 'Bassas da India', 0, '', '', ''),
(23, 0, 'Belarus', 0, '', '', ''),
(24, 0, 'Belgium', 0, '', '', ''),
(25, 0, 'Belize', 0, '', '', ''),
(26, 0, 'Benin', 0, '', '', ''),
(27, 0, 'Bermuda', 0, '', '', ''),
(28, 0, 'Bhutan', 0, '', '', ''),
(29, 0, 'Bolivia', 0, '', '', ''),
(30, 0, 'Bosnia and Herzegovina', 0, '', '', ''),
(31, 0, 'Botswana', 0, '', '', ''),
(32, 0, 'Bouvet Island', 0, '', '', ''),
(33, 0, 'Brazil', 0, '', '', ''),
(34, 0, 'British Indian Ocean Territory', 0, '', '', ''),
(35, 0, 'British Virgin Islands', 0, '', '', ''),
(36, 0, 'Brunei Darussalam', 0, '', '', ''),
(37, 0, 'Bulgaria', 0, '', '', ''),
(38, 0, 'Burkina Faso', 0, '', '', ''),
(39, 0, 'Burma', 0, '', '', ''),
(40, 0, 'Burundi', 0, '', '', ''),
(41, 0, 'Cambodia', 0, '', '', ''),
(42, 0, 'Cameroon', 0, '', '', ''),
(43, 0, 'Canada', 0, '', '', ''),
(44, 0, 'Cape Verde', 0, '', '', ''),
(45, 0, 'Cayman Islands', 0, '', '', ''),
(46, 0, 'Central African Republic', 0, '', '', ''),
(47, 0, 'Chad', 0, '', '', ''),
(48, 0, 'Chile', 0, '', '', ''),
(49, 0, 'China', 0, '', '', ''),
(50, 0, 'Christmas Island', 0, '', '', ''),
(51, 0, 'Clipperton Island', 0, '', '', ''),
(52, 0, 'Cocos (Keeling) Islands', 0, '', '', ''),
(53, 0, 'Colombia', 0, '', '', ''),
(54, 0, 'Comoros', 0, '', '', ''),
(55, 0, 'Congo ,  Democratic Republic of the', 0, '', '', ''),
(56, 0, 'Congo ,  Republic of the', 0, '', '', ''),
(57, 0, 'Cook Islands', 0, '', '', ''),
(58, 0, 'Coral Sea Islands', 0, '', '', ''),
(59, 0, 'Costa Rica', 0, '', '', ''),
(60, 0, 'Cote d''Ivoire', 0, '', '', ''),
(61, 0, 'Croatia', 0, '', '', ''),
(62, 0, 'Cuba', 0, '', '', ''),
(63, 0, 'Cyprus', 0, '', '', ''),
(64, 0, 'Czech Republic', 0, '', '', ''),
(65, 0, 'Denmark', 0, '', '', ''),
(66, 0, 'Djibouti', 0, '', '', ''),
(67, 0, 'Dominica', 0, '', '', ''),
(68, 0, 'Dominican Republic', 0, '', '', ''),
(69, 0, 'East Timor', 0, '', '', ''),
(70, 0, 'Ecuador', 0, '', '', ''),
(71, 0, 'Egypt', 0, '', '', ''),
(72, 0, 'El Salvador', 0, '', '', ''),
(73, 0, 'Equatorial Guinea', 0, '', '', ''),
(74, 0, 'Eritrea', 0, '', '', ''),
(75, 0, 'Estonia', 0, '', '', ''),
(76, 0, 'Ethiopia', 0, '', '', ''),
(77, 0, 'Europa Island', 0, '', '', ''),
(78, 0, 'Falkland Islands (Islas Malvinas)', 0, '', '', ''),
(79, 0, 'Faroe Islands', 0, '', '', ''),
(80, 0, 'Fiji', 0, '', '', ''),
(81, 0, 'Finland', 0, '', '', ''),
(82, 0, 'France', 0, '', '', ''),
(83, 0, 'France ,  Metropolitan', 0, '', '', ''),
(84, 0, 'French Guiana', 0, '', '', ''),
(85, 0, 'French Polynesia', 0, '', '', ''),
(86, 0, 'French Southern and Antarctic Lands', 0, '', '', ''),
(87, 0, 'Gabon', 0, '', '', ''),
(88, 0, 'The Gambia', 0, '', '', ''),
(89, 0, 'Gaza Strip', 0, '', '', ''),
(90, 0, 'Georgia', 0, '', '', ''),
(91, 0, 'Germany', 0, '', '', ''),
(92, 0, 'Ghana', 0, '', '', ''),
(93, 0, 'Gibraltar', 0, '', '', ''),
(94, 0, 'Glorioso Islands', 0, '', '', ''),
(95, 0, 'Greece', 0, '', '', ''),
(96, 0, 'Greenland', 0, '', '', ''),
(97, 0, 'Grenada', 0, '', '', ''),
(98, 0, 'Guadeloupe', 0, '', '', ''),
(99, 0, 'Guam', 0, '', '', ''),
(100, 0, 'Guatemala', 0, '', '', ''),
(101, 0, 'Guernsey', 0, '', '', ''),
(102, 0, 'Guinea', 0, '', '', ''),
(103, 0, 'Guinea-Bissau', 0, '', '', ''),
(104, 0, 'Guyana', 0, '', '', ''),
(105, 0, 'Haiti', 0, '', '', ''),
(106, 0, 'Heard Island and McDonald Islands', 0, '', '', ''),
(107, 0, 'Holy See (Vatican City)', 0, '', '', ''),
(108, 0, 'Honduras', 0, '', '', ''),
(109, 0, 'Hong Kong (SAR)', 0, '', '', ''),
(110, 0, 'Howland Island', 0, '', '', ''),
(111, 0, 'Hungary', 0, '', '', ''),
(112, 0, 'Iceland', 0, '', '', ''),
(113, 0, 'India', 0, '', '', ''),
(114, 0, 'Indonesia', 0, '', '', ''),
(115, 0, 'Iran', 0, '', '', ''),
(116, 0, 'Iraq', 0, '', '', ''),
(117, 0, 'Ireland', 0, '', '', ''),
(118, 0, 'Israel', 0, '', '', ''),
(119, 0, 'Italy', 0, '', '', ''),
(120, 0, 'Jamaica', 0, '', '', ''),
(121, 0, 'Jan Mayen', 0, '', '', ''),
(122, 0, 'Japan', 0, '', '', ''),
(123, 0, 'Jarvis Island', 0, '', '', ''),
(124, 0, 'Jersey', 0, '', '', ''),
(125, 0, 'Johnston Atoll', 0, '', '', ''),
(126, 0, 'Jordan', 0, '', '', ''),
(127, 0, 'Juan de Nova Island', 0, '', '', ''),
(128, 0, 'Kazakhstan', 0, '', '', ''),
(129, 0, 'Kenya', 0, '', '', ''),
(130, 0, 'Kingman Reef', 0, '', '', ''),
(131, 0, 'Kiribati', 0, '', '', ''),
(132, 0, 'Korea ,  North', 0, '', '', ''),
(133, 0, 'Korea ,  South', 0, '', '', ''),
(134, 0, 'Kuwait', 0, '', '', ''),
(135, 0, 'Kyrgyzstan', 0, '', '', ''),
(136, 0, 'Laos', 0, '', '', ''),
(137, 0, 'Latvia', 0, '', '', ''),
(138, 0, 'Lebanon', 0, '', '', ''),
(139, 0, 'Lesotho', 0, '', '', ''),
(140, 0, 'Liberia', 0, '', '', ''),
(141, 0, 'Libya', 0, '', '', ''),
(142, 0, 'Liechtenstein', 0, '', '', ''),
(143, 0, 'Lithuania', 0, '', '', ''),
(144, 0, 'Luxembourg', 0, '', '', ''),
(145, 0, 'Macao', 0, '', '', ''),
(146, 0, 'Macedonia ,  The Former Yugoslav Republic of', 0, '', '', ''),
(147, 0, 'Madagascar', 0, '', '', ''),
(148, 0, 'Malawi', 0, '', '', ''),
(149, 0, 'Malaysia', 0, '', '', ''),
(150, 0, 'Maldives', 0, '', '', ''),
(151, 0, 'Mali', 0, '', '', ''),
(152, 0, 'Malta', 0, '', '', ''),
(153, 0, 'Man ,  Isle of', 0, '', '', ''),
(154, 0, 'Marshall Islands', 0, '', '', ''),
(155, 0, 'Martinique', 0, '', '', ''),
(156, 0, 'Mauritania', 0, '', '', ''),
(157, 0, 'Mauritius', 0, '', '', ''),
(158, 0, 'Mayotte', 0, '', '', ''),
(159, 0, 'Mexico', 0, '', '', ''),
(160, 0, 'Micronesia ,  Federated States of', 0, '', '', ''),
(161, 0, 'Midway Islands', 0, '', '', ''),
(162, 0, 'Miscellaneous (French)', 0, '', '', ''),
(163, 0, 'Moldova', 0, '', '', ''),
(164, 0, 'Monaco', 0, '', '', ''),
(165, 0, 'Mongolia', 0, '', '', ''),
(166, 0, 'Montenegro', 0, '', '', ''),
(167, 0, 'Montserrat', 0, '', '', ''),
(168, 0, 'Morocco', 0, '', '', ''),
(169, 0, 'Mozambique', 0, '', '', ''),
(170, 0, 'Myanmar', 0, '', '', ''),
(171, 0, 'Namibia', 0, '', '', ''),
(172, 0, 'Nauru', 0, '', '', ''),
(173, 0, 'Navassa Island', 0, '', '', ''),
(174, 0, 'Nepal', 0, '', '', ''),
(175, 0, 'Netherlands', 0, '', '', ''),
(176, 0, 'Netherlands Antilles', 0, '', '', ''),
(177, 0, 'New Caledonia', 0, '', '', ''),
(178, 0, 'New Zealand', 0, '', '', ''),
(179, 0, 'Nicaragua', 0, '', '', ''),
(180, 0, 'Niger', 0, '', '', ''),
(181, 0, 'Nigeria', 0, '', '', ''),
(182, 0, 'Niue', 0, '', '', ''),
(183, 0, 'Norfolk Island', 0, '', '', ''),
(184, 0, 'Northern Mariana Islands', 0, '', '', ''),
(185, 0, 'Norway', 0, '', '', ''),
(186, 0, 'Oman', 0, '', '', ''),
(187, 0, 'Pakistan', 0, '', '', ''),
(188, 0, 'Palau', 0, '', '', ''),
(189, 0, 'Palmyra Atoll', 0, '', '', ''),
(190, 0, 'Panama', 0, '', '', ''),
(191, 0, 'Papua New Guinea', 0, '', '', ''),
(192, 0, 'Paracel Islands', 0, '', '', ''),
(193, 0, 'Paraguay', 0, '', '', ''),
(194, 0, 'Peru', 0, '', '', ''),
(195, 0, 'Philippines', 0, '', '', ''),
(196, 0, 'Pitcairn Islands', 0, '', '', ''),
(197, 0, 'Poland', 0, '', '', ''),
(198, 0, 'Portugal', 0, '', '', ''),
(199, 0, 'Puerto Rico', 0, '', '', ''),
(200, 0, 'Qatar', 0, '', '', ''),
(201, 0, 'R', 0, '', '', ''),
(202, 0, 'Romania', 0, '', '', ''),
(203, 0, 'Russia', 0, '', '', ''),
(204, 0, 'Rwanda', 0, '', '', ''),
(205, 0, 'Saint Helena', 0, '', '', ''),
(206, 0, 'Saint Kitts and Nevis', 0, '', '', ''),
(207, 0, 'Saint Lucia', 0, '', '', ''),
(208, 0, 'Saint Pierre and Miquelon', 0, '', '', ''),
(209, 0, 'Saint Vincent and the Grenadines', 0, '', '', ''),
(210, 0, 'Samoa', 0, '', '', ''),
(211, 0, 'San Marino', 0, '', '', ''),
(212, 0, 'S?o Tom', 0, '', '', ''),
(213, 0, 'Saudi Arabia', 0, '', '', ''),
(214, 0, 'Senegal', 0, '', '', ''),
(215, 0, 'Serbia', 0, '', '', ''),
(216, 0, 'Serbia and Montenegro', 0, '', '', ''),
(217, 0, 'Seychelles', 0, '', '', ''),
(218, 0, 'Sierra Leone', 0, '', '', ''),
(219, 0, 'Singapore', 0, '', '', ''),
(220, 0, 'Slovakia', 0, '', '', ''),
(221, 0, 'Slovenia', 0, '', '', ''),
(222, 0, 'Solomon Islands', 0, '', '', ''),
(223, 0, 'Somalia', 0, '', '', ''),
(224, 0, 'South Africa', 0, '', '', ''),
(225, 0, 'South Georgia and the South Sandwich Islands', 0, '', '', ''),
(226, 0, 'Spain', 0, '', '', ''),
(227, 0, 'Spratly Islands', 0, '', '', ''),
(228, 0, 'Sri Lanka', 0, '', '', ''),
(229, 0, 'Sudan', 0, '', '', ''),
(230, 0, 'Suriname', 0, '', '', ''),
(231, 0, 'Svalbard', 0, '', '', ''),
(232, 0, 'Swaziland', 0, '', '', ''),
(233, 0, 'Sweden', 0, '', '', ''),
(234, 0, 'Switzerland', 0, '', '', ''),
(235, 0, 'Syria', 0, '', '', ''),
(236, 0, 'Taiwan', 0, '', '', ''),
(237, 0, 'Tajikistan', 0, '', '', ''),
(238, 0, 'Tanzania', 0, '', '', ''),
(239, 0, 'Thailand', 0, '', '', ''),
(240, 0, 'Togo', 0, '', '', ''),
(241, 0, 'Tokelau', 0, '', '', ''),
(242, 0, 'Tonga', 0, '', '', ''),
(243, 0, 'Trinidad and Tobago', 0, '', '', ''),
(244, 0, 'Tromelin Island', 0, '', '', ''),
(245, 0, 'Tunisia', 0, '', '', ''),
(246, 0, 'Turkey', 0, '', '', ''),
(247, 0, 'Turkmenistan', 0, '', '', ''),
(248, 0, 'Turks and Caicos Islands', 0, '', '', ''),
(249, 0, 'Tuvalu', 0, '', '', ''),
(250, 0, 'Uganda', 0, '', '', ''),
(251, 0, 'Ukraine', 0, '', '', ''),
(252, 0, 'United Arab Emirates', 0, '', '', ''),
(253, 0, 'United Kingdom', 0, '', '', ''),
(254, 1, 'United States', 0, '', '', ''),
(255, 0, 'United States Minor Outlying Islands', 0, '', '', ''),
(256, 0, 'Uruguay', 0, '', '', ''),
(257, 0, 'Uzbekistan', 0, '', '', ''),
(258, 0, 'Vanuatu', 0, '', '', ''),
(259, 0, 'Venezuela', 0, '', '', ''),
(260, 0, 'Vietnam', 0, '', '', ''),
(261, 0, 'Virgin Islands', 0, '', '', ''),
(262, 0, 'Virgin Islands (UK)', 0, '', '', ''),
(263, 0, 'Virgin Islands (US)', 0, '', '', ''),
(264, 0, 'Wake Island', 0, '', '', ''),
(265, 0, 'Wallis and Futuna', 0, '', '', ''),
(266, 0, 'West Bank', 0, '', '', ''),
(267, 0, 'Western Sahara', 0, '', '', ''),
(268, 0, 'Western Samoa', 0, '', '', ''),
(269, 0, 'World', 0, '', '', ''),
(270, 0, 'Yemen', 0, '', '', ''),
(271, 0, 'Yugoslavia', 0, '', '', ''),
(272, 0, 'Zaire', 0, '', '', ''),
(273, 0, 'Zambia', 0, '', '', ''),
(274, 0, 'Zimbabwe', 0, '', '', ''),
(275, 0, 'Palestinian Territory ,  Occupied', 0, '', '', '');

CREATE TABLE IF NOT EXISTS `#__wpl_location2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tax_percent` double NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6061 ;

INSERT INTO `#__wpl_location2` (`id`, `parent`, `name`, `tax_percent`, `latitude`, `longitude`, `params`) VALUES
(6001, 254, 'Alabama', 0, '', '', ''),
(6002, 254, 'Alaska', 0, '', '', ''),
(6003, 254, 'American Samoa', 0, '', '', ''),
(6004, 254, 'Arizona', 0, '', '', ''),
(6005, 254, 'Arkansas', 0, '', '', ''),
(6006, 254, 'California', 0, '', '', ''),
(6007, 254, 'Colorado', 0, '', '', ''),
(6008, 254, 'Connecticut', 0, '', '', ''),
(6009, 254, 'Delaware', 0, '', '', ''),
(6010, 254, 'District Of Columbia', 0, '', '', ''),
(6011, 254, 'Federated States of Micronesia', 0, '', '', ''),
(6012, 254, 'Florida', 0, '', '', ''),
(6013, 254, 'Georgia', 0, '', '', ''),
(6014, 254, 'Guam', 0, '', '', ''),
(6015, 254, 'Hawaii', 0, '', '', ''),
(6016, 254, 'Idaho', 0, '', '', ''),
(6017, 254, 'Illinois', 0, '', '', ''),
(6018, 254, 'Indiana', 0, '', '', ''),
(6019, 254, 'Iowa', 0, '', '', ''),
(6020, 254, 'Kansas', 0, '', '', ''),
(6021, 254, 'Kentucky', 0, '', '', ''),
(6022, 254, 'Louisiana', 0, '', '', ''),
(6023, 254, 'Maine', 0, '', '', ''),
(6024, 254, 'Marshall Islands', 0, '', '', ''),
(6025, 254, 'Maryland', 0, '', '', ''),
(6026, 254, 'Massachusetts', 0, '', '', ''),
(6027, 254, 'Michigan', 0, '', '', ''),
(6028, 254, 'Minnesota', 0, '', '', ''),
(6029, 254, 'Minor Outlying Islands', 0, '', '', ''),
(6030, 254, 'Mississippi', 0, '', '', ''),
(6031, 254, 'Missouri', 0, '', '', ''),
(6032, 254, 'Montana', 0, '', '', ''),
(6033, 254, 'Nebraska', 0, '', '', ''),
(6034, 254, 'Nevada', 0, '', '', ''),
(6035, 254, 'New Hampshire', 0, '', '', ''),
(6036, 254, 'New Jersey', 0, '', '', ''),
(6037, 254, 'New Mexico', 0, '', '', ''),
(6038, 254, 'New York', 0, '', '', ''),
(6039, 254, 'North Carolina', 0, '', '', ''),
(6040, 254, 'North Dakota', 0, '', '', ''),
(6041, 254, 'Northern Mariana Islands', 0, '', '', ''),
(6042, 254, 'Ohio', 0, '', '', ''),
(6043, 254, 'Oklahoma', 0, '', '', ''),
(6044, 254, 'Oregon', 0, '', '', ''),
(6045, 254, 'Palau', 0, '', '', ''),
(6046, 254, 'Pennsylvania', 0, '', '', ''),
(6047, 254, 'Puerto Rico', 0, '', '', ''),
(6048, 254, 'Rhode Island', 0, '', '', ''),
(6049, 254, 'South Carolina', 0, '', '', ''),
(6050, 254, 'South Dakota', 0, '', '', ''),
(6051, 254, 'Tennessee', 0, '', '', ''),
(6052, 254, 'Texas', 0, '', '', ''),
(6053, 254, 'Utah', 0, '', '', ''),
(6054, 254, 'Vermont', 0, '', '', ''),
(6055, 254, 'Virgin Islands', 0, '', '', ''),
(6056, 254, 'Virginia', 0, '', '', ''),
(6057, 254, 'Washington', 0, '', '', ''),
(6058, 254, 'West Virginia', 0, '', '', ''),
(6059, 254, 'Wisconsin', 0, '', '', ''),
(6060, 254, 'Wyoming', 0, '', '', '');

CREATE TABLE IF NOT EXISTS `#__wpl_location3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tax_percent` double NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_location4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tax_percent` double NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_location5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tax_percent` double NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_location6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tax_percent` double NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_location7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tax_percent` double NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_locationtextsearch` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `location_text` text NOT NULL,
  `count` int(10) NOT NULL,
  `counts` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_locationzips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `median_income` int(11) NOT NULL,
  `average_hvalue` int(11) NOT NULL,
  `distance_to_downtown` int(11) NOT NULL,
  `school_rating` tinyint(4) NOT NULL,
  `tax_rate` int(11) NOT NULL,
  `population` int(11) NOT NULL,
  `boundary` text NOT NULL,
  `color` varchar(6) NOT NULL DEFAULT '',
  `hcolor` varchar(6) NOT NULL DEFAULT '',
  `longitude` varchar(25) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `addon_id` int(10) unsigned NOT NULL,
  `section` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `log_text` text NOT NULL,
  `log_date` datetime NOT NULL,
  `ip` varchar(50) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'backend',
  `type` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'submenu',
  `parent` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'WPL_main_menu',
  `page_title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `menu_title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `capability` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'current',
  `menu_slug` varchar(100) CHARACTER SET latin1 NOT NULL,
  `function` varchar(100) CHARACTER SET latin1 NOT NULL,
  `separator` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `index` float(5,2) NOT NULL DEFAULT '1.00',
  `position` float NOT NULL,
  `dashboard` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

INSERT INTO `#__wpl_menus` (`id`, `client`, `type`, `parent`, `page_title`, `menu_title`, `capability`, `menu_slug`, `function`, `separator`, `enabled`, `index`, `position`, `dashboard`) VALUES
(1, 'backend', 'menu', '', 'WPL', 'WPL', 'admin', 'WPL_main_menu', 'b:wpl:admin_home', 0, 1, 1.00, 4.5, 1),
(11, 'backend', 'submenu', 'WPL_main_menu', 'Flex', 'Flex', 'admin', 'wpl_admin_flex', 'b:flex:home', 0, 1, 1.05, 0, 1),
(3, 'backend', 'submenu', 'WPL_main_menu', 'Settings', 'Settings', 'admin', 'wpl_admin_settings', 'b:settings:home', 0, 1, 2.00, 0, 1),
(4, 'backend', 'submenu', 'WPL_main_menu', 'User Manager', 'User Manager', 'admin', 'wpl_admin_user_manager', 'b:users:user_manager', 1, 1, 3.00, 0, 1),
(5, 'backend', 'submenu', 'WPL_main_menu', 'My Profile', 'My Profile', 'current', 'wpl_admin_profile', 'b:users:profile', 0, 1, 5.00, 0, 1),
(6, 'backend', 'submenu', 'WPL_main_menu', 'Add Listing', 'Add Listing', 'current', 'wpl_admin_add_listing', 'b:listing:wizard', 1, 1, 6.00, 0, 1),
(7, 'backend', 'submenu', 'WPL_main_menu', 'Listing Manager', 'Listing Manager', 'current', 'wpl_admin_listings', 'b:listings:manager', 0, 1, 7.00, 0, 1),
(8, 'backend', 'submenu', 'WPL_main_menu', 'Locations', 'Locations', 'admin', 'wpl_admin_locations', 'b:location_manager:home', 0, 1, 1.10, 0, 1),
(2, 'backend', 'submenu', 'WPL_main_menu', 'Data Structure', 'Data Structure', 'admin', 'wpl_admin_data_structure', 'b:data_structure:home', 0, 1, 1.00, 0, 1),
(12, 'backend', 'submenu', 'WPL_main_menu', 'Activity Manager', 'Activity Manager', 'admin', 'wpl_admin_activity', 'b:activity_manager:home', 0, 1, 2.01, 0, 0);

CREATE TABLE IF NOT EXISTS `#__wpl_notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `title_override` varchar(250) NOT NULL,
  `body_override` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_properties` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kind` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0=property,1=complex',
  `deleted` tinyint(1) NOT NULL,
  `mls_id` varchar(11) DEFAULT NULL,
  `pic_numb` mediumint(9) NOT NULL DEFAULT '0',
  `att_numb` mediumint(9) NOT NULL,
  `sent_numb` mediumint(9) NOT NULL,
  `contact_numb` mediumint(9) NOT NULL,
  `user_id` smallint(6) NOT NULL DEFAULT '0',
  `listing` int(11) NOT NULL DEFAULT '0',
  `property_type` int(11) NOT NULL DEFAULT '0',
  `location1_id` int(11) NOT NULL DEFAULT '0',
  `location2_id` int(11) NOT NULL DEFAULT '0',
  `location3_id` int(11) NOT NULL DEFAULT '0',
  `location4_id` int(11) NOT NULL DEFAULT '0',
  `location5_id` int(11) NOT NULL,
  `location6_id` int(11) NOT NULL,
  `location7_id` int(11) NOT NULL,
  `location1_name` varchar(50) NOT NULL DEFAULT '',
  `location2_name` varchar(50) NOT NULL DEFAULT '',
  `location3_name` varchar(50) NOT NULL DEFAULT '',
  `location4_name` varchar(50) NOT NULL DEFAULT '',
  `location5_name` varchar(50) NOT NULL DEFAULT '',
  `location6_name` varchar(50) NOT NULL DEFAULT '',
  `location7_name` varchar(50) NOT NULL DEFAULT '',
  `view` tinyint(4) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `price_unit` int(11) NOT NULL,
  `price_si` double NOT NULL,
  `price_period` smallint(6) NOT NULL,
  `bedrooms` float NOT NULL DEFAULT '0',
  `rooms` float NOT NULL,
  `bathrooms` float NOT NULL DEFAULT '0',
  `living_area` float NOT NULL DEFAULT '0',
  `living_area_unit` int(11) NOT NULL,
  `living_area_si` float NOT NULL,
  `lot_area` float NOT NULL DEFAULT '0',
  `lot_area_unit` int(11) NOT NULL,
  `lot_area_si` float NOT NULL DEFAULT '0',
  `parkings` float NOT NULL DEFAULT '0',
  `googlemap_lt` varchar(20) NOT NULL DEFAULT '0',
  `googlemap_ln` varchar(20) NOT NULL DEFAULT '0',
  `googlemap_title` varchar(30) NOT NULL DEFAULT '',
  `finalized` tinyint(4) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL,
  `expire_days` int(11) NOT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `visit_time` mediumint(9) NOT NULL,
  `visit_date` datetime NOT NULL,
  `property_rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `build_year` int(11) NOT NULL,
  `zip_id` int(11) NOT NULL,
  `zip_name` varchar(20) NOT NULL DEFAULT '',
  `last_modified_time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'This is for CRM',
  `post_code` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `meta_description` text,
  `meta_keywords` text,
  `street` varchar(50) NOT NULL DEFAULT '',
  `street_no` varchar(50) NOT NULL DEFAULT '',
  `sp_featured` tinyint(4) NOT NULL,
  `sp_hot` tinyint(4) NOT NULL,
  `sp_openhouse` tinyint(4) NOT NULL,
  `sp_forclosure` tinyint(4) NOT NULL,
  `textsearch` text NOT NULL,
  `property_title` varchar(100) NOT NULL,
  `location_text` varchar(255) DEFAULT NULL,
  `vids_numb` int(10) NOT NULL DEFAULT '0',
  `field_42` varchar(50) NOT NULL,
  `field_312` varchar(50) NOT NULL,
  `field_308` text,
  `field_7` int(11) NOT NULL,
  `n_100` tinyint(4) NOT NULL,
  `n_100_distance` int(11) NOT NULL,
  `n_100_distance_by` tinyint(4) NOT NULL,
  `n_101` tinyint(4) NOT NULL,
  `n_101_distance` int(11) NOT NULL,
  `n_101_distance_by` tinyint(4) NOT NULL,
  `n_102` tinyint(4) NOT NULL,
  `n_102_distance` int(11) NOT NULL,
  `n_102_distance_by` tinyint(4) NOT NULL,
  `n_103` tinyint(4) NOT NULL,
  `n_103_distance` int(11) NOT NULL,
  `n_103_distance_by` tinyint(4) NOT NULL,
  `n_105` tinyint(4) NOT NULL,
  `n_105_distance` int(11) NOT NULL,
  `n_105_distance_by` tinyint(4) NOT NULL,
  `n_106` tinyint(4) NOT NULL,
  `n_106_distance` int(11) NOT NULL,
  `n_106_distance_by` tinyint(4) NOT NULL,
  `n_107` tinyint(4) NOT NULL,
  `n_107_distance` int(11) NOT NULL,
  `n_107_distance_by` tinyint(4) NOT NULL,
  `n_108` tinyint(4) NOT NULL,
  `n_108_distance` int(11) NOT NULL,
  `n_108_distance_by` tinyint(4) NOT NULL,
  `n_109` tinyint(4) NOT NULL,
  `n_109_distance` int(11) NOT NULL,
  `n_109_distance_by` tinyint(4) NOT NULL,
  `n_110` tinyint(4) NOT NULL,
  `n_110_distance` int(11) NOT NULL,
  `n_110_distance_by` tinyint(4) NOT NULL,
  `n_111` tinyint(4) NOT NULL,
  `n_111_distance` int(11) NOT NULL,
  `n_111_distance_by` tinyint(4) NOT NULL,
  `n_112` tinyint(4) NOT NULL,
  `n_112_distance` int(11) NOT NULL,
  `n_112_distance_by` tinyint(4) NOT NULL,
  `n_113` tinyint(4) NOT NULL,
  `n_113_distance` int(11) NOT NULL,
  `n_113_distance_by` tinyint(4) NOT NULL,
  `n_114` tinyint(4) NOT NULL,
  `n_114_distance` int(11) NOT NULL,
  `n_114_distance_by` tinyint(4) NOT NULL,
  `n_115` tinyint(4) NOT NULL,
  `n_115_distance` int(11) NOT NULL,
  `n_115_distance_by` tinyint(4) NOT NULL,
  `f_130_options` text NOT NULL,
  `f_130` tinyint(4) NOT NULL,
  `f_131_options` text NOT NULL,
  `f_131` tinyint(4) NOT NULL,
  `f_132_options` text NOT NULL,
  `f_132` tinyint(4) NOT NULL,
  `f_133_options` text NOT NULL,
  `f_133` tinyint(4) NOT NULL,
  `f_134_options` text NOT NULL,
  `f_134` tinyint(4) NOT NULL,
  `f_135_options` text NOT NULL,
  `f_135` tinyint(4) NOT NULL,
  `f_136_options` text NOT NULL,
  `f_136` tinyint(4) NOT NULL,
  `f_137_options` text NOT NULL,
  `f_137` tinyint(4) NOT NULL,
  `f_138_options` text NOT NULL,
  `f_138` tinyint(4) NOT NULL,
  `f_139_options` text NOT NULL,
  `f_139` tinyint(4) NOT NULL,
  `f_140_options` text NOT NULL,
  `f_140` tinyint(4) NOT NULL,
  `f_141_options` text NOT NULL,
  `f_141` tinyint(4) NOT NULL,
  `f_142_options` text NOT NULL,
  `f_142` tinyint(4) NOT NULL,
  `f_143_options` text NOT NULL,
  `f_143` tinyint(4) NOT NULL,
  `f_144_options` text NOT NULL,
  `f_144` tinyint(4) NOT NULL,
  `f_146_options` text NOT NULL,
  `f_146` tinyint(4) NOT NULL,
  `f_147_options` text NOT NULL,
  `f_147` tinyint(4) NOT NULL,
  `f_148_options` text NOT NULL,
  `f_148` tinyint(4) NOT NULL,
  `f_149_options` text NOT NULL,
  `f_149` tinyint(4) NOT NULL,
  `f_150_options` text NOT NULL,
  `f_150` tinyint(4) NOT NULL,
  `f_151_options` text NOT NULL,
  `f_151` tinyint(4) NOT NULL,
  `f_152_options` text NOT NULL,
  `f_152` tinyint(4) NOT NULL,
  `f_153_options` text NOT NULL,
  `f_153` tinyint(4) NOT NULL,
  `f_154_options` text NOT NULL,
  `f_154` tinyint(4) NOT NULL,
  `f_155_options` text NOT NULL,
  `f_155` tinyint(4) NOT NULL,
  `f_156_options` text NOT NULL,
  `f_156` tinyint(4) NOT NULL,
  `f_157_options` text NOT NULL,
  `f_157` tinyint(4) NOT NULL,
  `f_158_options` text NOT NULL,
  `f_158` tinyint(4) NOT NULL,
  `f_159_options` text NOT NULL,
  `f_159` tinyint(4) NOT NULL,
  `f_160_options` text NOT NULL,
  `f_160` tinyint(4) NOT NULL,
  `f_161_options` text NOT NULL,
  `f_161` tinyint(4) NOT NULL,
  `f_162_options` text NOT NULL,
  `f_162` tinyint(4) NOT NULL,
  `f_163_options` text NOT NULL,
  `f_163` tinyint(4) NOT NULL,
  `f_164_options` text NOT NULL,
  `f_164` tinyint(4) NOT NULL,
  `f_165_options` text NOT NULL,
  `f_165` tinyint(4) NOT NULL,
  `f_166_options` text NOT NULL,
  `f_166` tinyint(4) NOT NULL,
  `f_167_options` text NOT NULL,
  `f_167` tinyint(4) NOT NULL,
  `f_168_options` text NOT NULL,
  `f_168` tinyint(4) NOT NULL,
  `f_169_options` text NOT NULL,
  `f_169` tinyint(4) NOT NULL,
  `ref_id` varchar(50) NOT NULL,
  `field_54` varchar(50) NOT NULL,
  `half_bathrooms` float NOT NULL,
  `field_55` float NOT NULL,
  `rendered` text NOT NULL,
  `alias` text NOT NULL,
  `field_3000` float NOT NULL,
  `mls_server_id` int(10) unsigned NOT NULL,
  `mls_class_id` varchar(255) NOT NULL,
  `mls_query_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`property_type`),
  KEY `city_id` (`location3_id`),
  KEY `state_id` (`location2_id`),
  KEY `country_id` (`location1_id`),
  KEY `zone_id` (`location4_id`),
  KEY `listing_type_id` (`listing`),
  KEY `price` (`price`),
  KEY `bedrooms` (`bedrooms`),
  KEY `bathrooms` (`bathrooms`),
  KEY `last_modified_time_stamp` (`last_modified_time_stamp`),
  KEY `location_text` (`location_text`),
  KEY `deleted` (`deleted`),
  KEY `confirmed` (`confirmed`),
  KEY `finalized` (`finalized`),
  KEY `mls_id` (`mls_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `#__wpl_property_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `editable` tinyint(4) NOT NULL,
  `index` float(5,2) NOT NULL,
  `listing` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `keyword` varchar(200) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

INSERT INTO `#__wpl_property_types` (`id`, `parent`, `enabled`, `editable`, `index`, `listing`, `name`) VALUES
(1, 0, 0, 2, 0.00, 0, 'Residential'),
(2, 0, 0, 2, 0.00, 0, 'Commercial'),
(3, 0, 0, 2, 0.00, 0, 'Land'),
(6, 1, 1, 2, 7.00, 0, 'Apartment'),
(7, 1, 1, 2, 32.00, 0, 'Villa'),
(13, 2, 1, 2, 6.00, 0, 'Office'),
(14, 3, 1, 2, 14.00, 0, 'Land');

CREATE TABLE IF NOT EXISTS `#__wpl_room_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `index` float(5,2) NOT NULL DEFAULT '99.00',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `icon` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

INSERT INTO `#__wpl_room_types` (`id`, `name`, `index`, `enabled`, `icon`) VALUES
(20, 'Bedroom', 1.00, 1, 'bed.png'),
(9, 'Study room', 12.00, 1, 'book.png'),
(8, 'Story room', 11.00, 1, 'default.png'),
(7, 'Kitchen', 5.00, 1, 'default.png'),
(6, 'Laundry room', 10.00, 1, 'cloth.png'),
(5, 'Bathroom', 9.00, 1, 'shower.png'),
(4, 'Walk in Closet', 8.00, 1, 'hanger.png'),
(3, 'Living Room', 2.00, 1, 'default.png'),
(2, 'Guest Room', 3.00, 1, 'default.png'),
(1, 'Master Bedroom', 7.00, 1, 'default.png'),
(21, 'Dining Room', 4.00, 1, 'spoon_fork.png'),
(22, 'Extra Room', 6.00, 1, 'default.png'),
(23, 'Family room', 14.00, 1, 'tv.png');

CREATE TABLE IF NOT EXISTS `#__wpl_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(250) CHARACTER SET latin1 NOT NULL,
  `setting_value` text CHARACTER SET latin1 NOT NULL,
  `showable` tinyint(4) NOT NULL DEFAULT '1',
  `category` int(10) NOT NULL DEFAULT '1',
  `type` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'text',
  `title` varchar(200) NOT NULL,
  `params` text NOT NULL,
  `options` text NOT NULL,
  `index` float(5,2) NOT NULL DEFAULT '99.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(1, 'zipcode_parent_level', '4', 1, 3, 'select', 'Zipcode parent level', '', '{"values":[{"key":1,"value":"Location1"},{"key":2,"value":"Location2"},{"key":3,"value":"Location3"},{"key":4,"value":"Location4"},{"key":5,"value":"Location5"},{"key":6,"value":"Location6"},\r\n{"key":7,"value":"Location7"}]} ', 5.00),
(3, 'add_thumbnail', '1', 1, 2, 'select', '', '', '{"show_empty":1,"values":[{"key":0,"value":"No"},{"key":1,"value":"Yes"}]} ', 99.00),
(9, 'watermark_position', 'center', 1, 2, 'select', 'Watermark Position ', '', '{"values":[{"key":"center","value":"Center"},{"key":"top","value":"Top"}, {"key":"left","value":"Left"}, {"key":"right","value":"Right"},{"key":"bottom","value":"Bottom"}, {"key":"top-right","value":"Top-Right"}, {"key":"top-left","value":"Top-Left"}, {"key":"bottom-right","value":"Bottom-Right"}, {"key":"bottom-left","value":"Bottom-Left"}]} ', 6.00),
(6, 'default_resize_width', '500', 1, 2, 'text', 'Default resize width', '', '', 3.00),
(7, 'default_resize_height', '450', 1, 2, 'text', 'Default resize height', '', '', 4.00),
(8, 'watermark_status', '0', 1, 2, 'select', 'Watermark', '', '{"values":[{"key":0,"value":"No"},{"key":1,"value":"Yes"}]} ', 5.00),
(5, 'image_resize_method', '0', 1, 2, 'select', 'Image resize method', '', '{"values":[{"key":0,"value":"Resize"},{"key":1,"value":"Crop Resize"}, {"key":2,"value":"Crop Resize (Center)"}]} ', 2.00),
(10, 'watermark_opacity', '40', 1, 2, 'text', 'Watermark Opacity', '', '', 7.00),
(11, 'watermark_url', '', 1, 2, 'upload', 'Watermark Logo URL ', '', '', 8.00),
(12, 'video_uploader', '0', 1, 1, 'checkbox', 'Video uploader', '', '', 50.00),
(13, 'location1_keyword', 'Country', 1, 3, 'text', 'Location1 keyword', '', '', 99.00),
(14, 'location2_keyword', 'State', 1, 3, 'text', 'Location2 keyword', '', '', 99.00),
(15, 'location3_keyword', 'County', 1, 3, 'text', 'Location3 keyword', '', '', 99.00),
(16, 'location4_keyword', 'City', 1, 3, 'text', 'Location4 keyword', '', '', 99.00),
(17, 'location5_keyword', '', 1, 3, 'text', 'Location5 keyword', '', '', 99.00),
(18, 'location6_keyword', '', 1, 3, 'text', 'Location6 keyword', '', '', 99.00),
(19, 'location7_keyword', '', 1, 3, 'text', 'Location7 keyword', '', '', 99.00),
(20, 'locationzips_keyword', 'Zipcode', 1, 3, 'text', 'Zipcode Keyword', '', '', 99.00),
(29, 'default_profile_orderby', 'p.first_name', 1, 1, 'sort_option', 'Profile sort option', '', '{"show_shortcode":1,"shortcode_key":"wplorderby","kind":2}', 110.00),
(21, 'default_page_size', '12', 1, 1, 'text', 'Default page size', '', '{"show_shortcode":1,"shortcode_key":"limit"}', 99.00),
(22, 'page_sizes', '6,12,18,24,30,100', 1, 1, 'text', 'Page size options', '', '', 99.00),
(23, 'default_orderby', 'p.mls_id+0', 1, 1, 'sort_option', 'Default sort option', '', '{"show_shortcode":1,"shortcode_key":"wplorderby","kind":0}', 99.00),
(24, 'default_order', 'DESC', 1, 1, 'select', 'Default sort type', '', '{"show_shortcode":1,"shortcode_key":"wplorder","values":[{"key":"ASC","value":"Ascending"},{"key":"DESC","value":"Descending"}]} ', 99.00),
(2, 'cache', '1', 1, 1, 'select', 'Cache', '', '{"values":[{"key":0,"value":"Disabled"},{"key":1,"value":"Enabled"}]}', 0.10),
(25, 'main_permalink', 'properties', 1, 4, 'text', 'Main Permalink', '', '', 1.00),
(26, 'sef_main_separator', '/', 0, 4, 'text', 'SEF separator', '', '', 2.00),
(27, 'main_date_format', 'd/m/Y:dd/mm/yy', 1, 1, 'select', 'Date Format', '', '{"values":[{"key":"Y-m-d:yy-mm-dd","value":"2013-10-19"},{"key":"Y/m/d:yy/mm/dd","value":"2013/10/19"},{"key":"m-d-Y:mm-dd-yy","value":"10-19-2013"},{"key":"m/d/Y:mm/dd/yy","value":"10/19/2013"},{"key":"d-m-Y:dd-mm-yy","value":"19-10-2013"},{"key":"d/m/Y:dd/mm/yy","value":"19/10/2013"}]}', 99.00),
(28, 'location_method', '1', 1, 3, 'select', 'Location Method', '{"tooltip":"Location Text is recommended."}', '{"values":[{"key":1,"value":"Location Text"},{"key":2,"value":"Location Database"}]}', 6.00),
(30, 'default_profile_order', 'DESC', 1, 1, 'select', 'Profile sort type', '', '{"show_shortcode":1,"shortcode_key":"wplorder","values":[{"key":"ASC","value":"Ascending"},{"key":"DESC","value":"Descending"}]} ', 111.00),
(31, 'default_profile_page_size', '12', 1, 1, 'text', 'Profile page size', '', '{"show_shortcode":1,"shortcode_key":"limit"}', 99.00),
(33, 'io_status', '1', 1, 1, 'select', 'I/O API', '', '{"values":[{"key":0,"value":"Disabled"},{"key":1,"value":"Enabled"}]}', 117.00),
(34, 'api_key', 'U7hdbv673YhdjplzzX7wU7hdbv673YhdjplzzX7w', 1, 1, 'text', 'API key', '', '', 118.00),
(35, 'api_secret', 'Eft76bdh0o2uyhJkbG3T', 1, 1, 'text', 'API secret', '', '', 119.00);

CREATE TABLE IF NOT EXISTS `#__wpl_setting_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `showable` tinyint(4) NOT NULL DEFAULT '1',
  `index` float(5,2) NOT NULL DEFAULT '99.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `#__wpl_setting_categories` (`id`, `name`, `showable`, `index`) VALUES
(1, 'Global', 1, 99.00),
(2, 'Gallery', 1, 99.00),
(3, 'Locations', 1, 99.00),
(4, 'SEO', 1, 99.00);

CREATE TABLE IF NOT EXISTS `#__wpl_sort_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(50) NOT NULL DEFAULT '[0][1]',
  `name` text NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `index` float(5,2) NOT NULL DEFAULT '99.00',
  PRIMARY KEY (`id`),
  KEY `kind` (`kind`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

INSERT INTO `#__wpl_sort_options` (`id`, `kind`, `name`, `field_name`, `enabled`, `index`) VALUES
(1, '[0][1]', 'Listing ID', 'p.mls_id+0', 1, 4.00),
(2, '[0][1]', 'Price', 'p.price_si', 1, 6.00),
(3, '[0][1]', 'Built up Area', 'p.living_area_si', 1, 5.00),
(4, '[0][1]', 'Bedrooms', 'p.bedrooms', 0, 9.00),
(5, '[0][1]', 'Rank', 'p.property_rank', 0, 8.00),
(6, '[0][1]', 'Pictures', 'p.pic_numb', 1, 10.00),
(7, '[0][1]', 'Listing', 'p.listing', 0, 12.00),
(8, '[0][1]', 'Property Type', 'p.property_type', 0, 13.00),
(9, '[0][1]', 'Add date', 'p.add_date', 1, 11.00),
(10, '[0][1]', 'View', 'p.view', 0, 15.00),
(11, '[0][1]', 'Lot Area', 'p.lot_area_si', 0, 16.00),
(12, '[0][1]', 'Zipcode', 'p.zip_name', 0, 17.00),
(31, '[2]', 'Name', 'p.first_name', 1, 99.00),
(32, '[2]', 'Country', 'p.location1_name', 1, 99.00),
(33, '[2]', 'State', 'p.location2_name', 0, 99.00);

CREATE TABLE IF NOT EXISTS `#__wpl_units` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=length,2=area,3=volume 4=price',
  `enabled` tinyint(4) NOT NULL,
  `tosi` double NOT NULL,
  `index` int(11) NOT NULL,
  `extra` varchar(50) NOT NULL DEFAULT '' COMMENT 'iso code',
  `extra2` varchar(50) NOT NULL DEFAULT '' COMMENT 'currency name',
  `extra3` varchar(50) NOT NULL DEFAULT '' COMMENT 'icon',
  `extra4` varchar(50) NOT NULL,
  `seperator` varchar(2) NOT NULL,
  `d_seperator` varchar(2) NOT NULL,
  `after_before` tinyint(4) NOT NULL COMMENT '0=before,1=after',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `#__wpl_units` (`id`, `name`, `type`, `enabled`, `tosi`, `index`, `extra`, `extra2`, `extra3`, `extra4`, `seperator`, `d_seperator`, `after_before`) VALUES
(1, 'Sqft', 2, 1, 0.093, 1, '', '', '', '', '', '', 0),
(2, 'm&sup2;', 2, 1, 1, 2, '', '', '', '', '', '', 0),
(3, 'Acre', 2, 0, 4046.873, 3, '', '', '', '', '', '', 0),
(4, 'km&sup2;', 2, 0, 1000000, 4, '', '', '', '', '', '', 0),
(5, 'sq mi', 2, 0, 2589988, 6, '', '', '', '', '', '', 0),
(11, 'm', 1, 1, 1, 0, '', '', '', '', '', '', 0),
(12, 'ft', 1, 1, 0.305, 0, '', '', '', '', '', '', 0),
(13, 'km', 1, 1, 1000, 2, '', '', '', '', '', '', 0),
(21, 'm&sup3;', 3, 0, 1, 1, '', '', '', '', '', '', 0),
(100, 'ლ', 4, 0, 0.5977, 9, 'GEL', 'Georgian Lari', 'Abkhazia', 'Tetri', '', '', 0),
(101, '؋', 4, 0, 0.0184, 11, 'AFN', 'Afghan Afghani', 'Afghanistan', 'Pul', '', '', 0),
(102, 'L', 4, 0, 0.0094, 12, 'ALL', 'Albania Lek', 'Albanian', 'Qintar', '', '', 0),
(103, '£', 4, 0, 87.9, 13, 'N/A', 'Alderney Pound', 'Alderney', 'Penny', '', '', 0),
(104, 'د.ج', 4, 0, 0.0126, 14, 'DZD', 'Algerian Dinar', 'Algeria', 'Centime', '', '', 0),
(105, 'Kz', 4, 0, 0.0104, 15, 'AOA', 'Angolan Kwanza', 'Angola', 'Cêntimo', '', '', 0),
(106, '$', 4, 0, 0.1886, 16, 'ARS', 'Argentine Peso', 'Argentina', 'Centavo', '', '', 0),
(107, 'դր.', 4, 0, 0.0024, 17, 'AMD', 'Armenian Dram', 'Armenia', 'Luma', '', '', 0),
(108, 'Afl.', 4, 0, 0.5587, 18, 'AWG', 'Aruban Florin', 'Aruba', 'Cent', '', '', 0),
(109, '$, A$ or AU$', 4, 0, 0.9435, 6, 'AUD', 'Australian Dollar', 'Australia', 'Cent', '', '', 0),
(110, 'm, ман. or man.', 4, 0, 1.2742, 19, 'AZN', 'Azerbaijani Manat', 'Azerbaijan', 'qəpik', '', '', 0),
(111, 'B$', 4, 0, 1, 20, 'BSD', 'Bahamian dollar', 'Bahamas', 'Cent', '', '', 0),
(112, '.د.ب (Arabic), or BD (Latin),', 4, 0, 2.652, 21, 'BHD', 'Bahraini Dollar', 'Bahrain', 'Fils', '', '', 0),
(113, '৳, ৲', 4, 0, 0.0129, 22, 'BDT', 'Bangladeshi Taka', 'Bangladesh', 'Poisha', '', '', 0),
(114, 'Bds$', 4, 0, 0.5, 23, 'BBD', 'Barbadian Dollar', 'Barbados', 'Cent', '', '', 0),
(115, 'Br', 4, 0, 0.0001, 24, 'BYR', 'Belarusian Ruble', 'Belarus', 'Kapeyka', '', '', 0),
(116, 'BZ$', 4, 0, 0.5, 25, 'BZD', 'Belize Dollar', 'Belize', 'Cent', '', '', 0),
(117, 'BD$', 4, 0, 1, 26, 'BMD', 'Bermudian Dollar', 'Bermuda', 'Cent', '', '', 0),
(118, 'Nu. or Ch.', 4, 0, 0.0173, 27, 'BTN', 'Bhutanese Ngultrum', 'Bhutan', 'Chhertum', '', '', 0),
(119, 'Bs.', 4, 0, 0.1447, 28, 'BOB', 'Bolivian Boliviano', 'Bolivia', 'Centavo', '', '', 0),
(120, 'KM (Latin), or КМ (Cyrillic),', 4, 0, 0.6733, 29, 'BAM', 'Bosnia and Herzegovina Marka', 'Bosnia and Herzegovina', 'fening (Latin), or фенинг (Cyrillic),', '', '', 0),
(121, 'P', 4, 0, 0.1175, 30, 'BWP', 'Botswana Pula', 'Botswana', 'thebe', '', '', 0),
(122, 'R$ or Ɽ', 4, 0, 0.4678, 31, 'BRL', 'Brazillian Real', 'Brazil', 'Centavo', '', '', 0),
(123, 'B$', 4, 0, 0.7969, 32, 'BND', 'Brunei Dollar', 'Sultanate of Brunei', 'Sen', '', '', 0),
(124, 'лв', 4, 0, 0.676, 33, 'BGN', 'Bulgarian Lev', 'Bulgaria', 'Stotinka', '', '', 0),
(125, 'FBu', 4, 0, 0.0006, 34, 'BIF', 'Burundian Franc', 'Burundi', 'Centime', '', '', 0),
(126, '៛', 4, 0, 0.0003, 35, 'KHR', 'Cambodian Riel', 'Cambodia', '1/10 Kak', '', '', 0),
(127, 'C$', 4, 0, 0.9805, 5, 'CAD', 'Canadian Dollar', 'Canada', 'Cent', '', '', 0),
(128, 'Esc or $', 4, 0, 0.012, 36, 'CVE', 'Cap Werdean Escudo', 'Cape Verde', 'Centavo', '', '', 0),
(129, '$', 4, 0, 1.2195, 37, 'KYD', 'Cayman Islands Dollar', 'Caymen Islands', 'Cent', '', '', 0),
(130, 'FCFA, c', 4, 0, 0.002, 38, 'XAF', 'Central African CFA franc', 'Central Africa', 'Centime', '', '', 0),
(131, '$', 4, 0, 0.002, 39, 'CLP', 'Chilean Peso', 'Chile', 'Centavo', '', '', 0),
(132, '$', 4, 0, 0.0005, 40, 'COP', 'Colombian Peso', 'Republic of Colombia', 'Centavo', '', '', 0),
(133, 'CF', 4, 0, 0.0027, 41, 'KMF', 'Comorian Franc', 'Comoros', 'Centime', '', '', 0),
(134, 'Fr', 4, 0, 0.0011, 42, 'CDF', 'Congolese Franc', 'Democratic Republic of Congo', 'Centime', '', '', 0),
(135, '$ or c', 4, 0, 87.6, 43, 'N/A', 'Cook Islands Dollar', 'Cook Islands', 'Cent', '', '', 0),
(136, '₡', 4, 0, 0.002, 44, 'CRC', 'Costa Rican colón', 'Costa Rica', 'Céntimo', '', '', 0),
(137, 'kn or lp', 4, 0, 0.1714, 45, 'HRK', 'Croatian Kuna', 'Croatia', 'Lipa', '', '', 0),
(138, '$, CUC or CUC$', 4, 0, 87.6, 46, 'N/A', 'Cuban Convertible Peso', 'Cuba', 'Centavo', '', '', 0),
(139, '$ or $MN', 4, 0, 1, 47, 'CUP', 'Cuban Peso', 'Cuba', 'Centavo', '', '', 0),
(140, 'K�? or h', 4, 0, 0.0505, 48, 'CZK', 'Czech Koruna', 'Czech Republic', 'Haléř', '', '', 0),
(141, 'kr', 4, 0, 0.1743, 49, 'DKK', 'Danish Krone', 'Denmark', 'øre or kroner', '', '', 0),
(142, 'Fdj', 4, 0, 0.0056, 50, 'DJF', 'Djiboutian Franc', 'Djibouti', 'Centime', '', '', 0),
(143, 'RD$', 4, 0, 0.0243, 51, 'DOP', 'Dominican Peso', 'Dominican Republic', 'Centavo', '', '', 0),
(144, '$', 4, 0, 0.3704, 52, 'XCD', 'East Caribbean Dollar', 'East Caribbean', 'Cent', '', '', 0),
(145, '$', 4, 0, 1, 10, 'USD', 'Ecuadorian Centavo Coins', 'Ecuador', 'Cent', '', '', 0),
(146, '£, LE, or ج.م or Pt.', 4, 0, 0.1431, 53, 'EGP', 'Egyptian Pound', 'Egypt', 'qirsh or', '', '', 0),
(147, 'Nfk', 4, 0, 0.0888, 54, 'ERN', 'Eritrean Nakfa', 'Eritrea', 'Cent', '', '', 0),
(148, 'KR', 4, 0, 0, 55, 'EEK', 'Estonian Kroon', 'Estonia', 'Sent', '', '', 0),
(149, 'Br', 4, 0, 0.0536, 56, 'ETB', 'Ethiopian Birr', 'Ethiopia', 'Santim', '', '', 0),
(150, '€', 4, 1, 1.3634, 2, 'EUR', 'Euro', 'European-Union', 'Euro', ',', '', 0),
(151, '£ or p', 4, 0, 1.5193, 57, 'FKP', 'Flakland Islands Pound', 'Falkland Islands', 'Penny', '', '', 0),
(152, 'kr', 4, 0, 0.1743, 58, 'DKK', 'Faroese Króna', 'Faroe Islands', 'Oyra', '', '', 0),
(153, 'FJ$', 4, 0, 0.5433, 59, 'FJD', 'Fijian Dollar', 'Fiji', 'Cent', '', '', 0),
(154, 'D', 4, 0, 0.0295, 60, 'GMD', 'Gambian Dalasi', 'Gambia', 'Butut', '', '', 0),
(155, 'ლ', 4, 0, 0.6091, 61, 'GEL', 'Georgian Lari', 'Georgia', 'Tetri', '', '', 0),
(156, 'GH₵', 4, 0, 0.5007, 62, 'GHS', 'Ghanaian Cedi', 'Ghana', 'Pesewa', '', '', 0),
(157, '£ or p', 4, 0, 1.5194, 63, 'GIP', 'Gibraltar Pound', 'Gibraltar', 'Penny', '', '', 0),
(158, 'Q', 4, 0, 0.1283, 64, 'GTQ', 'Guatemalan Quetzal', 'Guatemala', 'Centavo', '', '', 0),
(159, '£ or p', 4, 0, 87.6, 65, 'N/A', 'Guernsey Pound', 'Guernsey', 'Penny', '', '', 0),
(160, 'FG or Fr/GFr', 4, 0, 0.0001, 66, 'GNF', 'Guinean Franc', 'Guinea', 'Centime', '', '', 0),
(161, '$', 4, 0, 0.0049, 67, 'GYD', 'Guyanese Dollar', 'Guyana', 'Cent', '', '', 0),
(162, 'G', 4, 0, 0.0236, 68, 'HTG', 'Haitian Gourde', 'Haiti', 'Centime', '', '', 0),
(163, 'L', 4, 0, 0.0494, 69, 'HNL', 'Hondyran Lempira', 'Honduras', 'Centavo', '', '', 0),
(164, '£ or HK$', 4, 0, 0.1288, 70, 'HKD', 'Hong Kong Dollar', 'Hong Kong', 'Cent', '', '', 0),
(165, 'Ft', 4, 0, 0.0044, 71, 'HUF', 'Hungarian Forint', 'Hungary', 'Fillér', '', '', 0),
(166, 'kr, �?kr', 4, 0, 0.0081, 72, 'ISK', 'Icelandic Króna', 'Iceland', 'Eyrir', '', '', 0),
(167, '', 4, 0, 0.0177, 73, 'INR', 'Indian Rupee', 'India', 'Paisa', '', '', 0),
(168, 'Rp', 4, 0, 0.0001, 74, 'IDR', 'Indonesian Rupiah', 'Indonesia', 'Sen', '', '', 0),
(169, '﷼', 4, 0, 0.0001, 75, 'IRR', 'Iranian Rial', 'Iran', 'Toman or Dinar', '', '', 0),
(170, 'ع.د', 4, 0, 0.0009, 76, 'IQD', 'Iraqi Dinar', 'Iraq', 'Fils', '', '', 0),
(171, '₪', 4, 0, 0.2711, 77, 'ILS', 'Israeli New Sheqel', 'Israel', 'Agora', '', '', 0),
(172, '$', 4, 0, 0.0101, 78, 'JMD', 'Jamaican Dollar', 'Jamaica', 'Cent', '', '', 0),
(173, '¥', 4, 0, 0.0102, 7, 'JPY', 'Japanese Yen', 'Japan', 'Sen or Rin', '', '', 0),
(174, '£ or p', 4, 0, 87.6, 79, 'N/A', 'Jersey Pound', 'Jersey', 'Penny', '', '', 0),
(175, 'د.ا', 4, 0, 1.4104, 80, 'JOD', 'Jordanian Dinar', 'Jordan', 'Dirham', '', '', 0),
(176, '', 4, 0, 0.0066, 81, 'KZT', 'Kazakhstani tenge', 'Kazakhstan', 'tiyn (тиын),', '', '', 0),
(177, 'KSh', 4, 0, 0.0117, 82, 'KES', 'Kenyan Shilling', 'Kenya', 'Cent', '', '', 0),
(178, '$ or ¢', 4, 0, 87.6, 83, 'N/A', 'Kiribati Dollar', 'Kiribati', 'Cent', '', '', 0),
(179, 'د.ك', 4, 0, 3.4955, 84, 'KWD', 'Kuwaiti Dinar', 'Kuwait', 'Fils', '', '', 0),
(180, 'N/A', 4, 0, 0.0207, 85, 'KGS', 'Kyrgyzstani som', 'Kyrgyz Republic', 'Tyiyn', '', '', 0),
(181, '₭ or ₭N', 4, 0, 0.0001, 86, 'LAK', 'Lao Kip', 'Laos', 'Att', '', '', 0),
(182, 'Ls or s', 4, 0, 1.8505, 87, 'LVL', 'Latvian Lats', 'Lativa', 'Santims', '', '', 0),
(183, 'ل.ل', 4, 0, 0.0007, 88, 'LBP', 'Lebanese Pound', 'Lebanon', 'Piastre', '', '', 0),
(184, 'L or M', 4, 0, 0.0994, 89, 'LSL', 'Lesotho Loti', 'Lesotho', 'Sente', '', '', 0),
(185, 'L$', 4, 0, 0.0133, 90, 'LRD', 'Liberian Dollar', 'Liberia', 'Cent', '', '', 0),
(186, 'LD and ل.د', 4, 0, 0.78, 91, 'LYD', 'Libyan Dinar', 'Libya', 'Dirham', '', '', 0),
(187, 'Lt', 4, 0, 0.376, 92, 'LTL', 'Lithuanian Litas', 'Lithuania', 'Centas', '', '', 0),
(188, 'MOP$', 4, 0, 0.1251, 93, 'MOP', 'Macanese Pataca', 'Macau', 'Avo', '', '', 0),
(189, 'ден', 4, 0, 0.0208, 94, 'MKD', 'Macedonian Denar', 'Republic of Macedonia', 'Deni', '', '', 0),
(190, 'N/A', 4, 0, 0.0005, 95, 'MGA', 'Malagasy Ariary', 'Madagascar', 'Iraimbilanja', '', '', 0),
(191, 'MK', 4, 0, 0.003, 96, 'MWK', 'Malawian Kwacha', 'Malawi', 'Tambala', '', '', 0),
(192, 'RM', 4, 0, 0.3227, 97, 'MYR', 'Malaysian Ringgit', 'Malaysia', 'Sen', '', '', 0),
(193, 'Rf, MRf, or .ރ', 4, 0, 0.0649, 98, 'MVR', 'Maldivian Rufiyaa', 'Maldives', 'Laari', '', '', 0),
(194, '£ or p', 4, 0, 87.6, 99, 'N/A', 'Manx Pound', 'Isle Of Man', 'Penny', '', '', 0),
(195, 'UM', 4, 0, 0.0034, 100, 'MRO', 'Mauritanian Ouguiya', 'Mauritania', 'Khoums', '', '', 0),
(196, 'Rs', 4, 0, 0.032, 101, 'MUR', 'Mauritian Rupee', 'Mauritius', 'Cent', '', '', 0),
(197, '$ or Mex$ / ¢', 4, 0, 0.078, 102, 'MXN', 'Mexican Peso', 'Mexico', 'Centavo', '', '', 0),
(198, 'L', 4, 0, 0.08, 103, 'MDL', 'Moldovan Leu', 'Moldova', 'Ban', '', '', 0),
(199, '₮', 4, 0, 0.0007, 104, 'MNT', 'Mongolian Tögrög', 'Mongolia', 'Möngö(мөнгө),', '', '', 0),
(200, 'د.م', 4, 0, 0.1168, 105, 'MAD', 'Moroccan Dirham', 'Morocco', 'Santim', '', '', 0),
(201, 'MTn', 4, 0, 0.0336, 106, 'MZN', 'Mozambican Metical', 'Mozambique', 'Centavo', '', '', 0),
(202, 'K', 4, 0, 0.0011, 107, 'MMK', 'Myanma Kyat', 'Myanmar/Burma', 'Pya', '', '', 0),
(203, 'N$', 4, 0, 0.0993, 108, 'NAD', 'Namibian Dollar', 'Namibia', 'Cent', '', '', 0),
(204, 'Rs', 4, 0, 0.0111, 109, 'NPR', 'Nepalese Rupee', 'Nepal', 'Paisa', '', '', 0),
(205, 'NAƒ, NAf, ƒ, or f', 4, 0, 0.5587, 110, 'ANG', 'Netherlands Antillean Guilder', 'Netherlands Antilles', 'Cent', '', '', 0),
(206, '$ or NT$', 4, 0, 0.0333, 111, 'TWD', 'New Taiwan Dollar', 'New Taiwan', 'Cent', '', '', 0),
(207, '$ or c', 4, 0, 0.7947, 112, 'NZD', 'New Zealand Dollar', 'New Zealand', 'Cent', '', '', 0),
(208, 'C$', 4, 0, 0.0402, 113, 'NIO', 'Nicaraguan Córdoba', 'Nicaragua', 'Centavo', '', '', 0),
(209, '₦', 4, 0, 0.0063, 114, 'NGN', 'Nigerian Naira', 'Nigeria', 'Kobo', '', '', 0),
(210, '₩', 4, 0, 0.0011, 115, 'KPW', 'North Korean Won', 'North Korea', 'Ch�?n', '', '', 0),
(211, 'kr', 4, 0, 0.1703, 116, 'NOK', 'Norweigian Krone', 'Norway', 'øre', '', '', 0),
(212, 'ر.ع.', 4, 0, 2.5998, 117, 'OMR', 'Omani Rial', 'Oman', 'Baisa', '', '', 0),
(213, 'Rs', 4, 0, 0.0102, 118, 'PKR', 'Pakistani Rupee', 'Pakistan', 'Paisa', '', '', 0),
(214, 'B/. or B', 4, 0, 1, 119, 'PAB', 'Panamanian Blaboa', 'Panama', 'Centesimo', '', '', 0),
(215, 'K', 4, 0, 0.4401, 120, 'PGK', 'Papua New Guinea Kina', 'Papua New Guinea', 'Toea', '', '', 0),
(216, '₲', 4, 0, 0.0002, 121, 'PYG', 'Paraguayan Guarani', 'Paraguay', 'Centimo', '', '', 0),
(217, 'S/.', 4, 0, 0.3655, 122, 'PEN', 'Peruvian Nuevo Sol', 'Peru', 'Centimo', '', '', 0),
(218, '', 4, 0, 0.0237, 123, 'PHP', 'Philippine Peso', 'Philippines', 'Sentimo', '', '', 0),
(219, 'zł or gr', 4, 0, 0.304, 124, 'PLN', 'Polish złoty', 'Poland', 'Grosz', '', '', 0),
(220, '£', 4, 1, 1.6412, 3, 'GBP', 'Pound Sterling', 'England', 'Penny', ',', '', 0),
(221, 'QR or ر.ق', 4, 0, 0.2746, 125, 'QAR', 'Qatari Riyal', 'Qatar', 'Dirham', '', '', 0),
(222, '¥', 4, 0, 0.1629, 126, 'CNY', 'Renminbi', 'PRC', 'jiǎo (角', '', '', 0),
(223, 'L', 4, 0, 0.2954, 127, 'RON', 'Romanian Leu', 'Romania', 'Bani', '', '', 0),
(224, 'руб. / Р. / р. or', 4, 0, 0.0313, 128, 'RUB', 'Russian Ruble', 'Russia', 'Kopek', '', '', 0),
(225, 'RF', 4, 0, 0.0016, 129, 'RWF', 'Rwandan Franc', 'Rwanda', 'Centime', '', '', 0),
(226, '£', 4, 0, 1.5194, 130, 'SHP', 'Saint Helena Pound', 'Saint Helena', 'Penny', '', '', 0),
(227, '₡', 4, 0, 0.1143, 131, 'SVC', 'Salvadorian Colón', 'El Salvador', 'Centavo', '', '', 0),
(228, 'WS$', 4, 0, 0.4364, 132, 'WST', 'Samoan Tala', 'Samoa', 'Sene', '', '', 0),
(229, 'ر.س (Arabic),, SR (Latin),', 4, 0, 0.2666, 133, 'SAR', 'Saudi Riyal', 'Saudi Arabia', 'Halala', '', '', 0),
(230, 'РСД and RSD', 4, 0, 0.0115, 134, 'RSD', 'Serbian Dinar', 'Serbia', 'Para', '', '', 0),
(231, 'SR or SRe', 4, 0, 0.0847, 135, 'SCR', 'Seychellois Rupee', 'Seychelles', 'Cent', '', '', 0),
(232, 'Le', 4, 0, 0.0002, 136, 'SLL', 'Sierra Leonean Leone', 'Sierra Leone', 'Cent', '', '', 0),
(233, 'S$', 4, 0, 0.7908, 137, 'SGD', 'Singapore Dollar', 'Singapore', 'Cent', '', '', 0),
(234, 'SI$', 4, 0, 0.1391, 138, 'SBD', 'Solomon Islands Dollar', 'Solomon Islands', 'Cent', '', '', 0),
(235, 'So. Sh.', 4, 0, 0.0007, 139, 'SOS', 'Somali Shilling', 'Somalia', 'Cent', '', '', 0),
(236, 'Sl. Sh.', 4, 0, 0.0007, 140, 'SOS', 'Somaliland Shilling', 'Somaliland', 'Cent', '', '', 0),
(237, 'R or c', 4, 0, 0.0993, 141, 'ZAR', 'South African Rand', 'South Africa', 'Cent', '', '', 0),
(238, '₩', 4, 0, 0.0009, 142, 'KRW', 'South Korean Won', 'South Korea', 'Jeon', '', '', 0),
(239, 'Rs or SLRss/SLRs', 4, 0, 0.0079, 143, 'LKR', 'Sri Lankan Rupee', 'Sri Lanka', 'Cents', '', '', 0),
(240, '£', 4, 0, 0.2272, 144, 'SDG', 'Sudanese Pound', 'Sudan', 'Qirsh', '', '', 0),
(241, '$', 4, 0, 0.3042, 145, 'SRD', 'Surinamese Dollar', 'Suriname', 'Cent', '', '', 0),
(242, 'L or E', 4, 0, 0.0993, 146, 'SZL', 'Swazi Lilangeni', 'Swaziland', 'Cent', '', '', 0),
(243, 'kr, :-', 4, 0, 0.1521, 8, 'SEK', 'Swedish Krona', 'Sweden', 'öre', '', '', 0),
(244, 'CHF, Fr., SFr. (old),', 4, 0, 1.1024, 4, 'CHF', 'Swiss Franc', 'Switzerland', 'Centime', ',', '', 0),
(245, '£ or ل.س', 4, 0, 0.0103, 147, 'SYP', 'Syrian Pound', 'Syria', 'Piastre', '', '', 0),
(246, 'Db', 4, 0, 0.0001, 148, 'STD', 'São Tomé and Príncipe dobra', 'São Tomé and Príncipe', 'cêntimo', '', '', 0),
(247, 'SM', 4, 0, 0.2103, 149, 'TJS', 'Tajikistani Somoni', 'Tajikistan', 'Dirham', '', '', 0),
(248, 'x/y', 4, 0, 0.0006, 150, 'TZS', 'Tanzanian Shilling', 'Tanzania', 'Senti', '', '', 0),
(249, '฿', 4, 0, 0.0329, 151, 'THB', 'Thai Baht', 'Thailand', 'Satang', '', '', 0),
(250, 'T$ or PT - ¢', 4, 0, 0.5743, 152, 'TOP', 'Tongan Pa''anga', 'Tonga', 'Seniti', '', '', 0),
(251, 'p.', 4, 0, 87.6, 153, 'N/A', 'Transnistrian Ruble', 'Transnistria', 'Kopecks', '', '', 0),
(252, '$', 4, 0, 0.1558, 154, 'TTD', 'Trinidad and Tobago Dollar', 'Trinidad and Tobago', 'Cent', '', '', 0),
(253, 'د.ت (Arabic), or DT (Latin),', 4, 0, 0.6085, 155, 'TND', 'Tunisian Dollar', 'Tunisia', 'Milim', '', '', 0),
(254, 'TL', 4, 0, 0.5333, 156, 'TRY', 'Turkish Lira', 'Turkey', 'kuruş', '', '', 0),
(255, 'm', 4, 0, 0.3506, 157, 'TMT', 'Turkmenistani manat', 'Turkmenistan', 'tennesi (tenge),', '', '', 0),
(256, '$ or ¢', 4, 0, 0, 158, 'TVD', 'Tuvaluan Dollar', 'Tivalu', 'Cent', '', '', 0),
(257, 'USh', 4, 0, 0.0004, 159, 'UGX', 'Ugandan Shilling', 'Uganda', 'Cent', '', '', 0),
(258, '₴', 4, 0, 0.1226, 160, 'UAH', 'Ukrainian hryvnia', 'Ukraine', 'kopiyka (копійка),', '', '', 0),
(259, 'د.إ', 4, 0, 0.2722, 161, 'AED', 'United Arab Emirates dirham', 'United Arab Emirates', 'fils', '', '', 0),
(260, '$', 4, 1, 1, 1, 'USD', 'United States dollar', 'United-States', 'Dime/ Cent /Mill', ',', '', 0),
(261, '$', 4, 0, 0.0496, 162, 'UYU', 'Uruguayan peso', 'Uruguay', 'centésimo', '', '', 0),
(262, 'N/A', 4, 0, 0.0005, 163, 'UZS', 'Uzbekistani som', 'Uzbekistan', 'tiyin', '', '', 0),
(263, 'Vt', 4, 0, 0.0106, 164, 'VUV', 'Vanuatu vatu', 'Vanuatu', 'none', '', '', 0),
(264, 'Bs. F', 4, 0, 0.1589, 165, 'VEF', 'Venezuelan bolívar', 'Venezuela', 'céntimo', '', '', 0),
(265, '₫', 4, 0, 0, 166, 'VND', 'Vietnamese đồng', 'Vietnam', 'hào or xu', '', '', 0),
(266, 'CFA or c', 4, 0, 0.002, 167, 'XOF', 'West African CFA franc', 'West Africa', 'centime', '', '', 0),
(267, '﷼', 4, 0, 0.0047, 168, 'YER', 'Yemeni Rial', 'Yemen', 'Fils', '', '', 0),
(268, 'ZK', 4, 0, 0.0002, 169, 'ZMK', 'Zambian Kwacha', 'Zambia', 'Ngwee', '', '', 0),
(269, '$', 4, 0, 0.0031, 170, 'ZWL', 'Zimbabwean Dollar', 'Zimbabwe', 'Cent', '', '', 0),
(14, 'mi', 1, 1, 1609.344, 5, '', '', '', '', '', '', 0),
(15, 'yd', 1, 0, 0.9144, 6, '', '', '', '', '', '', 0),
(16, 'cm', 1, 0, 0.01, 7, '', '', '', '', '', '', 0),
(17, 'in', 1, 0, 0.0254, 0, '', '', '', '', '', '', 0),
(6, 'sq yd', 2, 0, 0.836, 5, '', '', '', '', '', '', 0);

CREATE TABLE IF NOT EXISTS `#__wpl_unit_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `#__wpl_unit_types` (`id`, `name`) VALUES
(1, 'Length'),
(2, 'Area'),
(3, 'Volume'),
(4, 'Currency');

CREATE TABLE IF NOT EXISTS `#__wpl_users` (
  `id` int(10) NOT NULL,
  `membership_name` varchar(255) NOT NULL,
  `membership_id` int(10) NOT NULL,
  `membership_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access_propertywizard` tinyint(4) NOT NULL DEFAULT '0',
  `access_propertyshow` tinyint(4) NOT NULL DEFAULT '1',
  `access_propertylisting` tinyint(4) NOT NULL DEFAULT '1',
  `access_profilewizard` tinyint(4) NOT NULL DEFAULT '1',
  `access_confirm` tinyint(4) NOT NULL DEFAULT '0',
  `access_propertymanager` tinyint(4) NOT NULL DEFAULT '0',
  `access_delete` tinyint(4) NOT NULL DEFAULT '0',
  `access_public_profile` tinyint(4) NOT NULL DEFAULT '1',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `main_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `secondary_email` varchar(255) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `languages` text NOT NULL,
  `location1_id` int(11) NOT NULL DEFAULT '0',
  `location2_id` int(11) NOT NULL DEFAULT '0',
  `location3_id` int(11) NOT NULL DEFAULT '0',
  `location4_id` int(11) NOT NULL DEFAULT '0',
  `location5_id` int(11) NOT NULL,
  `location6_id` int(11) NOT NULL,
  `location7_id` int(11) NOT NULL,
  `location1_name` varchar(50) NOT NULL,
  `location2_name` varchar(50) NOT NULL,
  `location3_name` varchar(50) NOT NULL,
  `location4_name` varchar(50) NOT NULL,
  `location5_name` varchar(50) NOT NULL,
  `location6_name` varchar(50) NOT NULL,
  `location7_name` varchar(50) NOT NULL,
  `zip_id` int(11) NOT NULL,
  `zip_name` varchar(20) NOT NULL,
  `maccess_num_prop` int(10) NOT NULL,
  `maccess_num_feat` int(10) NOT NULL,
  `maccess_num_hot` int(10) NOT NULL,
  `maccess_num_pic` int(10) NOT NULL,
  `maccess_rank_start` int(10) NOT NULL,
  `maccess_period` int(10) NOT NULL,
  `maccess_attach` int(10) NOT NULL,
  `maccess_price` double NOT NULL,
  `maccess_price_unit` int(10) NOT NULL,
  `maccess_lrestrict` int(4) NOT NULL,
  `maccess_listings` varchar(255) NOT NULL,
  `maccess_ptrestrict` int(4) NOT NULL,
  `maccess_property_types` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maccess_renewable` int(4) NOT NULL,
  `maccess_renewal_price` double NOT NULL,
  `maccess_renewal_price_unit` int(11) NOT NULL,
  `maccess_renewal_period` int(11) NOT NULL,
  `maccess_upgradable` int(4) NOT NULL,
  `maccess_upgradable_to` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `textsearch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `rendered` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `company_logo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `#__wpl_users` (`id`, `membership_name`, `membership_id`, `membership_type`, `access_propertywizard`, `access_propertyshow`, `access_propertylisting`, `access_profilewizard`, `access_confirm`, `access_propertymanager`, `access_delete`, `access_public_profile`, `first_name`, `last_name`, `company_name`, `company_address`, `website`, `main_email`, `secondary_email`, `sex`, `tel`, `fax`, `mobile`, `languages`, `location1_id`, `location2_id`, `location3_id`, `location4_id`, `location5_id`, `location6_id`, `location7_id`, `location1_name`, `location2_name`, `location3_name`, `location4_name`, `location5_name`, `location6_name`, `location7_name`, `zip_id`, `zip_name`, `maccess_num_prop`, `maccess_num_feat`, `maccess_num_hot`, `maccess_num_pic`, `maccess_rank_start`, `maccess_period`, `maccess_attach`, `maccess_price`, `maccess_price_unit`, `maccess_lrestrict`, `maccess_listings`, `maccess_ptrestrict`, `maccess_property_types`, `maccess_renewable`, `maccess_renewal_price`, `maccess_renewal_price_unit`, `maccess_renewal_period`, `maccess_upgradable`, `maccess_upgradable_to`, `textsearch`, `location_text`, `rendered`, `profile_picture`, `company_logo`) VALUES
(0, 'Guest', -2, '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '', '', NULL, '', '', ''),
(-1, 'Default', -1, '1', 1, 1, 1, 1, 0, 1, 1, 0, '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, '', -1, -1, -1, -1, 0, 0, -1, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '', '', NULL, '', '', ''),
(-2, 'Guest', 0, '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, '', '', NULL, '', '', '');

CREATE TABLE IF NOT EXISTS `#__wpl_user_group_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `#__wpl_user_group_types` (`id`, `name`) VALUES
(1, 'Agents'),
(2, 'Owners');

ALTER TABLE `#__wpl_properties` CHANGE `deleted` `deleted` TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE `#__wpl_properties` CHANGE `att_numb` `att_numb` MEDIUMINT( 9 ) NOT NULL DEFAULT '0',
CHANGE `sent_numb` `sent_numb` MEDIUMINT( 9 ) NOT NULL DEFAULT '0',
CHANGE `contact_numb` `contact_numb` MEDIUMINT( 9 ) NOT NULL DEFAULT '0',
CHANGE `location5_id` `location5_id` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `location6_id` `location6_id` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `location7_id` `location7_id` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `price_unit` `price_unit` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `price_si` `price_si` DOUBLE NOT NULL DEFAULT '0',
CHANGE `price_period` `price_period` SMALLINT( 6 ) NOT NULL DEFAULT '0',
CHANGE `rooms` `rooms` FLOAT NOT NULL DEFAULT '0',
CHANGE `living_area_unit` `living_area_unit` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `living_area_si` `living_area_si` FLOAT NOT NULL DEFAULT '0',
CHANGE `lot_area_unit` `lot_area_unit` INT( 11 ) NOT NULL DEFAULT '0';

ALTER TABLE `#__wpl_properties` CHANGE `expire_days` `expire_days` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `visit_time` `visit_time` MEDIUMINT( 9 ) NOT NULL DEFAULT '0',
CHANGE `build_year` `build_year` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `zip_id` `zip_id` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `sp_featured` `sp_featured` TINYINT( 4 ) NOT NULL DEFAULT '0',
CHANGE `sp_hot` `sp_hot` TINYINT( 4 ) NOT NULL DEFAULT '0',
CHANGE `sp_openhouse` `sp_openhouse` TINYINT( 4 ) NOT NULL DEFAULT '0',
CHANGE `sp_forclosure` `sp_forclosure` TINYINT( 4 ) NOT NULL DEFAULT '0',
CHANGE `field_7` `field_7` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `half_bathrooms` `half_bathrooms` FLOAT NOT NULL DEFAULT '0',
CHANGE `field_55` `field_55` FLOAT NOT NULL DEFAULT '0';

ALTER TABLE `#__wpl_properties` DROP `field_3000`, DROP `mls_server_id`, DROP `mls_class_id`, DROP `mls_query_id`;
ALTER TABLE `#__wpl_properties` CHANGE `add_date` `add_date` DATETIME NULL, CHANGE `visit_date` `visit_date` DATETIME NULL;
ALTER TABLE `#__wpl_properties` CHANGE `textsearch` `textsearch` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL, CHANGE `rendered` `rendered` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL, CHANGE `alias` `alias` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='10';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='11';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='9';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='8';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `n_[FIELD_ID]` tinyint(4) NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `n_[FIELD_ID]_distance` int NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `n_[FIELD_ID]_distance_by` tinyint(4) NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''n_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='7';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` text NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='5';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` int(11) NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='3';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `f_[FIELD_ID]_options` text NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `f_[FIELD_ID]` tinyint(4) NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''f_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='4';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` varchar(50) NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='1';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` float NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='2';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` date NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='12';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` datetime NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='13';

ALTER TABLE `#__wpl_properties` CHANGE `location1_name` `location1_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location2_name` `location2_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location3_name` `location3_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location4_name` `location4_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location5_name` `location5_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location6_name` `location6_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location7_name` `location7_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_properties` CHANGE `googlemap_title` `googlemap_title` VARCHAR( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `zip_name` `zip_name` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_properties` CHANGE `post_code` `post_code` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `description` `description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `meta_description` `meta_description` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `meta_keywords` `meta_keywords` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `street` `street` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `street_no` `street_no` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_properties` CHANGE `property_title` `property_title` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `field_42` `field_42` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `field_312` `field_312` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `ref_id` `ref_id` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `field_54` `field_54` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_properties` CHANGE `n_100` `n_100` TINYINT( 4 ) NULL ,
CHANGE `n_100_distance` `n_100_distance` INT( 11 ) NULL ,
CHANGE `n_100_distance_by` `n_100_distance_by` TINYINT( 4 ) NULL ,
CHANGE `n_101` `n_101` TINYINT( 4 ) NULL ,
CHANGE `n_101_distance` `n_101_distance` INT( 11 ) NULL ,
CHANGE `n_101_distance_by` `n_101_distance_by` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `n_102` `n_102` TINYINT( 4 ) NULL ,
CHANGE `n_102_distance` `n_102_distance` INT( 11 ) NULL ,
CHANGE `n_102_distance_by` `n_102_distance_by` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `n_103` `n_103` TINYINT( 4 ) NULL ,
CHANGE `n_103_distance` `n_103_distance` INT( 11 ) NULL ,
CHANGE `n_103_distance_by` `n_103_distance_by` TINYINT( 4 ) NULL ,
CHANGE `n_105` `n_105` TINYINT( 4 ) NULL ,
CHANGE `n_105_distance` `n_105_distance` INT( 11 ) NULL ,
CHANGE `n_105_distance_by` `n_105_distance_by` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `n_106` `n_106` TINYINT( 4 ) NULL ,
CHANGE `n_106_distance` `n_106_distance` INT( 11 ) NULL ,
CHANGE `n_106_distance_by` `n_106_distance_by` TINYINT( 4 ) NULL ,
CHANGE `n_107` `n_107` TINYINT( 4 ) NULL ,
CHANGE `n_107_distance` `n_107_distance` INT( 11 ) NULL ,
CHANGE `n_107_distance_by` `n_107_distance_by` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `n_108` `n_108` TINYINT( 4 ) NULL ,
CHANGE `n_108_distance` `n_108_distance` INT( 11 ) NULL ,
CHANGE `n_108_distance_by` `n_108_distance_by` TINYINT( 4 ) NULL ,
CHANGE `n_109` `n_109` TINYINT( 4 ) NULL ,
CHANGE `n_109_distance` `n_109_distance` INT( 11 ) NULL ,
CHANGE `n_109_distance_by` `n_109_distance_by` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `n_110` `n_110` TINYINT( 4 ) NULL ,
CHANGE `n_110_distance` `n_110_distance` INT( 11 ) NULL ,
CHANGE `n_110_distance_by` `n_110_distance_by` TINYINT( 4 ) NULL ,
CHANGE `n_111` `n_111` TINYINT( 4 ) NULL ,
CHANGE `n_111_distance` `n_111_distance` INT( 11 ) NULL ,
CHANGE `n_111_distance_by` `n_111_distance_by` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `n_112` `n_112` TINYINT( 4 ) NULL ,
CHANGE `n_112_distance` `n_112_distance` INT( 11 ) NULL ,
CHANGE `n_112_distance_by` `n_112_distance_by` TINYINT( 4 ) NULL ,
CHANGE `n_113` `n_113` TINYINT( 4 ) NULL ,
CHANGE `n_113_distance` `n_113_distance` INT( 11 ) NULL ,
CHANGE `n_113_distance_by` `n_113_distance_by` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `n_114` `n_114` TINYINT( 4 ) NULL ,
CHANGE `n_114_distance` `n_114_distance` INT( 11 ) NULL ,
CHANGE `n_114_distance_by` `n_114_distance_by` TINYINT( 4 ) NULL ,
CHANGE `n_115` `n_115` TINYINT( 4 ) NULL ,
CHANGE `n_115_distance` `n_115_distance` INT( 11 ) NULL ,
CHANGE `n_115_distance_by` `n_115_distance_by` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `f_130_options` `f_130_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_130` `f_130` TINYINT( 4 ) NULL ,
CHANGE `f_131_options` `f_131_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_131` `f_131` TINYINT( 4 ) NULL ,
CHANGE `f_132_options` `f_132_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_132` `f_132` TINYINT( 4 ) NULL ,
CHANGE `f_133_options` `f_133_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_133` `f_133` TINYINT( 4 ) NULL ,
CHANGE `f_134_options` `f_134_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_134` `f_134` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `f_135_options` `f_135_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_135` `f_135` TINYINT( 4 ) NULL ,
CHANGE `f_136_options` `f_136_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_136` `f_136` TINYINT( 4 ) NULL ,
CHANGE `f_137_options` `f_137_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_137` `f_137` TINYINT( 4 ) NULL ,
CHANGE `f_138_options` `f_138_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_138` `f_138` TINYINT( 4 ) NULL ,
CHANGE `f_139_options` `f_139_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_139` `f_139` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `f_140_options` `f_140_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_140` `f_140` TINYINT( 4 ) NULL ,
CHANGE `f_141_options` `f_141_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_141` `f_141` TINYINT( 4 ) NULL ,
CHANGE `f_142_options` `f_142_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_142` `f_142` TINYINT( 4 ) NULL ,
CHANGE `f_143_options` `f_143_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_143` `f_143` TINYINT( 4 ) NULL ,
CHANGE `f_144_options` `f_144_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_144` `f_144` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `f_146_options` `f_146_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_146` `f_146` TINYINT( 4 ) NULL ,
CHANGE `f_147_options` `f_147_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_147` `f_147` TINYINT( 4 ) NULL ,
CHANGE `f_148_options` `f_148_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_148` `f_148` TINYINT( 4 ) NULL ,
CHANGE `f_149_options` `f_149_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_149` `f_149` TINYINT( 4 ) NULL ,
CHANGE `f_150_options` `f_150_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_150` `f_150` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `f_151_options` `f_151_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_151` `f_151` TINYINT( 4 ) NULL ,
CHANGE `f_152_options` `f_152_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_152` `f_152` TINYINT( 4 ) NULL ,
CHANGE `f_153_options` `f_153_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_153` `f_153` TINYINT( 4 ) NULL ,
CHANGE `f_154_options` `f_154_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_154` `f_154` TINYINT( 4 ) NULL ,
CHANGE `f_155_options` `f_155_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_155` `f_155` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `f_156_options` `f_156_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_156` `f_156` TINYINT( 4 ) NULL ,
CHANGE `f_157_options` `f_157_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_157` `f_157` TINYINT( 4 ) NULL ,
CHANGE `f_158_options` `f_158_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_158` `f_158` TINYINT( 4 ) NULL ,
CHANGE `f_159_options` `f_159_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_159` `f_159` TINYINT( 4 ) NULL ,
CHANGE `f_160_options` `f_160_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_160` `f_160` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `f_161_options` `f_161_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_161` `f_161` TINYINT( 4 ) NULL ,
CHANGE `f_162_options` `f_162_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_162` `f_162` TINYINT( 4 ) NULL ,
CHANGE `f_163_options` `f_163_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_163` `f_163` TINYINT( 4 ) NULL ,
CHANGE `f_164_options` `f_164_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_164` `f_164` TINYINT( 4 ) NULL ,
CHANGE `f_165_options` `f_165_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_165` `f_165` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_properties` CHANGE `f_166_options` `f_166_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_166` `f_166` TINYINT( 4 ) NULL ,
CHANGE `f_167_options` `f_167_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_167` `f_167` TINYINT( 4 ) NULL ,
CHANGE `f_168_options` `f_168_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_168` `f_168` TINYINT( 4 ) NULL ,
CHANGE `f_169_options` `f_169_options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `f_169` `f_169` TINYINT( 4 ) NULL;

ALTER TABLE `#__wpl_dbst` CHANGE `name` `name` VARCHAR( 150 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `type` `type` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `options` `options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `enabled` `enabled` TINYINT( 4 ) NOT NULL DEFAULT '1' COMMENT '0=no,1=yes,2=always',
CHANGE `plisting` `plisting` TINYINT( 4 ) NOT NULL DEFAULT '0',
CHANGE `index` `index` FLOAT( 5, 2 ) NOT NULL DEFAULT '99.00',
CHANGE `css` `css` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `style` `style` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_dbst` CHANGE `listing_specific` `listing_specific` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `property_type_specific` `property_type_specific` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `table_name` `table_name` VARCHAR( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'table which the data is stored to',
CHANGE `table_column` `table_column` VARCHAR( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'column of table which datat is stored to',
CHANGE `category` `category` INT( 11 ) NOT NULL DEFAULT '1' COMMENT 'in propertywizard category',
CHANGE `rank_point` `rank_point` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `text_search` `text_search` TINYINT( 4 ) NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_dbcat` CHANGE `name` `name` VARCHAR( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `icon` `icon` VARCHAR( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `index` `index` FLOAT NOT NULL DEFAULT '99.00',
CHANGE `enabled` `enabled` TINYINT( 4 ) NOT NULL DEFAULT '1',
CHANGE `pshow` `pshow` TINYINT( 4 ) NOT NULL DEFAULT '1';

ALTER TABLE `#__wpl_dbcat` CHANGE `searchmod` `searchmod` TINYINT( 4 ) NOT NULL DEFAULT '1',
CHANGE `rankable` `rankable` TINYINT( 4 ) NOT NULL DEFAULT '1',
CHANGE `prefix` `prefix` VARCHAR( 5 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `listing_specific` `listing_specific` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `property_type_specific` `property_type_specific` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_activities` CHANGE `activity` `activity` VARCHAR( 255 ) CHARACTER SET latin1 COLLATE latin1_general_ci NULL ,
CHANGE `position` `position` VARCHAR( 255 ) CHARACTER SET latin1 COLLATE latin1_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
CHANGE `title` `title` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL;

ALTER TABLE `#__wpl_listing_types` CHANGE `parent` `parent` INT( 10 ) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `enabled` `enabled` TINYINT( 4 ) NOT NULL DEFAULT '1',
CHANGE `index` `index` FLOAT( 5, 2 ) NOT NULL DEFAULT '99.00',
CHANGE `gicon` `gicon` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `caption_img` `caption_img` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `name` `name` VARCHAR( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_property_types` CHANGE `parent` `parent` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `enabled` `enabled` TINYINT( 4 ) NOT NULL DEFAULT '1',
CHANGE `editable` `editable` TINYINT( 4 ) NOT NULL DEFAULT '1',
CHANGE `index` `index` FLOAT( 5, 2 ) NOT NULL DEFAULT '99.00',
CHANGE `listing` `listing` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `name` `name` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `keyword` `keyword` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_room_types` CHANGE `name` `name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `icon` `icon` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_users` CHANGE `membership_name` `membership_name` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `membership_id` `membership_id` INT( 10 ) NULL ,
CHANGE `membership_type` `membership_type` VARCHAR( 10 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
CHANGE `first_name` `first_name` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `last_name` `last_name` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `company_name` `company_name` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_users` CHANGE `company_address` `company_address` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `website` `website` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `main_email` `main_email` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
CHANGE `secondary_email` `secondary_email` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `sex` `sex` TINYINT( 4 ) NULL ,
CHANGE `tel` `tel` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `fax` `fax` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `mobile` `mobile` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `languages` `languages` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_users` CHANGE `location5_id` `location5_id` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `location6_id` `location6_id` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `location7_id` `location7_id` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `zip_id` `zip_id` INT( 11 ) NOT NULL DEFAULT '0',
CHANGE `textsearch` `textsearch` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
CHANGE `rendered` `rendered` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
CHANGE `profile_picture` `profile_picture` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `company_logo` `company_logo` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_users` CHANGE `location1_name` `location1_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location2_name` `location2_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location3_name` `location3_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location4_name` `location4_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location5_name` `location5_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location6_name` `location6_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `location7_name` `location7_name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `zip_name` `zip_name` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_users` CHANGE `maccess_num_prop` `maccess_num_prop` INT( 10 ) NULL ,
CHANGE `maccess_num_feat` `maccess_num_feat` INT( 10 ) NULL ,
CHANGE `maccess_num_hot` `maccess_num_hot` INT( 10 ) NULL ,
CHANGE `maccess_num_pic` `maccess_num_pic` INT( 10 ) NULL ,
CHANGE `maccess_rank_start` `maccess_rank_start` INT( 10 ) NULL ,
CHANGE `maccess_period` `maccess_period` INT( 10 ) NULL;

ALTER TABLE `#__wpl_users` CHANGE `maccess_attach` `maccess_attach` INT( 10 ) NULL ,
CHANGE `maccess_price` `maccess_price` DOUBLE NULL ,
CHANGE `maccess_price_unit` `maccess_price_unit` INT( 10 ) NULL ,
CHANGE `maccess_lrestrict` `maccess_lrestrict` INT( 4 ) NULL ,
CHANGE `maccess_listings` `maccess_listings` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `maccess_ptrestrict` `maccess_ptrestrict` INT( 4 ) NULL;

ALTER TABLE `#__wpl_users` CHANGE `maccess_property_types` `maccess_property_types` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
CHANGE `maccess_renewable` `maccess_renewable` INT( 4 ) NULL ,
CHANGE `maccess_renewal_price` `maccess_renewal_price` DOUBLE NULL ,
CHANGE `maccess_renewal_price_unit` `maccess_renewal_price_unit` INT( 11 ) NULL ,
CHANGE `maccess_renewal_period` `maccess_renewal_period` INT( 11 ) NULL ,
CHANGE `maccess_upgradable` `maccess_upgradable` INT( 4 ) NULL ,
CHANGE `maccess_upgradable_to` `maccess_upgradable_to` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL;

ALTER TABLE `#__wpl_dbst` CHANGE `index` `index` FLOAT( 8, 2 ) NOT NULL DEFAULT '99.00';

ALTER TABLE `#__wpl_addons` CHANGE `name` `name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `version` `version` VARCHAR( 15 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `addon_name` `addon_name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `update` `update` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `update_key` `update_key` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `support_key` `support_key` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `message` `message` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_items` CHANGE `parent_kind` `parent_kind` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
CHANGE `parent_id` `parent_id` INT( 10 ) NULL ,
CHANGE `item_type` `item_type` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `item_cat` `item_cat` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `item_name` `item_name` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `item_extra1` `item_extra1` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `item_extra2` `item_extra2` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `item_extra3` `item_extra3` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_item_categories` CHANGE `item_type` `item_type` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `parent_kind` `parent_kind` VARCHAR( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `category_name` `category_name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_location1` CHANGE `enabled` `enabled` TINYINT( 4 ) NULL ,
CHANGE `name` `name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `tax_percent` `tax_percent` DOUBLE NULL ,
CHANGE `latitude` `latitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `longitude` `longitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_location2` CHANGE `parent` `parent` BIGINT( 20 ) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `name` `name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `tax_percent` `tax_percent` DOUBLE NULL ,
CHANGE `latitude` `latitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `longitude` `longitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_location3` CHANGE `parent` `parent` BIGINT( 20 ) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `name` `name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `tax_percent` `tax_percent` DOUBLE NULL ,
CHANGE `latitude` `latitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `longitude` `longitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_location4` CHANGE `parent` `parent` BIGINT( 20 ) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `name` `name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `tax_percent` `tax_percent` DOUBLE NULL ,
CHANGE `latitude` `latitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `longitude` `longitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_location5` CHANGE `parent` `parent` BIGINT( 20 ) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `name` `name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `tax_percent` `tax_percent` DOUBLE NULL ,
CHANGE `latitude` `latitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `longitude` `longitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_location6` CHANGE `parent` `parent` BIGINT( 20 ) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `name` `name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `tax_percent` `tax_percent` DOUBLE NULL ,
CHANGE `latitude` `latitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `longitude` `longitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_location7` CHANGE `parent` `parent` BIGINT( 20 ) UNSIGNED NOT NULL DEFAULT '1',
CHANGE `name` `name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `tax_percent` `tax_percent` DOUBLE NULL ,
CHANGE `latitude` `latitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `longitude` `longitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_locationtextsearch` CHANGE `location_text` `location_text` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `count` `count` INT( 10 ) NULL ,
CHANGE `counts` `counts` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_locationzips` CHANGE `name` `name` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `parent` `parent` INT( 11 ) NULL ,
CHANGE `country_id` `country_id` INT( 11 ) NULL ,
CHANGE `median_income` `median_income` INT( 11 ) NULL ,
CHANGE `average_hvalue` `average_hvalue` INT( 11 ) NULL ,
CHANGE `distance_to_downtown` `distance_to_downtown` INT( 11 ) NULL ,
CHANGE `school_rating` `school_rating` TINYINT( 4 ) NULL ,
CHANGE `tax_rate` `tax_rate` INT( 11 ) NULL;

ALTER TABLE `#__wpl_locationzips` CHANGE `population` `population` INT( 11 ) NULL ,
CHANGE `boundary` `boundary` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `color` `color` VARCHAR( 6 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
CHANGE `hcolor` `hcolor` VARCHAR( 6 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
CHANGE `longitude` `longitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `latitude` `latitude` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_settings` CHANGE `setting_name` `setting_name` VARCHAR( 250 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
CHANGE `setting_value` `setting_value` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
CHANGE `title` `title` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `params` `params` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `options` `options` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_setting_categories` CHANGE `name` `name` VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;
ALTER TABLE `#__wpl_unit_types` CHANGE `name` `name` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_units` CHANGE `name` `name` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `enabled` `enabled` TINYINT( 4 ) NOT NULL DEFAULT '0',
CHANGE `tosi` `tosi` DOUBLE NOT NULL DEFAULT '0',
CHANGE `index` `index` INT( 11 ) NOT NULL DEFAULT '999',
CHANGE `extra` `extra` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'iso code';

ALTER TABLE `#__wpl_units` CHANGE `extra2` `extra2` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'currency name',
CHANGE `extra3` `extra3` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'icon',
CHANGE `extra4` `extra4` VARCHAR( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `seperator` `seperator` VARCHAR( 2 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `d_seperator` `d_seperator` VARCHAR( 2 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `after_before` `after_before` TINYINT( 4 ) NOT NULL DEFAULT '0' COMMENT '0=before,1=after';

ALTER TABLE `#__wpl_sort_options` CHANGE `name` `name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
CHANGE `field_name` `field_name` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL;

ALTER TABLE `#__wpl_properties` CHANGE `mls_id` `mls_id` VARCHAR( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(99, 'style', 'Googlefont', 0, '', 1, 'wpl-google-font', 'http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic|Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700|Scada:400italic,700italic,400,700|Archivo+Narrow:400,40', '', '', '1', '', 0, 35.00, 2);

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(31, 'shortcode', 'my profile shortcode', 0, 'it used for showing my profile', 1, 'wpl_my_profile', 'wpl_html->load_profile_wizard', '', '', '', '', 0, 99.99, 2);

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(34, 'shortcode', 'Profile show shortcode', 0, 'it used for showing a profile', 1, 'wpl_profile_show', 'wpl_controller->f:profile_show:display', '', '', '', '', 0, 99.99, 2);

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(32, 'shortcode', 'Add/Edit listing shortcode', 0, 'it used for showing Add/Edit listing view', 1, 'wpl_add_edit_listing', 'wpl_html->load_add_edit_listing', '', '', '', '', 0, 99.99, 2),
(33, 'shortcode', 'Listing Manager shortcode', 0, 'it used for showing Listing Manager', 1, 'wpl_listing_manager', 'wpl_html->load_listing_manager', '', '', '', '', 0, 99.99, 2);

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(20, 'widget', 'WPL Agents Widget', 0, '', 1, 'widgets.agents.main', 'widgets_init', 'WPL_agents_widget', '', '', '', 0, 99.99, 2);

INSERT INTO `#__wpl_cronjobs` (`id`, `cronjob_name`, `period`, `class_location`, `class_name`, `function_name`, `params`, `enabled`, `latest_run`) VALUES
(3, 'Check All Updates', 24, 'global', 'wpl_global', 'check_all_update', '', 1, '2014-04-05 13:19:29');

UPDATE `#__wpl_cronjobs` SET `cronjob_name`='Remove Expired tmp Directories' WHERE `id`='2';

UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='8';
UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='13';
UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='14';

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(21, 'sidebar', 'Property Show Bottom', 0, 'Appears on bottom of single property/property show page', 1, 'wpl-pshow-bottom', '', '', '', '', '', 0, 99.99, 2),
(22, 'sidebar', 'Profile Show Top', 0, 'Appears on top of agent show/profile show page', 1, 'wpl-profileshow-top', '', '', '', '', '', 0, 99.99, 2);

UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='2';
UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='3';

ALTER TABLE `#__wpl_activities` ADD `association_type` TINYINT( 4 ) NOT NULL DEFAULT '1', ADD `associations` TEXT NULL;

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(50, 'backend_listing_target_page', NULL, 1, 4, 'wppages', 'Backend Listing Target', '{"tooltip":"Used for backend views"}', '{"show_empty":1} ', 99.00);

ALTER TABLE `#__wpl_users` ADD `access_change_user` TINYINT( 4 ) NOT NULL DEFAULT '0' AFTER `access_public_profile`;

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(36, 'realtyna_username', NULL, 0, 1, 'text', '', '', '', 99.00),
(37, 'realtyna_password', NULL, 0, 1, 'text', '', '', '', 99.00),
(38, 'realtyna_verified', '0', 0, 1, 'text', '', '', '', 99.00);

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(105, 'javascript', 'AjaxFileUpload', 0, '', 1, 'ajaxFileUpload', 'js/libs/bower_components/ajaxfileupload.min.js', '', '', '', '', 0, 100.00, 2),
(104, 'javascript', 'HoverIntent', 0, '', 1, 'hoverIntent', 'js/libs/bower_components/hoverintent/jquery.hoverIntent.js', '', '', '', '', 0, 100.00, 1),
(103, 'javascript', 'Transit', 0, '', 1, 'transit', 'js/libs/bower_components/transit/jquery.transit.min.js', '', '', '', '', 0, 100.00, 1),
(102, 'javascript', 'customScrollBarJS', 0, '', 1, 'customScrollBarJS', 'js/libs/bower_components/malihu-custom-scrollbar-plugin-bower/jquery.mCustomScrollbar.concat.min.js', '', '', '', '', 0, 100.00, 1),
(101, 'javascript', 'Chosen', 0, '', 1, 'ChosenJS', 'js/libs/bower_components/chosen/public/chosen.jquery.min.js', '', '', '', '', 0, 100.00, 1);

DELETE FROM `#__wpl_extensions` WHERE `id`='93';
DELETE FROM `#__wpl_extensions` WHERE `id`='95';

UPDATE `#__wpl_activities` SET `activity`='agent_info:profileshow' WHERE `id`='12';

UPDATE `#__wpl_activities` SET `association_type`='1';
UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='98';
UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='102';
UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='89';
UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='101';

INSERT INTO `#__wpl_units` (`id`, `name`, `type`, `enabled`, `tosi`, `index`, `extra`, `extra2`, `extra3`, `extra4`, `seperator`, `d_seperator`, `after_before`) VALUES
(7, 'Hectare', 2, 0, 10000, 7, '', '', '', '', '', '', 0);

ALTER TABLE `#__wpl_settings` CHANGE `setting_value` `setting_value` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

INSERT INTO `#__wpl_dbst` (`id`, `kind`, `mandatory`, `name`, `type`, `options`, `enabled`, `pshow`, `plisting`, `searchmod`, `editable`, `deletable`, `index`, `css`, `style`, `specificable`, `listing_specific`, `property_type_specific`, `table_name`, `table_column`, `category`, `rankable`, `rank_point`, `comments`, `pwizard`, `text_search`, `params`) VALUES
(313, 0, 3, 'Property Title', 'text', 'null', 1, '0', 1, 0, 1, 0, 1.00, '', '', 1, '', '', 'wpl_properties', 'field_313', 1, 0, 0, '', '1', 0, '[]');

ALTER TABLE `#__wpl_properties` ADD `field_313` VARCHAR( 50 ) NULL AFTER `field_312`;
UPDATE `#__wpl_dbcat` SET `listing_specific`='' WHERE `id`='7';

INSERT INTO `#__wpl_dbst_types` (`id`, `kind`, `type`, `enabled`, `index`, `queries_add`, `queries_delete`) VALUES
(14, '[0][1]', 'url', 1, 1.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` varchar(50) NULL; UPDATE #__wpl_dbst SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\r\nDROP `field_[FIELD_ID]`;');

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(24, 'sidebar', 'Property Listing Top', 0, 'Appears below of Google map in property listing page', 1, 'wpl-plisting-top', '', '', '', '', '', 0, 99.99, 2);

UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2]' WHERE `id`='1';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2]' WHERE `id`='2';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2]' WHERE `id`='3';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2]' WHERE `id`='5';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2]' WHERE `id`='6';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2]' WHERE `id`='11';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2]' WHERE `id`='12';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2]' WHERE `id`='13';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2]' WHERE `id`='14';

UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='903';
UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='900';
UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='901';
UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='902';
UPDATE `#__wpl_dbst` SET `editable`='1', `deletable`='1' WHERE `id`='904';
UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='905';
UPDATE `#__wpl_dbst` SET `editable`='1', `deletable`='1' WHERE `id`='907';
UPDATE `#__wpl_dbst` SET `editable`='1', `deletable`='1' WHERE `id`='908';
UPDATE `#__wpl_dbst` SET `editable`='1', `deletable`='1' WHERE `id`='909';
UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='914';

UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='400';
UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='401';
UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='402';
UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='403';

UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='4';
UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='5';

ALTER TABLE `#__wpl_extensions` CHANGE `param2` `param2` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL;
UPDATE `#__wpl_extensions` SET `param2`='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic|Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700|Scada:400italic,700italic,400,700|Archivo+Narrow:400,40|Lato:400,700,900,400italic|BenchNine' WHERE `id`='99';

UPDATE `#__wpl_dbst` SET `index`='3.50' WHERE `id`='171';
UPDATE `#__wpl_dbst` SET `text_search`='1' WHERE `id`='308';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(51, 'log', '0', 1, 1, 'select', 'WPL log', NULL, '{"values":[{"key":0,"value":"Disabled" },{"key":1,"value":"Enabled"}]}', 120.00);

UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='51';
UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='52';

INSERT INTO `#__wpl_extensions` (`id`,`type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(108, 'javascript', 'Modernizr', 0, '', '', 'modernizer', 'js/modernizr.custom.js', '', '', '1', '', 0, 99.99, 0);

UPDATE `#__wpl_extensions` SET `param5`='' WHERE `id`='108';
UPDATE `#__wpl_extensions` SET `enabled`='1' WHERE `id`='108';

UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='10';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='11';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='9';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='8';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `n_[FIELD_ID]` tinyint(4) NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `n_[FIELD_ID]_distance` int NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `n_[FIELD_ID]_distance_by` tinyint(4) NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''n_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='7';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` text NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='5';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` int(11) NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='3';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `f_[FIELD_ID]_options` text NULL; ALTER TABLE `#__[TABLE_NAME]` ADD `f_[FIELD_ID]` tinyint(4) NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''f_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='4';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` varchar(50) NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='1';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` float NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='2';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` date NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='12';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` datetime NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='13';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` varchar(50) NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='14';
UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='18';

CREATE TABLE IF NOT EXISTS `#__wpl_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_memberships` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_users` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_emails` text COLLATE utf8_unicode_ci,
  `options` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;

INSERT INTO `#__wpl_menus` (`id`, `client`, `type`, `parent`, `page_title`, `menu_title`, `capability`, `menu_slug`, `function`, `separator`, `enabled`, `index`, `position`, `dashboard`) VALUES
(13, 'backend', 'submenu', 'WPL_main_menu', 'Notifications', 'Notifications', 'admin', 'wpl_admin_notifications', 'b:notifications:home', 0, 1, 2.05, 0, 0);

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(109, 'javascript', 'Handlebars', 0, '', 1, 'handlebars', 'js/handlebars.js', '', '', '', '', 0, 109.99, 0);

INSERT INTO `#__wpl_setting_categories` (`id`, `name`, `showable`, `index`) VALUES (5, 'Notifications', 1, 99.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(53, 'wpl_sender_email', '', 1, 5, 'text', 'Sender email', NULL, '', 121.00),
(54, 'wpl_sender_name', '', 1, 5, 'text', 'Sender name', NULL, '', 122.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(55, 'property_location_pattern', '[street_no] [street][glue] [location4_name][glue] [location3_name][glue] [location2_name][glue] [location1_name] [zip_name]', 1, 3, 'text', 'Property Location Pattern', NULL, '', 123.00),
(56, 'user_location_pattern', '[location5_name][glue][location4_name][glue][location3_name][glue][location2_name][glue][location1_name] [zip_name]', 1, 3, 'text', 'User Location Pattern', NULL, '', 124.00);

UPDATE `#__wpl_extensions` SET `param2`='https://maps.google.com/maps/api/js?libraries=places&sensor=true' WHERE `id`='94';
UPDATE `#__wpl_settings` SET `type`='wppages' WHERE `id`='25';

UPDATE `#__wpl_extensions` SET `param2`='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic|Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700|Scada:400italic,700italic,400,700|Archivo+Narrow:400,40|Lato:400,700,900,400italic|BenchNine' WHERE `id`='99';

INSERT INTO `#__wpl_events` (`id`, `type`, `trigger`, `class_location`, `class_name`, `function_name`, `params`, `enabled`) VALUES
(4, 'notification', 'contact_agent', 'libraries.event_handlers.notifications', 'wpl_events_notifications', 'contact_agent', '', 1);

INSERT INTO `#__wpl_notifications` (`id`, `description`, `template`, `subject`, `additional_memberships`, `additional_users`, `additional_emails`, `options`, `params`, `enabled`) VALUES
(2, 'Contact to listing agent from listing page', 'contact_agent', 'New Contact', '', '', '', NULL, '', 1);

INSERT INTO `#__wpl_activities` (`id`, `activity`, `position`, `enabled`, `index`, `params`, `show_title`, `title`, `association_type`, `associations`) VALUES
(23, 'listing_contact', 'pshow_position2', 1, 99.00, '', 1, 'Contact Agent', 1, '');

UPDATE `#__wpl_dbst` SET `table_column`='locations' WHERE `id`='41';
UPDATE `#__wpl_dbst` SET `table_column`='locations' WHERE `id`='911';
UPDATE `#__wpl_dbst` SET `options`='' WHERE `id`='6';

ALTER TABLE `#__wpl_item_categories` DROP `parent_kind`;
DROP TABLE `#__wpl_notices`;

UPDATE `#__wpl_dbst` SET `text_search`='1' WHERE `id`='312';
UPDATE `#__wpl_dbst` SET `text_search`='1' WHERE `id`='313';

CREATE TABLE IF NOT EXISTS `#__wpl_kinds` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `table` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__wpl_kinds` (`id`, `name`, `table`) VALUES
(0, 'Property', 'wpl_properties'),
(2, 'User', 'wpl_users');

UPDATE `#__wpl_settings` SET `index`='50.00' WHERE `id`='50';
UPDATE `#__wpl_settings` SET `title`='Property Pattern' WHERE `id`='55';
UPDATE `#__wpl_settings` SET `title`='User Pattern' WHERE `id`='56';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(65, 'location_separator3', '', 1, 3, 'separator', 'Locations', '', '', 4.50),
(63, 'location_separator1', '', 1, 3, 'separator', 'Location Keywords', '', '', 98.00),
(64, 'location_separator2', '', 1, 3, 'separator', 'Location Patterns', '', '', 122.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(66, 'permalink_separator', '', 1, 4, 'separator', 'WPL Permalink', '', '', 0.90);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(67, 'sender_separator', NULL, 1, 5, 'separator', 'Notification Sender', NULL, NULL, 120.50);

DELETE FROM `#__wpl_settings` WHERE `id`='3';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(68, 'resize_separator', NULL, 1, 2, 'separator', 'Resize', NULL, NULL, 1.50),
(69, 'watermark_separator', NULL, 1, 2, 'separator', 'Watermark', NULL, NULL, 4.50);

UPDATE `#__wpl_settings` SET `index`='109.00' WHERE `id`='31';
UPDATE `#__wpl_settings` SET `index`='51.00' WHERE `id`='22';
UPDATE `#__wpl_settings` SET `index`='52.00' WHERE `id`='27';
UPDATE `#__wpl_settings` SET `index`='53.00' WHERE `id`='51';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(70, 'global_separator', NULL, 1, 1, 'separator', 'Global', NULL, NULL, 0.05),
(71, 'listing_pages_separator', NULL, 1, 1, 'separator', 'Listings', NULL, NULL, 98.00),
(72, 'users_separator', NULL, 1, 1, 'separator', 'Users', NULL, NULL, 107.00),
(73, 'io_separator', NULL, 1, 1, 'separator', 'I/O Application', NULL, NULL, 116.00);

INSERT INTO `#__wpl_activities` (`id`, `activity`, `position`, `enabled`, `index`, `params`, `show_title`, `title`, `association_type`, `associations`) VALUES
(24, 'user_contact', 'profile_show_position1', 0, 99.00, '{"top_comment":""}', 1, 'Contact', 1, '');

INSERT INTO `#__wpl_notifications` (`id`, `description`, `template`, `subject`, `additional_memberships`, `additional_users`, `additional_emails`, `options`, `params`, `enabled`) VALUES
(3, 'Contact to agent from profile page', 'contact_profile', 'New Profile Contact', '', '', '', NULL, '', 1);

INSERT INTO `#__wpl_events` (`id`, `type`, `trigger`, `class_location`, `class_name`, `function_name`, `params`, `enabled`) VALUES
(5, 'notification', 'contact_profile', 'libraries.event_handlers.notifications', 'wpl_events_notifications', 'contact_profile', '', 1);

UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='313';

ALTER TABLE `#__wpl_properties` CHANGE `last_modified_time_stamp` `last_modified_time_stamp` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE `#__wpl_users` ADD `last_modified_time_stamp` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `rendered`;

UPDATE `#__wpl_dbst` SET `index`='1.00' WHERE `id`='308';
UPDATE `#__wpl_dbst` SET `index`='0.50' WHERE `id`='313';
UPDATE `#__wpl_dbst` SET `index`='0.60' WHERE `id`='312';

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(36, 'service', 'Helps Service', 0, 'For running WPL Helps', 1, 'init', 'helps->run', '9999', '', '', '', 0, 99.99, 1);

ALTER TABLE `#__wpl_dbcat` ADD `params` TEXT NULL;
ALTER TABLE `#__wpl_dbcat` DROP `icon`, DROP `rankable`;

UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='41';
UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='911';
UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='53';

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
ALTER TABLE `#__wpl_users` CHANGE `id` `id` INT(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `#__wpl_location1` ADD `abbr` VARCHAR(100) NULL AFTER `name`;
ALTER TABLE `#__wpl_location2` ADD `abbr` VARCHAR(100) NULL AFTER `name`;
ALTER TABLE `#__wpl_location3` ADD `abbr` VARCHAR(100) NULL AFTER `name`;
ALTER TABLE `#__wpl_location4` ADD `abbr` VARCHAR(100) NULL AFTER `name`;
ALTER TABLE `#__wpl_location5` ADD `abbr` VARCHAR(100) NULL AFTER `name`;
ALTER TABLE `#__wpl_location6` ADD `abbr` VARCHAR(100) NULL AFTER `name`;
ALTER TABLE `#__wpl_location7` ADD `abbr` VARCHAR(100) NULL AFTER `name`;

UPDATE `#__wpl_location1` SET `abbr`='US' WHERE `id`='254';
UPDATE `#__wpl_location2` SET `abbr`='AL' WHERE `id`='6001';
UPDATE `#__wpl_location2` SET `abbr`='AK' WHERE `id`='6002';
UPDATE `#__wpl_location2` SET `abbr`='AS' WHERE `id`='6003';
UPDATE `#__wpl_location2` SET `abbr`='AZ' WHERE `id`='6004';
UPDATE `#__wpl_location2` SET `abbr`='AR' WHERE `id`='6005';
UPDATE `#__wpl_location2` SET `abbr`='CA' WHERE `id`='6006';
UPDATE `#__wpl_location2` SET `abbr`='CO' WHERE `id`='6007';
UPDATE `#__wpl_location2` SET `abbr`='CT' WHERE `id`='6008';
UPDATE `#__wpl_location2` SET `abbr`='DE' WHERE `id`='6009';
UPDATE `#__wpl_location2` SET `abbr`='DC' WHERE `id`='6010';
UPDATE `#__wpl_location2` SET `abbr`='FM' WHERE `id`='6011';
UPDATE `#__wpl_location2` SET `abbr`='FL' WHERE `id`='6012';
UPDATE `#__wpl_location2` SET `abbr`='GA' WHERE `id`='6013';
UPDATE `#__wpl_location2` SET `abbr`='GU' WHERE `id`='6014';
UPDATE `#__wpl_location2` SET `abbr`='HI' WHERE `id`='6015';
UPDATE `#__wpl_location2` SET `abbr`='ID' WHERE `id`='6016';
UPDATE `#__wpl_location2` SET `abbr`='IL' WHERE `id`='6017';
UPDATE `#__wpl_location2` SET `abbr`='IN' WHERE `id`='6018';
UPDATE `#__wpl_location2` SET `abbr`='IA' WHERE `id`='6019';
UPDATE `#__wpl_location2` SET `abbr`='KS' WHERE `id`='6020';
UPDATE `#__wpl_location2` SET `abbr`='KY' WHERE `id`='6021';
UPDATE `#__wpl_location2` SET `abbr`='LA' WHERE `id`='6022';
UPDATE `#__wpl_location2` SET `abbr`='ME' WHERE `id`='6023';
UPDATE `#__wpl_location2` SET `abbr`='MH' WHERE `id`='6024';
UPDATE `#__wpl_location2` SET `abbr`='MD' WHERE `id`='6025';
UPDATE `#__wpl_location2` SET `abbr`='MA' WHERE `id`='6026';
UPDATE `#__wpl_location2` SET `abbr`='MI' WHERE `id`='6027';
UPDATE `#__wpl_location2` SET `abbr`='MN' WHERE `id`='6028';
UPDATE `#__wpl_location2` SET `abbr`='UM' WHERE `id`='6029';
UPDATE `#__wpl_location2` SET `abbr`='MS' WHERE `id`='6030';
UPDATE `#__wpl_location2` SET `abbr`='MO' WHERE `id`='6031';
UPDATE `#__wpl_location2` SET `abbr`='MT' WHERE `id`='6032';
UPDATE `#__wpl_location2` SET `abbr`='NE' WHERE `id`='6033';
UPDATE `#__wpl_location2` SET `abbr`='NV' WHERE `id`='6034';
UPDATE `#__wpl_location2` SET `abbr`='NH' WHERE `id`='6035';
UPDATE `#__wpl_location2` SET `abbr`='NJ' WHERE `id`='6036';
UPDATE `#__wpl_location2` SET `abbr`='NM' WHERE `id`='6037';
UPDATE `#__wpl_location2` SET `abbr`='NY' WHERE `id`='6038';
UPDATE `#__wpl_location2` SET `abbr`='NC' WHERE `id`='6039';
UPDATE `#__wpl_location2` SET `abbr`='ND' WHERE `id`='6040';
UPDATE `#__wpl_location2` SET `abbr`='MP' WHERE `id`='6041';
UPDATE `#__wpl_location2` SET `abbr`='OH' WHERE `id`='6042';
UPDATE `#__wpl_location2` SET `abbr`='OK' WHERE `id`='6043';
UPDATE `#__wpl_location2` SET `abbr`='OR' WHERE `id`='6044';
UPDATE `#__wpl_location2` SET `abbr`='PW' WHERE `id`='6045';
UPDATE `#__wpl_location2` SET `abbr`='PA' WHERE `id`='6046';
UPDATE `#__wpl_location2` SET `abbr`='PR' WHERE `id`='6047';
UPDATE `#__wpl_location2` SET `abbr`='RI' WHERE `id`='6048';
UPDATE `#__wpl_location2` SET `abbr`='SC' WHERE `id`='6049';
UPDATE `#__wpl_location2` SET `abbr`='SD' WHERE `id`='6050';
UPDATE `#__wpl_location2` SET `abbr`='TN' WHERE `id`='6051';
UPDATE `#__wpl_location2` SET `abbr`='TX' WHERE `id`='6052';
UPDATE `#__wpl_location2` SET `abbr`='UT' WHERE `id`='6053';
UPDATE `#__wpl_location2` SET `abbr`='VT' WHERE `id`='6054';
UPDATE `#__wpl_location2` SET `abbr`='VI' WHERE `id`='6055';
UPDATE `#__wpl_location2` SET `abbr`='VA' WHERE `id`='6056';
UPDATE `#__wpl_location2` SET `abbr`='WA' WHERE `id`='6057';
UPDATE `#__wpl_location2` SET `abbr`='WV' WHERE `id`='6058';
UPDATE `#__wpl_location2` SET `abbr`='WI' WHERE `id`='6059';
UPDATE `#__wpl_location2` SET `abbr`='WY' WHERE `id`='6060';

ALTER TABLE `#__wpl_user_group_types` ADD `editable` TINYINT(4) UNSIGNED NOT NULL DEFAULT '1', ADD `deletable` TINYINT(4) UNSIGNED NOT NULL DEFAULT '1', ADD `index` FLOAT(5, 2) NOT NULL DEFAULT '99.00';
ALTER TABLE `#__wpl_user_group_types` ADD `params` TEXT NULL, ADD `enabled` TINYINT(4) NOT NULL DEFAULT '1';

UPDATE `#__wpl_user_group_types` SET `editable`='0', `deletable`='0', `index`='1.00' WHERE `id`='1';
UPDATE `#__wpl_user_group_types` SET `editable`='0', `deletable`='0', `index`='2.00' WHERE `id`='2';

UPDATE `#__wpl_dbst` SET `editable`='1' WHERE `id`='906';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2]' WHERE `id`='6';

UPDATE `#__wpl_dbst` SET `specificable`='1' WHERE `id`='912';
UPDATE `#__wpl_dbst` SET `specificable`='1' WHERE `id`='913';
ALTER TABLE `#__wpl_dbst` ADD `user_specific` VARCHAR(200) NULL AFTER `property_type_specific`;

UPDATE `#__wpl_dbst` SET `category`='10' WHERE `id`='912';
UPDATE `#__wpl_dbst` SET `category`='10' WHERE `id`='911';
UPDATE `#__wpl_dbst` SET `category`='10' WHERE `id`='913';

INSERT INTO `#__wpl_user_group_types` (`id`, `name`, `editable`, `deletable`, `index`, `params`, `enabled`) VALUES (3, 'Guests', 0, 0, 0.50, NULL, 1);
UPDATE `#__wpl_users` SET `membership_type`='3' WHERE `id`='-2';
UPDATE `#__wpl_users` SET `membership_type`='3' WHERE `id`='0';

ALTER TABLE `#__wpl_users` DROP `maccess_rank_start`, DROP `maccess_attach`;
ALTER TABLE `#__wpl_users` DROP `maccess_renewal_period`;

ALTER TABLE `#__wpl_properties` CHANGE `field_312` `field_312` VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
CHANGE `field_313` `field_313` VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

INSERT INTO `#__wpl_dbst_types` (`id`, `kind`, `type`, `enabled`, `index`, `queries_add`, `queries_delete`) VALUES
(19, '[0][1][2]', 'boolean', 1, 19.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` TINYINT( 4 ) NOT NULL DEFAULT ''[DEFAULT_VALUE]''; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\r\nDROP `field_[FIELD_ID]`;');

ALTER TABLE `#__wpl_properties` ADD `show_address` TINYINT(4) NOT NULL DEFAULT '1' AFTER `location7_name`;

UPDATE `#__wpl_settings` SET `title`='Watermark Logo' WHERE `id`='11';
DELETE FROM `#__wpl_activities` WHERE `id`='1';

ALTER TABLE `#__wpl_dbst_types` ADD `options` TEXT NULL;

ALTER TABLE `#__wpl_users` ADD `index` FLOAT(5, 2) NOT NULL DEFAULT '99.00' AFTER `membership_type`;

UPDATE `#__wpl_dbst` SET `editable`='1', `specificable`='0' WHERE `id`='51';
UPDATE `#__wpl_dbst` SET `editable`='1', `specificable`='0' WHERE `id`='52';

ALTER TABLE `#__wpl_users` ADD `access_receive_notifications` TINYINT(4) NOT NULL DEFAULT '1' AFTER `access_change_user`;
ALTER TABLE `#__wpl_items` ADD `item_extra4` TEXT NULL AFTER `item_extra3`, ADD `item_extra5` TEXT NULL AFTER `item_extra4`;
ALTER TABLE `#__wpl_properties` ADD `source` VARCHAR(100) NOT NULL DEFAULT 'wpl' AFTER `alias`, ADD `last_sync_date` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' AFTER `source`;

UPDATE `#__wpl_dbst` SET `enabled`='2' WHERE `id`='313';
UPDATE `#__wpl_dbst` SET `enabled`='2', `deletable`='0' WHERE `id`='312';
UPDATE `#__wpl_dbst` SET `enabled`='2', `deletable`='0' WHERE `id`='308';

UPDATE `#__wpl_settings` SET `index`='3.00' WHERE `id`='50';
INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(90, 'property_alias_pattern', '[property_type][glue][listing_type][glue][location][glue][rooms][glue][bedrooms][glue][bathrooms][glue][price]', 1, 4, 'pattern', 'Property Link Pattern', '{"tooltip":"You can remove the parameters or change the positions. Don''t add new parameters!"}', '', 4.00);

UPDATE `#__wpl_settings` SET `type`='pattern' WHERE `id`='55';
UPDATE `#__wpl_settings` SET `type`='pattern' WHERE `id`='56';

ALTER TABLE `#__wpl_dbst` CHANGE `index` `index` FLOAT(9, 3) NOT NULL DEFAULT '99.00';

ALTER TABLE `#__wpl_property_types` DROP `keyword`;
ALTER TABLE `#__wpl_menus` CHANGE `index` `index` FLOAT(6, 3) NOT NULL DEFAULT '1.00';

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`)
VALUES (110, 'javascript', 'qTips', '0', '', '1', 'qtips', 'js/qtips/jquery.qtip.min.js', '', '', '', '', '0', '110.00', '1');

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`)
VALUES (111, 'javascript', 'ImageLoaded', '0', '', '1', 'imageloaded', 'js/qtips/imagesloaded.pkg.min.js', '', '', '', '', '0', '110.01', '1');

ALTER TABLE `#__wpl_user_group_types` ADD `default_membership_id` INT(10) NOT NULL DEFAULT '-1' AFTER `name`;

UPDATE `#__wpl_user_group_types` SET `editable`='1' WHERE `id`='1';
UPDATE `#__wpl_user_group_types` SET `editable`='1' WHERE `id`='2';
UPDATE `#__wpl_user_group_types` SET `editable`='1' WHERE `id`='3';

ALTER TABLE `#__wpl_user_group_types` ADD `description` TEXT NULL AFTER `default_membership_id`;
ALTER TABLE `#__wpl_users` ADD `maccess_short_description` TEXT NULL AFTER `maccess_upgradable_to`, ADD `maccess_long_description` TEXT NULL AFTER `maccess_short_description`;

ALTER TABLE `#__wpl_properties` ADD `expired` TINYINT(4) NOT NULL DEFAULT '0' AFTER `confirmed`;
ALTER TABLE `#__wpl_users` ADD `expired` TINYINT(4) NOT NULL DEFAULT '0' AFTER `maccess_long_description`, ADD `expiry_date` DATETIME NULL AFTER `expired`;

UPDATE `#__wpl_dbst` SET `specificable`='0' WHERE `id`='310';
UPDATE `#__wpl_dbst` SET `specificable`='0' WHERE `id`='311';

UPDATE `#__wpl_user_group_types` SET `editable`='1' WHERE `id`='1';
UPDATE `#__wpl_user_group_types` SET `editable`='1' WHERE `id`='2';
UPDATE `#__wpl_user_group_types` SET `editable`='1' WHERE `id`='3';

ALTER TABLE `#__wpl_activities` ADD `client` TINYINT(4) NOT NULL DEFAULT '2';

UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NOT NULL DEFAULT ''0''; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NOT NULL DEFAULT ''0''; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='8';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NOT NULL DEFAULT ''0''; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NOT NULL DEFAULT ''0''; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='9';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NOT NULL DEFAULT ''0''; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NOT NULL DEFAULT ''0''; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='10';
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` double NOT NULL DEFAULT ''0''; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_si` double NOT NULL DEFAULT ''0''; ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]_unit` int NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='11';

INSERT INTO `#__wpl_cronjobs` (`id`, `cronjob_name`, `period`, `class_location`, `class_name`, `function_name`, `params`, `enabled`, `latest_run`) VALUES
(5, 'Maintenance', 24, 'global', 'wpl_global', 'execute_maintenance_job', '', 1, '2014-12-31 11:54:17');

UPDATE `#__wpl_extensions` SET `param2`='js/libraries/wpl.modernizr.min.js' WHERE `id`='108';
UPDATE `#__wpl_extensions` SET `param2`='js/libraries/wpl.jquery.qtip.min.js' WHERE `id`='110';
UPDATE `#__wpl_extensions` SET `param2`='js/libraries/wpl.imagesloaded.min.js' WHERE `id`='111';
UPDATE `#__wpl_extensions` SET `param2`='js/libraries/wpl.jquery.chosen.min.js' WHERE `id`='101';
UPDATE `#__wpl_extensions` SET `param2`='js/libraries/wpl.handlebars.min.js' WHERE `id`='109';
UPDATE `#__wpl_extensions` SET `param2`='js/libraries/wpl.jquery.hoverintent.js' WHERE `id`='104';
UPDATE `#__wpl_extensions` SET `param2`='js/libraries/wpl.jquery.mcustomscrollbar.min.js' WHERE `id`='102';
UPDATE `#__wpl_extensions` SET `param2`='js/libraries/wpl.ajaxfileupload.min.js' WHERE `id`='105';
UPDATE `#__wpl_extensions` SET `param2`='js/libraries/wpl.jquery.transit.min.js' WHERE `id`='103';

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
('114', 'javascript', 'Spinner', '0', '', '1', 'spinner', 'js/libraries/wpl.jquery.spin.min.js', '', '', '', '', '0', '100.10', '1');

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
('115', 'javascript', 'Realtyna-Lightbox', '0', '', '1', 'realtyna-lightbox', 'js/libraries/realtyna/realtyna.lightbox.min.js', '', '', '', '', '0', '200.02', '1');

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
('116', 'javascript', 'Realtyna Framework', '0', '', '1', 'realtyna-framework', 'js/libraries/realtyna/realtyna.min.js', '', '', '', '', '0', '200.00', '1');

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
('107', 'js_default_path', 'js/libraries', '0', '1', 'text', 'JS Default Path', '', '', '106.00');

INSERT INTO `#__wpl_dbst` (`id`, `kind`, `mandatory`, `name`, `type`, `options`, `enabled`, `pshow`, `plisting`, `searchmod`, `editable`, `deletable`, `index`, `css`, `style`, `specificable`, `listing_specific`, `property_type_specific`, `user_specific`, `table_name`, `table_column`, `category`, `rankable`, `rank_point`, `comments`, `pwizard`, `text_search`, `params`) VALUES
(20, 0, 0, 'Alias / Permalink', 'text', '', 2, '0', 0, 0, 1, 0, 1.020, '', '', 0, '', '', '', 'wpl_properties', 'alias', 1, 0, 0, '', '0', 0, '');

UPDATE `#__wpl_extensions` SET `param2`='wpl_extensions->wpl_admin_menus' WHERE `id`='1';
ALTER TABLE `#__wpl_users` ADD `maccess_wpl_color` VARCHAR(10) NULL AFTER `maccess_long_description`;

UPDATE `#__wpl_extensions` SET `index`='200.10' WHERE `id`='115';

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(117, 'javascript', 'Realtyna Utility', 0, '', 1, 'realtyna-utility', 'js/libraries/realtyna/realtyna.utility.min.js', '', '', '', '', 0, 200.01, 1);

ALTER TABLE `#__wpl_activities` ENGINE=InnoDB;
ALTER TABLE `#__wpl_addons` ENGINE=InnoDB;
ALTER TABLE `#__wpl_cronjobs` ENGINE=InnoDB;
ALTER TABLE `#__wpl_dbcat` ENGINE=InnoDB;
ALTER TABLE `#__wpl_dbst_types` ENGINE=InnoDB;
ALTER TABLE `#__wpl_events` ENGINE=InnoDB;
ALTER TABLE `#__wpl_extensions` ENGINE=InnoDB;
ALTER TABLE `#__wpl_filters` ENGINE=InnoDB;
ALTER TABLE `#__wpl_item_categories` ENGINE=InnoDB;
ALTER TABLE `#__wpl_kinds` ENGINE=InnoDB;
ALTER TABLE `#__wpl_listing_types` ENGINE=InnoDB;
ALTER TABLE `#__wpl_logs` ENGINE=InnoDB;
ALTER TABLE `#__wpl_menus` ENGINE=InnoDB;
ALTER TABLE `#__wpl_notifications` ENGINE=InnoDB;
ALTER TABLE `#__wpl_property_types` ENGINE=InnoDB;
ALTER TABLE `#__wpl_room_types` ENGINE=InnoDB;
ALTER TABLE `#__wpl_setting_categories` ENGINE=InnoDB;
ALTER TABLE `#__wpl_sort_options` ENGINE=InnoDB;
ALTER TABLE `#__wpl_unit_types` ENGINE=InnoDB;

UPDATE `#__wpl_sort_options` SET `field_name`='p.mls_id' WHERE `id`='1';
UPDATE `#__wpl_settings` SET `setting_value`='p.mls_id' WHERE `id`='23' AND `setting_value`='p.mls_id+0';

INSERT INTO `#__wpl_dbst` (`id`, `kind`, `mandatory`, `name`, `type`, `options`, `enabled`, `pshow`, `plisting`, `searchmod`, `editable`, `deletable`, `index`, `css`, `style`, `specificable`, `listing_specific`, `property_type_specific`, `user_specific`, `table_name`, `table_column`, `category`, `rankable`, `rank_point`, `comments`, `pwizard`, `text_search`, `params`) VALUES
(21, 0, 0, 'Location Text', 'text', '{"if_zero":"1","call_text":"Call"}', 2, '0', 0, 0, 1, 0, 1.021, '', '', 0, '', '', '', 'wpl_properties', 'location_text', 2, 0, 0, '', '0', 0, '');

ALTER TABLE `#__wpl_dbst` ADD `flex` TINYINT(4) NOT NULL DEFAULT '1' AFTER `params`;
UPDATE `#__wpl_dbst_types` SET `queries_add`='ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` varchar(100) NULL; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];' WHERE `id`='14';

UPDATE `#__wpl_dbst` SET `name`='Gender' WHERE `id`='906';

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
('118', 'javascript', 'Realtyna Tagging', '0', '', '1', 'realtyna-tagging', 'js/libraries/realtyna/realtyna.tagging.min.js', '', '', '', '', '0', '202.00', '1');

ALTER TABLE `#__wpl_kinds` ADD `plural` VARCHAR(100) NULL, ADD `dbcat` TINYINT(4) NOT NULL DEFAULT '1', ADD `addon_id` INT(10) NOT NULL DEFAULT '0';
UPDATE `#__wpl_kinds` SET `plural`='Properties' WHERE `id`='0';
UPDATE `#__wpl_kinds` SET `plural`='Users', `dbcat`='0', `addon_id`='9' WHERE `id`='2';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(126, 'google_api_key', null, 1, 1, 'text', 'Google API key', NULL, NULL, 55.00);

ALTER TABLE `#__wpl_users` ADD `about` TEXT NULL AFTER `last_name`;
INSERT INTO `#__wpl_dbst` (`id`, `kind`, `mandatory`, `name`, `type`, `options`, `enabled`, `pshow`, `plisting`, `searchmod`, `editable`, `deletable`, `index`, `css`, `style`, `specificable`, `listing_specific`, `property_type_specific`, `user_specific`, `table_name`, `table_column`, `category`, `rankable`, `rank_point`, `comments`, `pwizard`, `text_search`, `params`, `flex`) VALUES
(915, 2, 0, 'Personal Data', 'separator', 'null', 1, '1', 0, 1, 1, 1, 10.000, NULL, NULL, 1, NULL, NULL, NULL, 'wpl_users', NULL, 10, 1, 0, NULL, '1', 1, NULL, 1),
(916, 2, 0, 'Company Data', 'separator', 'null', 1, '1', 0, 1, 1, 1, 10.060, NULL, NULL, 1, NULL, NULL, NULL, 'wpl_users', NULL, 10, 1, 0, NULL, '1', 1, NULL, 1),
(917, 2, 0, 'Contact information', 'separator', 'null', 1, '1', 0, 1, 1, 1, 10.100, NULL, NULL, 1, NULL, NULL, NULL, 'wpl_users', NULL, 10, 1, 0, NULL, '1', 1, NULL, 1),
(918, 2, 0, 'About', 'textarea', '{"advanced_editor":"0","rows":"7","cols":"41"}', 1, '1', 1, 1, 1, 1, 10.035, NULL, NULL, 1, '', '', '', 'wpl_users', 'about', 10, 1, 0, NULL, '1', 1, NULL, 1);

UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='900';
UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='901';
UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='906';
UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='902';
UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='903';
UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='914';
UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='905';
UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='904';
UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='907';
UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='908';
UPDATE `#__wpl_dbst` SET `searchmod`='1' WHERE `id`='909';

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(26, 'sidebar', 'Profile Listing Top', 0, 'Appears in Profile listing page', 1, 'wpl-profile-listing-top', '', '', '', '', '', 0, 99.99, 2),
(27, 'sidebar', 'WPL Hidden', 0, 'Appears no where! Use it for widget short-codes.', 1, 'wpl-hidden', '', '', '', '', '', 0, 99.99, 2);

ALTER TABLE `#__wpl_kinds` CHANGE `addon_id` `addon_name` VARCHAR(100) NULL;
UPDATE `#__wpl_kinds` SET `addon_name`='' WHERE `id` ='0';
UPDATE `#__wpl_kinds` SET `addon_name`='membership' WHERE `id`='2';

UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='114';
UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='116';
UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='115';
UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='117';
UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='118';

ALTER TABLE `#__wpl_dbst` ADD `accesses` TEXT NULL AFTER `user_specific`;
ALTER TABLE `#__wpl_dbst` ADD `accesses_message` VARCHAR(100) NULL AFTER `accesses`;

ALTER TABLE `#__wpl_dbst_types` CHANGE `kind` `kind` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[0][1]';

UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='1';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='2';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='3';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][4]' WHERE `id`='4';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='5';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='6';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][4]' WHERE `id`='7';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][4]' WHERE `id`='8';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][4]' WHERE `id`='9';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][4]' WHERE `id`='10';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='11';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='12';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='13';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='14';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='19';
UPDATE `#__wpl_dbst_types` SET `kind`='[0][1][2][4]' WHERE `id`='20';

UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='109';

ALTER TABLE `#__wpl_kinds` ADD `index` FLOAT(6, 3) NOT NULL DEFAULT '99.00', ADD `params` TEXT NULL, ADD `enabled` TINYINT(4) NOT NULL DEFAULT '1';
ALTER TABLE `#__wpl_kinds` ADD `map` VARCHAR(10) NULL DEFAULT 'marker' AFTER `addon_name`;

UPDATE `#__wpl_dbst` SET `plisting`='0' WHERE `id`='51';
UPDATE `#__wpl_dbst` SET `plisting`='0' WHERE `id`='52';

INSERT INTO `#__wpl_dbst` (`id`, `kind`, `mandatory`, `name`, `type`, `options`, `enabled`, `pshow`, `plisting`, `searchmod`, `editable`, `deletable`, `index`, `css`, `style`, `specificable`, `listing_specific`, `property_type_specific`, `user_specific`, `accesses`, `accesses_message`, `table_name`, `table_column`, `category`, `rankable`, `rank_point`, `comments`, `pwizard`, `text_search`, `params`, `flex`) VALUES
(910, 2, 0, 'Location Text', 'text', '{"if_zero":"1","call_text":"Call"}', 2, '0', 0, 0, 1, 0, 10.055, '', '', 0, '', '', '', '', '', 'wpl_users', 'location_text', 10, 0, 0, '', '0', 0, '', 1);

UPDATE `#__wpl_dbst` SET `table_column`='', `text_search`='0' WHERE `id`='53';

ALTER TABLE `#__wpl_properties` DROP `description`;
ALTER TABLE `#__wpl_properties` DROP `googlemap_title`;
ALTER TABLE `#__wpl_properties` DROP `property_rank`;

UPDATE `#__wpl_dbst` SET `name`='List Date' WHERE `id`='19';

INSERT INTO `#__wpl_dbst` (`id`, `kind`, `mandatory`, `name`, `type`, `options`, `enabled`, `pshow`, `plisting`, `searchmod`, `editable`, `deletable`, `index`, `css`, `style`, `specificable`, `listing_specific`, `property_type_specific`, `user_specific`, `accesses`, `accesses_message`, `table_name`, `table_column`, `category`, `rankable`, `rank_point`, `comments`, `pwizard`, `text_search`, `params`, `flex`) VALUES
(22, 0, 0, 'Category', 'ptcategory', '', 2, '0', 0, 1, 0, 0, 1.045, '', '', 0, '', '', '', NULL, NULL, NULL, NULL, 1, 0, 0, '', '0', 0, '', 0);

UPDATE `#__wpl_settings` SET `params`='{"html_element_id":"wpl_watermark_uploader","request_str":"admin.php?wpl_format=b:settings:ajax&wpl_function=save_watermark_image"}' WHERE `id`='11';
UPDATE `#__wpl_extensions` SET `param2`='https://maps.google.com/maps/api/js?libraries=places,drawing&sensor=true' WHERE `id`='94';

UPDATE `#__wpl_dbst` SET `type`='text' WHERE `id`='5';

ALTER TABLE `#__wpl_properties` ADD `parent` int(11) unsigned NOT NULL COMMENT 'Parent' AFTER `mls_id`;

ALTER TABLE `#__wpl_activities` AUTO_INCREMENT=1000;

UPDATE `#__wpl_extensions` SET `title`='Helps Service', `description`='For running WPL Helps', `param2`='helps->run' WHERE `id`='36';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(141, 'location_suffix_prefix', 'County, Avenue, Ave, Boulevard, Blvd, Highway, Hwy, Lane, Ln, Square, Sq, Street, St, Road, Rd', 0, 3, 'text', 'Location Suffixes/Prefixes', '{"html_class":"long"}', '', 141.00);

INSERT INTO `#__wpl_events` (`id`, `type`, `trigger`, `class_location`, `class_name`, `function_name`, `params`, `enabled`) VALUES
(39, 'notification', 'user_registered', 'libraries.event_handlers.notifications', 'wpl_events_notifications', 'user_registered', '', 1);

INSERT INTO `#__wpl_notifications` (`id`, `description`, `template`, `subject`, `additional_memberships`, `additional_users`, `additional_emails`, `options`, `params`, `enabled`) VALUES 
(5, 'Sends after registration process.', 'user_registered', 'Your Account has been registered.', '', '', '', NULL, '', '1');

DELETE FROM `#__wpl_extensions` WHERE `id`='32';
DELETE FROM `#__wpl_extensions` WHERE `id`='33';

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(123, 'javascript', 'jQuery Time Picker', 0, '', 1, 'jquery-time-picker', 'js/libraries/wpl.jquery.timepicker.min.js', '', '', '', '', 0, 202.00, 2);

ALTER TABLE `#__wpl_users`
CHANGE `main_email` `main_email` varchar(255) COLLATE 'utf8_general_ci' NULL,
CHANGE `membership_type` `membership_type` varchar(10) COLLATE 'utf8_general_ci' NULL,
CHANGE `maccess_property_types` `maccess_property_types` varchar(255) COLLATE 'utf8_general_ci' NULL,
CHANGE `maccess_upgradable_to` `maccess_upgradable_to` text COLLATE 'utf8_general_ci' NULL,
CHANGE `textsearch` `textsearch` text COLLATE 'utf8_general_ci' NULL,
CHANGE `location_text` `location_text` varchar(255) COLLATE 'utf8_general_ci' NULL,
CHANGE `rendered` `rendered` text COLLATE 'utf8_general_ci' NULL;

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(124, 'action', 'User Login', 0, 'Calls after user login', 1, 'wp_login', 'wpl_users->user_loggedin', '10', '2', '', '', 0, 99.99, 2);

UPDATE `#__wpl_extensions` SET `client`='2' WHERE `id`='110';

ALTER TABLE `#__wpl_users` ENGINE=InnoDB;
ALTER TABLE `#__wpl_units` ENGINE=InnoDB;
ALTER TABLE `#__wpl_settings` ENGINE=InnoDB;
ALTER TABLE `#__wpl_dbst` ENGINE=InnoDB;

DELETE FROM `#__wpl_extensions` WHERE `id`='98';

ALTER TABLE `#__wpl_location1` ENGINE = InnoDB;
ALTER TABLE `#__wpl_location2` ENGINE = InnoDB;
ALTER TABLE `#__wpl_location3` ENGINE = InnoDB;
ALTER TABLE `#__wpl_location4` ENGINE = InnoDB;
ALTER TABLE `#__wpl_location5` ENGINE = InnoDB;
ALTER TABLE `#__wpl_location6` ENGINE = InnoDB;
ALTER TABLE `#__wpl_location7` ENGINE = InnoDB;
ALTER TABLE `#__wpl_locationtextsearch` ENGINE = InnoDB;
ALTER TABLE `#__wpl_locationzips` ENGINE = InnoDB;

INSERT INTO `#__wpl_dbst_types` (`id`, `kind`, `type`, `enabled`, `index`, `queries_add`, `queries_delete`) VALUES
(20, '[0][1][2][4]', 'checkbox', 1, 20.00, 'ALTER TABLE `#__[TABLE_NAME]` ADD `field_[FIELD_ID]` TINYINT( 4 ) NOT NULL DEFAULT ''0''; UPDATE `#__wpl_dbst` SET `table_name`=''[TABLE_NAME]'', `table_column`=''field_[FIELD_ID]'' WHERE id=[FIELD_ID];', 'ALTER TABLE `#__[TABLE_NAME]`\r\nDROP `field_[FIELD_ID]`;');

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(166, 'txtimg_color1', '000000', 0, 1, 'text', 'Text to Image color', NULL, NULL, 166.00);

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(129, 'javascript', 'WPL Common javascript', '0', '', '1', 'wpl_common_javascript', 'js/wpl.commons.min.js', '', '', '', '', '0', '100.11', '2');

INSERT INTO `#__wpl_notifications` (`id`, `description`, `template`, `subject`, `additional_memberships`, `additional_users`, `additional_emails`, `options`, `params`, `enabled`) VALUES
(6, 'Send to friend', 'send_to_friend', 'Send to friend', '', '', '', NULL, '', 1),
(7, 'Request a visit', 'request_a_visit', 'Request a visit', '', '', '', NULL, '', 1);

INSERT INTO `#__wpl_events` (`id`, `type`, `trigger`, `class_location`, `class_name`, `function_name`, `params`, `enabled`) VALUES
(40, 'notification', 'request_a_visit_send', 'libraries.event_handlers.notifications', 'wpl_events_notifications', 'request_a_visit', '', 1),
(41, 'notification', 'send_to_friend', 'libraries.event_handlers.notifications', 'wpl_events_notifications', 'send_to_friend', '', 1);

UPDATE `#__wpl_dbst` SET `type`='tag', `options`='{"ribbon":"1","widget":"1","color":"29a9df","text_color":"ffffff","default_value":"0"}' WHERE `id`='400';
UPDATE `#__wpl_dbst` SET `type`='tag', `options`='{"ribbon":"1","widget":"1","color":"d21a10","text_color":"ffffff","default_value":"0"}' WHERE `id`='401';
UPDATE `#__wpl_dbst` SET `type`='tag', `options`='{"ribbon":"1","widget":"1","color":"3cae2c","text_color":"ffffff","default_value":"0"}' WHERE `id`='402';
UPDATE `#__wpl_dbst` SET `type`='tag', `options`='{"ribbon":"1","widget":"1","color":"666666","text_color":"ffffff","default_value":"0"}' WHERE `id`='403';

UPDATE `#__wpl_dbst` SET `pshow`='0' WHERE `type`='separator';

ALTER TABLE `#__wpl_dbcat` ADD `pdf` TINYINT(4) NOT NULL DEFAULT '0' AFTER `pshow`;
UPDATE `#__wpl_dbcat` SET `pdf`=`pshow`;

ALTER TABLE `#__wpl_dbst` ADD `pdf` TINYINT(4) NOT NULL DEFAULT '0' AFTER `pshow`;
UPDATE `#__wpl_dbst` SET `pdf`=`pshow`;

ALTER TABLE `#__wpl_items` ENGINE = InnoDB;
UPDATE `#__wpl_dbst` SET `plisting`='1' WHERE `id`='136';

ALTER TABLE `#__wpl_dbcat` CHANGE `id` `id` INT(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `#__wpl_units` CHANGE `id` `id` INT(11) NOT NULL AUTO_INCREMENT;

UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='567';
UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='300';
UPDATE `#__wpl_dbst` SET `deletable`='0' WHERE `id`='301';

UPDATE `#__wpl_settings` SET `options`='{"show_empty":"1"}' WHERE `id`='25';
UPDATE `#__wpl_dbst` SET `plisting`='1' WHERE `id`='150';

UPDATE `#__wpl_settings` SET `setting_name`='io_public_key', `params`='{"readonly":"readonly"}' WHERE `id`='34';
UPDATE `#__wpl_settings` SET `setting_name`='io_private_key', `params`='{"readonly":"readonly"}' WHERE `id`='35';

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(131, 'service', 'WPL Service', 0, 'For running WPL service', 1, 'init', 'wpl->run', '9999', '', '', '', 0, 99.99, 2);

DELETE FROM `#__wpl_extensions` WHERE `id`='94';

ALTER TABLE `#__wpl_dbst` CHANGE `index` `index` FLOAT(9,4) NOT NULL DEFAULT '99.0000';

UPDATE `#__wpl_dbst` SET `mandatory`='2' WHERE `id`='41';
UPDATE `#__wpl_settings` SET `title`='Locations' WHERE `id`='65';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(188, 'wizard_map_zoomlevel', '11', 1, 3, 'text', 'Wizard Map Zoom-level', '', '', 7.00);

INSERT INTO `#__wpl_units` (`id`, `name`, `type`, `enabled`, `tosi`, `index`, `extra`, `extra2`, `extra3`, `extra4`, `seperator`, `d_seperator`, `after_before`) VALUES
(270, '¥', 4, 0, 0.16, 999, 'CNY', 'Chinese Yuan Renminbi', 'china', 'Fen', NULL, NULL, 0);

UPDATE `#__wpl_extensions` SET `param2`='//fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic|Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700|Scada:400italic,700italic,400,700|Archivo+Narrow:400,40|Lato:400,700,900,400italic|BenchNine|Roboto:400,700' WHERE `id`='99';

ALTER TABLE `#__wpl_dbst` ADD `sortable` TINYINT NOT NULL DEFAULT '1' COMMENT '0=not sortable,1=sortable,2=always';
UPDATE `#__wpl_dbst` SET `sortable`='2' WHERE `id` IN (5,911,1105);
UPDATE `#__wpl_dbst` SET `sortable`='0' WHERE `table_column`='' OR `table_column` IS NULL;

UPDATE `#__wpl_extensions` SET `param1`='wp' WHERE `id`='18';

UPDATE `#__wpl_units` SET `extra`='GBP' WHERE `id`='103';
UPDATE `#__wpl_units` SET `extra`='NZD' WHERE `id`='135';
UPDATE `#__wpl_units` SET `extra`='CUC' WHERE `id`='138';
UPDATE `#__wpl_units` SET `extra`='GBP' WHERE `id`='159';
UPDATE `#__wpl_units` SET `extra`='GBP' WHERE `id`='174';
UPDATE `#__wpl_units` SET `extra`='AUD' WHERE `id`='178';
UPDATE `#__wpl_units` SET `extra`='GBP' WHERE `id`='194';
UPDATE `#__wpl_units` SET `extra`='PRB' WHERE `id`='251';

INSERT INTO `#__wpl_notifications` (`id`, `description`, `template`, `subject`, `additional_memberships`, `additional_users`, `additional_emails`, `options`, `params`, `enabled`) VALUES (8, 'When a listing creates', 'listing_create', 'New listing', '', '', '', NULL, '', 0);
INSERT INTO `#__wpl_events` (`id`, `type`, `trigger`, `class_location`, `class_name`, `function_name`, `params`, `enabled`) VALUES (42, 'notification', 'add_property', 'libraries.event_handlers.notifications', 'wpl_events_notifications', 'listing_create', '', 1);

ALTER TABLE `#__wpl_cronjobs` CHANGE `period` `period` FLOAT(6,2) NOT NULL;

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES ('200', 'autoupdate_exchange_rates', '0', '1', '1', 'select', 'Auto-update exchange rates', '', '{"values":[{"key":0,"value":"Disabled"},{"key":1,"value":"Enabled"}]}', '97.00');
INSERT INTO `#__wpl_cronjobs` (`id`, `cronjob_name`, `period`, `class_location`, `class_name`, `function_name`, `params`, `enabled`, `latest_run`) VALUES (9, 'Auto-Update Exchange Rates', 24, 'libraries.units', 'wpl_units', 'auto_update_rates', '', 1, '2016-03-01 00:00:00');

UPDATE `#__wpl_settings` SET `setting_value`='County, Avenue, Ave, Boulevard, Blvd, Highway, Hwy, Lane, Ln, Square, Sq, Street, St, Road, Rd, Drive, Dr' WHERE `id`='141';
UPDATE `#__wpl_settings` SET `options` = '{"values":[{"key":"Y-m-d:yy-mm-dd","value":"2013-10-19"},{"key":"Y/m/d:yy/mm/dd","value":"2013/10/19"},{"key":"Y.m.d:yy.mm.dd","value":"2013.10.19"},{"key":"m-d-Y:mm-dd-yy","value":"10-19-2013"},{"key":"m/d/Y:mm/dd/yy","value":"10/19/2013"},{"key":"m.d.Y:mm.dd.yy","value":"10.19.2013"},{"key":"d-m-Y:dd-mm-yy","value":"19-10-2013"},{"key":"d/m/Y:dd/mm/yy","value":"19/10/2013"},{"key":"d.m.Y:dd.mm.yy","value":"19.10.2013"}]}' WHERE `id`='27';

UPDATE `#__wpl_settings` SET `params`='' WHERE `id`='90';
INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(204, 'property_page_title_pattern', '[property_type] [listing] [glue] [rooms] [glue] [bedrooms] [glue] [bathrooms] [glue] [price] [glue] [id] [glue]', 1, 4, 'pattern', 'Property Page Title', NULL, NULL, 5.00);

UPDATE `#__wpl_settings` SET `title`='Listing Link Pattern' WHERE `id`='90';
UPDATE `#__wpl_settings` SET `title`='Listing Page Title' WHERE `id`='204';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(218, 'seo_patterns_separator', '', 1, 4, 'separator', 'SEO Patterns', '', '', 3.50),
(219, 'property_title_pattern', '[property_type] [listing]', 1, 4, 'pattern', 'Listing Title', NULL, NULL, 4.50),
(220, 'meta_description_pattern', '[bedrooms] [str:Bedrooms:bedrooms] [rooms] [str:Rooms:rooms] [str:With:bathrooms] [bathrooms] [str:Bathrooms:bathrooms] [property_type] [listing_type] [field_54] [field_42] [str:On the:field_55] [field_55] [str:Floor:field_55] [str:In] [location]', 1, 4, 'pattern', 'Meta Description', NULL, NULL, 6.00),
(221, 'meta_keywords_pattern', '[location][glue] [bedrooms] [str:Bedrooms:bedrooms][glue] [rooms] [str:Rooms:rooms][glue][bathrooms][str:Bathrooms:bathrooms][glue][property_type][glue][listing_type][glue][field_54][glue][field_42][glue][field_55][glue][listing_id]', 1, 4, 'pattern', 'Meta Keywords', NULL, NULL, 7.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(222, 'seo_adv_patterns_separator', '', 1, 4, 'separator', 'Advanced Patterns', '', '', 22.20),
(223, 'seo_patterns', '', 1, 4, 'seo_patterns', 'Advanced Patterns', '', '', 22.30);

INSERT INTO `#__wpl_addons` (`id`, `name`, `version`, `addon_name`, `params`, `update`, `update_key`, `support_key`, `updatable`, `message`) VALUES
(3, 'PRO Addon', '3.2.0', 'pro', '', '', '', '', 1, '');

INSERT INTO `#__wpl_menus` (`id`, `client`, `type`, `parent`, `page_title`, `menu_title`, `capability`, `menu_slug`, `function`, `separator`, `enabled`, `index`, `position`) VALUES
(9, 'backend', 'submenu', 'WPL_main_menu', 'Memberships', 'Memberships', 'admin', 'wpl_admin_membership_manager', 'b:membership:home', 1, 1, 2.10, 0);

UPDATE `#__wpl_menus` SET `separator`='0' WHERE `id`='4';
INSERT INTO `#__wpl_item_categories` (`id`, `item_type`, `category_name`, `index`) VALUES (5, 'gallery', 'external', 99.02);

INSERT INTO `#__wpl_activities` (`id`, `activity`, `position`, `enabled`, `index`, `params`, `show_title`, `title`, `association_type`, `associations`) VALUES
(16, 'listing_gallery:pdf', 'pshow_gallery_pdf', 1, 99.00, '{"image_width":"230","image_height":"230","image_class":"","rewrite":"0","watermark":"0"}', 1, '', 1, ''),
(17, 'agent_info:pdf', 'pdf_position1', 1, 99.00, '{"picture_width":"230","picture_height":"230"}', 1, 'Agent Info', 1, ''),
(18, 'listing_rooms:pdf', 'pdf_position1', 0, 99.00, '', 1, 'Property Rooms', 1, ''),
(19, 'qrcode', 'pdf_position1', 1, 99.00, '{"picture_width":"90","picture_height":"90","outer_margin":"2","size":"4"}', 1, 'QR Code', 1, '');

INSERT INTO `#__wpl_dbst` (`id`, `kind`, `mandatory`, `name`, `type`, `options`, `enabled`, `pshow`, `plisting`, `searchmod`, `editable`, `deletable`, `index`, `css`, `style`, `specificable`, `listing_specific`, `property_type_specific`, `table_name`, `table_column`, `category`, `rankable`, `rank_point`, `comments`, `pwizard`, `text_search`, `params`) VALUES
(404, 0, 0, 'Open House Dates', 'openhouse_dates', NULL, 1, '0', 0, 0, 0, 0, 99.00, NULL, NULL, 1, NULL, NULL, 'wpl_properties', NULL, 11, 0, 0, NULL, '1', 0, NULL);

INSERT INTO `#__wpl_activities` (`id`, `activity`, `position`, `enabled`, `index`, `params`, `show_title`, `title`, `association_type`, `associations`) VALUES
(20, 'listing_opendates', 'pshow_position2', 1, 99.00, '', 1, 'Open Dates', 1, '');

INSERT INTO `#__wpl_extensions` (`id`,`type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(106, 'javascript', 'Googleplace', 0, 'This extension load google places library from google api libraries', 1, 'google-places', 'http://maps.googleapis.com/maps/api/js?libraries=places&sensor=true', '', '', '1', '', 0, 99.99, 0);

INSERT INTO `#__wpl_activities` (`id`, `activity`, `position`, `enabled`, `index`, `params`, `show_title`, `title`, `association_type`, `associations`) VALUES
(21, 'walkscore:default', 'pshow_walkscore', 0, 99.00, '{"walkscore_license_key":"","walkscore_width":"970","walkscore_height":"300","walkscore_layout":"horizontal"}', 1, 'Walkscore', 1, '');

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(35, 'service', 'PRO service', 0, 'For running PRO addon service', 1, 'init', 'addon_pro->run', '9999', '', '', '', 0, 99.99, 2);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(39, 'autoadd_users', '0', 1, 1, 'select', 'User auto add', '', '{"values":[{"key":0,"value":"Disabled"},{"key":1,"value":"Enabled"}]}', 0.39);

INSERT INTO `#__wpl_dbst` (`id`, `kind`, `mandatory`, `name`, `type`, `options`, `enabled`, `pshow`, `plisting`, `searchmod`, `editable`, `deletable`, `index`, `css`, `style`, `specificable`, `listing_specific`, `property_type_specific`, `table_name`, `table_column`, `category`, `rankable`, `rank_point`, `comments`, `pwizard`, `text_search`, `params`) VALUES
(405, 0, 0, 'Energy Tag Value', 'number', 'null', 1, '0', 0, 0, 1, 0, 3.60, '', '', 1, '', '', 'wpl_properties', 'energy_tag', 4, 0, 0, NULL, '1', 0, NULL);

ALTER TABLE `#__wpl_properties` ADD `energy_tag` INT(11);

INSERT INTO `#__wpl_activities` (`id`, `activity`, `position`, `enabled`, `index`, `params`, `show_title`, `title`) VALUES
(22, 'energy_tag:default', 'pshow_position2', 0, 99.00, '{"image_width":"210","image_height":"240","bar_width":"20","first_bar_length":"70","length_increment":"10","vertical_distance":"3","peak":"10","energy_font_size":"10","font_size":"10"}', 1, 'Energy Tag');

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(107, 'shortcode', 'Widget shortcode', 0, 'For showing Widgets instance', 1, 'wpl_widget_instance', 'wpl_widget->load_widget_instance', '', '', '', '', 0, 99.99, 2);

INSERT INTO `#__wpl_extensions` (`id` ,`type` ,`title` ,`parent` ,`description` ,`enabled` ,`param1` ,`param2` ,`param3` ,`param4` ,`param5` ,`params` ,`editable` ,`index` ,`client`)
VALUES (97 ,  'widget',  'WPL Favorites Widget',  '0',  '',  '1',  'widgets.favorites.main',  'widgets_init',  'WPL_favorites_widget',  '',  '',  '',  '0',  '100.00',  '2');

INSERT INTO `#__wpl_events` (`id`, `type`, `trigger`, `class_location`, `class_name`, `function_name`, `params`, `enabled`) VALUES
(3, 'notification', 'favorites_send', 'libraries.event_handlers.addon_pro', 'wpl_events_pro', 'send_favorite_contact_form', '', 1);

INSERT INTO `#__wpl_notifications` (`id`, `description`, `template`, `subject`, `additional_memberships`, `additional_users`, `additional_emails`, `options`, `params`, `enabled`) VALUES
(1, 'Sending users favorite list to agents email', 'favorite_email', 'Request more details', '', '', '', NULL, '', 1);

DELETE FROM `#__wpl_extensions` WHERE `id`='106';

ALTER TABLE `#__wpl_properties` ADD `meta_description_manual` TINYINT( 4 ) UNSIGNED NOT NULL DEFAULT '0' AFTER `meta_description`;
ALTER TABLE `#__wpl_properties` ADD `meta_keywords_manual` TINYINT( 4 ) UNSIGNED NOT NULL DEFAULT '0' AFTER `meta_keywords`;

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(57, 'geotag_status', '0', 1, 4, 'select', 'Geo Tag', '', '{"values":[{"key":0,"value":"Disabled"},{"key":1,"value":"Enabled"}]}', 57.00),
(58, 'geotag_latitude', '', 1, 4, 'text', 'Geo Tag Latitude', '', '', 58.00),
(59, 'geotag_longitude', '', 1, 4, 'text', 'Geo Tag Longitude', '', '', 59.00),
(60, 'geotag_region', '', 1, 4, 'text', 'Geo Tag Region', '', '', 60.00),
(61, 'geotag_placename', '', 1, 4, 'text', 'Geo Tag Place Name', '', '', 61.00),
(62, 'geotag_separator', '', 1, 4, 'separator', 'Geo Tag', '', '', 56.50);

UPDATE `#__wpl_settings` SET `index`='108.00' WHERE `id`='39';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(74, 'dc_separator', '', 1, 4, 'separator', 'Dublin Core', '', '', 74.00),
(75, 'dc_status', '0', 1, 4, 'select', 'Dublin Core', '', '{"values":[{"key":0,"value":"Disabled"},{"key":1,"value":"Enabled"},{"key":2,"value":"Enabled only on WPL views"}]}', 75.00),
(76, 'dc_contributor', '', 1, 4, 'text', 'Contributor', '{"placeholder":"Person or Organization name"}', '', 76.00),
(77, 'dc_publisher', '', 1, 4, 'text', 'Publisher', '{"placeholder":"Person or Organization name"}', '', 77.00),
(78, 'dc_copyright', '', 1, 4, 'text', 'Copyright URL', '{"placeholder":"Copyright/Terms of Use URL"}', '', 78.00),
(79, 'dc_source', '', 1, 4, 'text', 'Source URL', '{"placeholder":"URL of source website"}', '', 79.00),
(80, 'dc_relation', '', 1, 4, 'text', 'Relation URL', '{"placeholder":"URL of related website"}', '', 80.00),
(81, 'dc_coverage', 'World', 1, 4, 'text', 'Coverage', '{"placeholder":"Your website coverage"}', '', 81.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(82, 'sitemap_separator', '', 1, 4, 'separator', 'Sitemap', '', '', 82.00),
(83, 'wpl_sitemap', '0', 1, 4, 'sitemap', 'Sitemap', '', '', 83.00);

INSERT INTO `#__wpl_dbst` (`id`, `kind`, `mandatory`, `name`, `type`, `options`, `enabled`, `pshow`, `plisting`, `searchmod`, `editable`, `deletable`, `index`, `css`, `style`, `specificable`, `listing_specific`, `property_type_specific`, `user_specific`, `table_name`, `table_column`, `category`, `rankable`, `rank_point`, `comments`, `pwizard`, `text_search`, `params`) VALUES
(56, 0, 0, 'Show Address?', 'boolean', '{"true_label":"Yes","false_label":"No","default_value":"1"}', 2, '0', 0, 0, 1, 0, 2.07, NULL, NULL, 0, '', '', '', 'wpl_properties', 'show_address', 2, 1, 0, NULL, '1', 0, NULL);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(85, 'location_hidden_keyword', 'Address not available!', 1, 3, 'text', 'Hidden Keyword', '', '', 100.00);

ALTER TABLE `#__wpl_dbst` ADD `multilingual` TINYINT(4) NOT NULL DEFAULT '0' AFTER `text_search`;

INSERT INTO `#__wpl_setting_categories` (`id`, `name`, `showable`, `index`) VALUES (7, 'Languages', 1, 107.00);
INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(87, 'languages', '', 1, 7, 'languages', 'WPL Languages', '', '', 87.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(88, 'lang_options', '', 0, 7, 'json', 'Language Options', '', '', 88.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(89, 'max_wpllangs', '6', 1, 7, 'text', 'Max languages', '', '', 86.50);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(91, 'multilingual_status', '0', 1, 7, 'select', 'Multilingual Status', '', '{"values":[{"key":0,"value":"Disabled"},{"key":1,"value":"Enabled"}]} ', 86.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(92, 'multilingual_header', NULL, '1', '7', 'separator', 'Multilingual', NULL, NULL, 85.99);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(93, 'multilingual_lang_header', NULL, '1', '7', 'separator', 'Languages', NULL, NULL, 86.99);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(94, 'wpl_sitemap_ex_listings', '', 1, 4, 'text', 'Exclude Listings', '', '', 94.00),
(95, 'wpl_sitemap_ex_users', '', 1, 4, 'text', 'Exclude Users', '', '', 95.00);

INSERT INTO `#__wpl_menus` (`id`, `client`, `type`, `parent`, `page_title`, `menu_title`, `capability`, `menu_slug`, `function`, `separator`, `enabled`, `index`, `position`, `dashboard`) VALUES
(121, 'backend', 'submenu', 'WPL_main_menu', 'Payments', 'Payments', 'admin', 'wpl_admin_payments', 'b:payments:home', 0, 1, 2.06, 0, 1);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(86, 'wpl_payments', '{"bank":{"status":"1","auto_confirm":"0","index":"3","comment":""},"ewallet":{"status":"1","min_balance":"0","index":"1","comment":""},"paypal":{"status":"1","index":"2","mode":"0","method":"3","username":"howard_api1.realtyna.com","password":"NYMVQN3DQFJEPRQP","signature":"AFcWxV21C7fd0v3bYYYRCpSSRl31Axg4CgemrMokNJPK9UbKH63pueC-","account":"howard@realtyna.com"}}', 0, 1, 'payments', 'Payment Settings', '', '', 86.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(97, 'payments_separator', '', 0, 1, 'separator', 'Payments', '', '', 115.00),
(98, 'payments_main_page', '', 0, 1, 'wppages', 'Payment Page', '', '{"show_empty":1}', 115.10);

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(113, 'shortcode', 'Payments', 0, 'For showing Payment views', 1, 'wpl_payments', 'wpl_controller->f:payments:display', '', '', '', '', 0, 113.00, 2);

CREATE TABLE IF NOT EXISTS `#__wpl_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `mode` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=plus, 2=minus',
  `type` varchar(100) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `amount_si` double NOT NULL DEFAULT '0',
  `unit_id` int(10) NOT NULL DEFAULT '260',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '0=failed, 1=success, 2=waiting',
  `creation_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paid_date` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `params` text,
  `system` text,
  `response` text,
  `logs` text,
  `gateway` varchar(100) DEFAULT NULL,
  `gtid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`mode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

INSERT INTO `#__wpl_activities` (`id`, `activity`, `position`, `enabled`, `index`, `params`, `show_title`, `title`, `association_type`, `associations`) VALUES
(27, 'ewallet', 'my_profile_top', 0, 0.23, '{"minimum_charge":"5","default_amount":"10","unit_id":"260","show_charge_form":"1"}', 1, 'e-Wallet', 1, '');

UPDATE `#__wpl_activities` SET `client`='1' WHERE `id`='27';

DELETE FROM `#__wpl_menus` WHERE `id`='9';
UPDATE `#__wpl_menus` SET `separator`='1' WHERE `id`='4';
DELETE FROM `#__wpl_settings` WHERE `id`='39';

INSERT INTO `#__wpl_notifications` (`id`, `description`, `template`, `subject`, `additional_memberships`, `additional_users`, `additional_emails`, `options`, `params`, `enabled`) VALUES
(4, 'Abuse Report', 'report_abuse', 'Abuse Report', '', '', '', NULL, '', 1);

INSERT INTO `#__wpl_events` (`id`, `type`, `trigger`, `class_location`, `class_name`, `function_name`, `params`, `enabled`) VALUES
(6, 'notification', 'report_abuse_send', 'libraries.event_handlers.addon_pro', 'wpl_events_pro', 'send_abuse_report', '', 1);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(131, 'listings_rss_title', 'Listings feed', 1,  1,  'text', 'RSS Feed Title', NULL, NULL, 100.01),
(132, 'listings_rss_description', 'This is the RSS feed of listings',  1,  1,  'text', 'RSS Feed Description', NULL, NULL, 100.02);

INSERT INTO `#__wpl_activities` (`id`, `activity`, `position`, `enabled`, `index`, `params`, `show_title`, `title`, `association_type`, `associations`, `client`) VALUES
(32,  'listing_gallery:rss',  'pshow_gallery_rss',  1,  99.00,  '{\"image_width\":\"240\",\"image_height\":\"160\",\"image_class\":\"\",\"autoplay\":\"0\",\"resize\":\"1\",\"rewrite\":\"0\",\"watermark\":\"0\"}',  0,  'RSS Gallery',  1,  '', 2);

INSERT INTO `#__wpl_setting_categories` (`id`, `name`, `showable`, `index`) VALUES (9, 'PDF Flyer', 1, 109.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(139, 'pdf_separator', '', 1, 9, 'separator', 'PDF Options', '', '', 130.00),
(138, 'pdf_copyright_position', 'bottom_right', 1, 9, 'select', 'Copyright Position', '', '{"values":[{"key":"bottom_right","value":"Bottom Right"},{"key":"bottom_left","value":"Bottom Left"}]}', 138.00),
(137, 'pdf_copyright', '', 1, 9, 'text', 'Copyright', NULL, NULL, 137.00),
(136, 'pdf_tel', '', 1, 9, 'text', 'Tel', NULL, NULL, 136.00),
(135, 'pdf_address', '', 1, 9, 'text', 'Address', NULL, NULL, 135.00),
(134, 'pdf_logo_position', 'top', 1, 9, 'select', 'Logo Position', '', '{"values":[{"key":"top","value":"Top"},{"key":"bottom","value":"Bottom"}]}', 134.00),
(133, 'pdf_logo', '', 1, 9, 'upload', 'Logo', '{"html_element_id":"pdf_logo","request_str":"admin.php?wpl_format=b:settings:ajax&wpl_function=uploader&settings_key=pdf_logo"}', '', 133.00);

UPDATE `#__wpl_activities` SET `position`='pdf_position_header_right' WHERE `id`='19';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(140, 'listings_rss_enabled', '0',  1,  1,  'checkbox', 'Enable RSS Feed',  '{\"tooltip\":\"If enabled, a RSS feed icon will be displayed in Property Listing page.\"}',  NULL, 100.00);

INSERT INTO `#__wpl_menus` (`id`, `client`, `type`, `parent`, `page_title`, `menu_title`, `capability`, `menu_slug`, `function`, `separator`, `enabled`, `index`, `position`, `dashboard`) VALUES
(14, 'backend', 'submenu', 'WPL_main_menu', 'Log Manager', 'Log Manager', 'current', 'wpl_admin_log_manager', 'b:log_manager:home', 0, 1, 2.051, 0, 0);

INSERT INTO `#__wpl_events` (`id`, `type`, `trigger`, `class_location`, `class_name`, `function_name`, `params`, `enabled`) VALUES
(1, 'log', 'add_property', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `mls_id` FROM `#__wpl_properties` WHERE `id`=''[id]''","section":"Property","message":"A new listing #[mls_id] added."}', 1),
(2, 'log', 'edit_property', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `mls_id` FROM `#__wpl_properties` WHERE `id`=''[id]''","section":"Property","message":"Listing #[mls_id] updated."}', 1),
(7, 'log', 'cache_cleared', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":1,"pattern":"","section":"Cache","message":"Cache #[cache_type] cleared."}', 1),
(8, 'log', 'settings_updated', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `setting_name`,`setting_value` FROM `#__wpl_settings` WHERE `setting_name`=''[setting_name]''","section":"Settings","message":"#[setting_name] setting value updated to #[setting_value]."}', 1),
(9, 'log', 'location_modified', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":1,"pattern":"","section":"Locations","message":"Location #[name] with level #[level] updated."}', 1),
(10, 'log', 'location_deleted', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `name` FROM `#__wpl_location[level]` WHERE `id`=''[location_id]''","section":"Locations","message":"Location #[name] deleted."}', 1),
(11, 'log', 'params_saved', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":1,"pattern":"","section":"Params","message":"Param id #[id] in table #[table] with params #[params] saved."}', 1),
(12, 'log', 'profile_show', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `first_name` FROM `#__wpl_users` WHERE `id`=''[id]''","section":"Profile Show","message":"Profile of #[first_name] viewed."}', 1),
(13, 'log', 'listing_type_removed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `name` FROM `#__wpl_listing_types` WHERE `id`=''[id]''","section":"Listing type","message":"Listing Type #[name] removed."}', 1),
(14, 'log', 'property_deleted', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `mls_id` FROM `#__wpl_properties` WHERE `id`=''[property_id]''","section":"Property","message":"Listing #[mls_id] deleted temporary."}', 1),
(15, 'log', 'property_restored', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `mls_id` FROM `#__wpl_properties` WHERE `id`=''[property_id]''","section":"Property","message":"Listing #[mls_id] restored."}', 1),
(16, 'log', 'property_confirmed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `mls_id` FROM `#__wpl_properties` WHERE `id`=''[property_id]''","section":"Property","message":"Listing #[mls_id] confirmed."}', 1),
(17, 'log', 'property_unconfirmed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `mls_id` FROM `#__wpl_properties` WHERE `id`=''[property_id]''","section":"Property","message":"Listing #[mls_id] unconfirmed."}', 1),
(18, 'log', 'property_before_purge', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `mls_id` FROM `#__wpl_properties` WHERE `id`=''[property_id]''","section":"Property","message":"Listing #[mls_id] is going to purge."}', 1),
(19, 'log', 'property_purged', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `mls_id` FROM `#__wpl_properties` WHERE `id`=''[property_id]''","section":"Property","message":"Listing #[mls_id] purged."}', 1),
(20, 'log', 'property_type_removed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `name` FROM `#__wpl_property_types` WHERE `id`=''[id]''","section":"Property type","message":"Property Type #[name] removed."}', 1),
(21, 'log', 'room_type_added', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `name` FROM `#__wpl_room_types` WHERE `id`=''[id]''","section":"Room types","message":"Room Type #[name] added."}', 1),
(22, 'log', 'exchange_rate_updated', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `name`,`id` FROM `#__wpl_units` WHERE `id`=''[unit_id]''","section":"Units","message":"Unit #[name] with id #[id] updated."}', 1),
(23, 'log', 'listing_type_added', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":1,"pattern":"","section":"Listing type","message":"Listing Type #[name] added."}', 1),
(24, 'log', 'sort_options_updated', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":1,"pattern":"","section":"Sort options","message":"Sort id #[id] with name #[key] updated."}', 1),
(25, 'log', 'dbst_removed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `name` FROM `#__wpl_dbst` WHERE `id`=''[id]''","section":"Flex","message":"Field #[name] removed."}', 1),
(26, 'log', 'dbst_modified', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `name` FROM `#__wpl_dbst` WHERE `id`=[id]","section":"Flex","message":"Field #[name] updated."}', 1),
(27, 'log', 'activity_added', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `position`,`title` FROM `#__wpl_activities` WHERE `id`=[id]","section":"Activity","message":"Activity #[title] added in the position #[position]."}', 1),
(28, 'log', 'activity_updated', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `position`,`title` FROM `#__wpl_activities` WHERE `id`=[id]","section":"Activity","message":"Activity #[title] with #[position] position updated."}', 1),
(29, 'log', 'activity_removed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `position`,`title` FROM `#__wpl_activities` WHERE `id`=[id]","section":"Activity","message":"Activity #[title] with #[position] position removed."}', 1),
(30, 'log', 'transaction_done', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `id`,`gateway`,`gtid` FROM `#__wpl_transactions` WHERE `id`=[id]","section":"Transaction","message":"Transaction ID #[id] - gateway #[gateway] and gateway ID #[gtid] is done."}', 1),
(31, 'log', 'transaction_failed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `id`,`gateway`,`gtid` FROM `#__wpl_transactions` WHERE `id`=[id]","section":"Transaction","message":"Transaction ID #[id] - gateway #[gateway] and gateway ID #[gtid] is failed."}', 1),
(32, 'log', 'transaction_succeed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `id`,`gateway`,`gtid` FROM `#__wpl_transactions` WHERE `id`=[id]","section":"Transaction","message":"Transaction ID #[id] - gateway #[gateway] and gateway ID #[gtid] is succeed."}', 1),
(33, 'log', 'user_deleted_from_wpl', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `first_name`,`last_name` FROM `#__wpl_users` WHERE `id`=''[id]''","section":"Users","message":"User #[first_name] #[last_name] deleted."}', 1),
(34, 'log', 'user_added_to_wpl', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `first_name`,`last_name` FROM `#__wpl_users` WHERE `id`=''[id]''","section":"Users","message":"User #[first_name] #[last_name] added."}', 1),
(35, 'log', 'user_type_removed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `name` FROM `#__wpl_user_group_types` WHERE `id`=''[id]''","section":"Users type","message":"User Type #[name] removed."}', 1),
(36, 'log', 'membership_removed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `membership_name` FROM `#__wpl_users` WHERE `id`=''[id]''","section":"Users membership","message":"Membership #[membership_name] removed."}', 1),
(37, 'log', 'user_access_updated', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `first_name`,`last_name` FROM `#__wpl_users` WHERE `id`=''[user_id]''","section":"Users","message":"The access of #[first_name] #[last_name] updated."}', 1),
(38, 'log', 'user_membership_changed', 'libraries.logs', 'wpl_logs', 'autolog', '{"type":2,"pattern":"SELECT `first_name`,`last_name` FROM `#__wpl_users` WHERE `id`=''[user_id]''","section":"Users","message":"The membership of #[first_name] #[last_name] changed."}', 1);

UPDATE `#__wpl_menus` SET `dashboard`='0' WHERE `id`='14';

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(39, 'shortcode', 'Listing Manager Shortcode', 0, 'it used for Listing Manager', 1, 'wpl_listing_manager', 'wpl_controller->f:property_manager:display', '', '', '', '', 0, 99.99, 2);

DELETE FROM `#__wpl_extensions` WHERE `id`='39';

INSERT INTO `#__wpl_setting_categories` (`id`, `name`, `showable`, `index`) VALUES (11, 'UI Customizer', 1, 111.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(154, 'wpl_ui_customizer_separator', '', 1, 11, 'separator', 'WPL UI Customizer', '', '', 154.00),
(155, 'wpl_ui_customizer', '', 1, 11, 'wpl_ui_customizer', 'WPL UI Customizer', '', '', 155.00);

INSERT INTO `#__wpl_extensions` (`id`, `type`, `title`, `parent`, `description`, `enabled`, `param1`, `param2`, `param3`, `param4`, `param5`, `params`, `editable`, `index`, `client`) VALUES
(125, 'style', 'WPL UI Customizer stylesheet', 0, '', 1, 'wpl_ui_customizer_style', 'css/ui_customizer/wpl.css', '', '', '', '', 0, 999.99, 0);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(161, 'wpl_ui_customizer_status', '0', 1, 11, 'select', 'Customizer Status', '{"tooltip":"Disable this if you like to disable customizer effect on frontend."}', '{"values":[{"key":1,"value":"Enabled"},{"key":0,"value":"Disabled"}]}', 154.50);

DELETE FROM `#__wpl_extensions` WHERE `id`='125';

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(162, 'wpl_ui_customizer_styles_separator', '', 1, 11, 'separator', 'Custom Styles', '', '', 162.00),
(163, 'wpl_ui_customizer_styles', '', 1, 11, 'textarea', 'Custom Styles', '', '', 163.00);

INSERT INTO `#__wpl_dbst_types` (`id`, `kind`, `type`, `enabled`, `index`, `queries_add`, `queries_delete`, `options`) VALUES
(22, '[0][1][2][4]', 'more_details', 1, 22.00, '', '', NULL);

UPDATE `#__wpl_menus` SET `capability`='admin' WHERE `id`='14';

CREATE TABLE IF NOT EXISTS `#__wpl_addon_pro_favorites` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `property_id` int(10) NOT NULL DEFAULT '0',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

ALTER TABLE `#__wpl_addon_pro_favorites` ADD UNIQUE(`user_id`, `property_id`);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(193, 'pdf_results_page_separator', '', 1, 9, 'separator', 'Print Results Page', '', '', 193.00),
(194, 'pdf_results_page_status', '0', 1, 9, 'select', 'Status', '', '{"values":[{"key":"0","value":"Disabled"},{"key":"1","value":"Enabled"}]}', 194.00),
(195, 'pdf_results_page_method', 'pdf', 1, 9, 'select', 'Method', '', '{"values":[{"key":"pdf","value":"PDF"},{"key":"html","value":"HTML"}]}', 195.00);

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(196, 'location_auto_suggest', '0', 1, 3, 'select', 'Auto suggestion', '{"tooltip":"Auto suggestion for location text fields in listing wizard menu."}', '{"values":[{"key":0,"value":"Disabled"},{"key":1,"value":"Enabled"}]}', 101.00);

ALTER TABLE `#__wpl_dbst`
ADD `comparable` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '0=Not comparable, 1=Comparable',
ADD `compare_visible` BOOLEAN NOT NULL DEFAULT FALSE,
ADD `compare_row` TINYINT NOT NULL COMMENT '0=Disabled, 1=Higher is better, 2=Lower is better';

UPDATE `#__wpl_dbst` SET `comparable`='0' WHERE `table_column`='' OR `table_column` IS NULL OR `kind` <> 0;
UPDATE `#__wpl_dbst` SET `compare_visible`='1' WHERE `plisting`='1' AND `comparable`='1';

INSERT INTO `#__wpl_activities` (`id`, `activity`, `position`, `enabled`, `index`, `params`, `show_title`, `title`, `association_type`, `associations`, `client`) VALUES (40, 'listing_gallery', 'wpl_property_compare_image', '1', '0.00', '{"image_width":"200","image_height":"120","image_class":"wpl-compare-image","rewrite":"0","watermark":"0"}', '0', '', '1', NULL, '2');

INSERT INTO `#__wpl_settings` (`id`, `setting_name`, `setting_value`, `showable`, `category`, `type`, `title`, `params`, `options`, `index`) VALUES
(201, 'wpl_ui_customizer_layouts_separator', '', 1, 11, 'separator', 'Layouts', '', '', 201.00),
(202, 'wpl_propertyshow_layout', 'default', 1, 11, 'select', 'Property Details Layout', '', '{"values":[{"key":"default","value":"Default"},{"key":"layout2","value":"Layout2"}]}', 201.50),
(203, 'wpl_theme_compatibility', '0', 1, 11, 'select', 'Theme Compatibility', '{"tooltip":"If enabled, WPL tries to make the frontend styles compatible with your theme. It works only for main style of some famous themes such as Bridge, Avada, X, Be etc."}', '{"values":[{"key":1,"value":"Enabled"},{"key":0,"value":"Disabled"}]}', 162.50);

INSERT INTO `#__wpl_extensions` (`id` ,`type` ,`title` ,`parent` ,`description` ,`enabled` ,`param1` ,`param2` ,`param3` ,`param4` ,`param5` ,`params` ,`editable` ,`index` ,`client`)
VALUES (135, 'widget', 'WPL Currency Switcher Widget',  '0',  '',  '1',  'widgets.unit_switcher.main',  'widgets_init',  'wpl_unit_switcher_widget',  '',  '',  '',  '0',  '135.00',  '2');

ALTER TABLE `#__wpl_users` ADD `access_clone` TINYINT(4) NOT NULL DEFAULT '0';