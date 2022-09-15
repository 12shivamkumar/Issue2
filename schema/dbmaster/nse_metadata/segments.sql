

CREATE TABLE `segments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` enum('UPLOAD','RULEBASED') CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_refreshable` tinyint(1) NOT NULL DEFAULT '0',
  `is_scd` tinyint(1) NOT NULL DEFAULT '0',
  `total_count` bigint(20) NOT NULL DEFAULT '0',
  `success_count` bigint(20) NOT NULL DEFAULT '0',
  `created_by` bigint(20) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `name` (`org_id`,`name`),
  KEY `org_id` (`org_id`)
) ;

