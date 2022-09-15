

CREATE TABLE `client_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_type` enum('INTOUCH','STORE_CENTER','THIN_CLIENT') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `framework_version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'V3.5',
  `change_log` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `version_added_by` int(11) NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) 

