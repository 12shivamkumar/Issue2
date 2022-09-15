

CREATE TABLE `user_target_event_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_target_id` bigint(20) NOT NULL,
  `target_entity` enum('TRANSACTION','POINTS','LINEITEM') COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_entity_id` bigint(20) NOT NULL,
  `target_value` decimal(18,3) DEFAULT NULL,
  `event_date` timestamp NULL DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`,`org_id`),
  KEY `auto_time_idx` (`auto_update_time`),
  KEY `idx_user` (`org_id`,`user_id`,`user_target_id`)
) ;

