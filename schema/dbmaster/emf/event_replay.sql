

CREATE TABLE `event_replay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `unique_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('SUCCESS','FAIL','PERMANENT_FAIL','IN_PROGRESS','PARTIAL_SUCCESS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_type_id` int(11) NOT NULL COMMENT 'id in emf event types',
  `event_time` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `replay_count` tinyint(6) DEFAULT 0,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `event` (`org_id`,`customer_id`,`unique_id`),
  KEY `auto_update_time_idx` (`auto_update_time`),
  KEY `status_index` (`status`) 
) ;