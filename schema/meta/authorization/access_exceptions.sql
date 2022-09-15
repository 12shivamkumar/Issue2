

CREATE TABLE `access_exceptions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `org_id` bigint(20) NOT NULL,
  `action_id` bigint(20) NOT NULL,
  `validity_date` datetime DEFAULT NULL,
  `assigned_by` bigint(20) DEFAULT NULL,
  `purpose` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_2` (`user_id`,`org_id`,`action_id`),
  KEY `user_id` (`user_id`)
) 

