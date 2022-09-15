

CREATE TABLE `user_target` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `target_group_id` bigint(20) NOT NULL,
  `target_rule_id` bigint(20) NOT NULL,
  `period_id` bigint(20) NOT NULL,
  `target_value` decimal(18,3) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `last_updated_on` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated_by` bigint(20) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `achieved_value` decimal(18,3) DEFAULT NULL,
  `emf_message_sent` tinyint(1) NOT NULL DEFAULT 0,
  `promo_engine_message_sent` tinyint(1) NOT NULL DEFAULT 0,
  `target_achieved_emf_message_sent` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `user_id` (`user_id`,`target_rule_id`,`period_id`),
  KEY `auto_time_idx` (`auto_update_time`),
  KEY `idx_user` (`org_id`,`user_id`)
) ;

