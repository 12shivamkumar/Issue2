CREATE TABLE `card_series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `card_generation_enabled` tinyint(1) DEFAULT NULL,
  `card_generation_config_id` int(11) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `expiry_days` int(5) DEFAULT NULL,
  `max_active_cards`  int(5) DEFAULT NULL,
  `trigger_type` enum('SERIES_ID','OU_ID','REGISTRATION') default 'SERIES_ID',
  `org_unit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `code` (`org_id`,`code`)
)