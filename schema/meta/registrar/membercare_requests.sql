

CREATE TABLE `membercare_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `cluster` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `added_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `added_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_id_auto_update_time` (`org_id`,`auto_update_time`)
) 

