

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Will be copied from sizes table, but can be overwritten for an org',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_size_id` int(11) DEFAULT NULL,
  `added_by` bigint(20) NOT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `is_valid` tinyint(1) DEFAULT '1',
  `auto_update_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_code` (`org_id`,`code`)
) 

