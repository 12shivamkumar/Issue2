

CREATE TABLE `ruleset_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto-generated id',
  `org_id` int(11) NOT NULL,
  `context_id` bigint(20) NOT NULL DEFAULT '-1',
  `context_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL COMMENT 'Whether ruleset is active or not',
  `created_by` int(11) NOT NULL DEFAULT '-1',
  `created_on` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL COMMENT 'User ID of user who modified this ruleset last.',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `org_id`),
  KEY `org_id` (`org_id`,`name`(255)),
  KEY `auto_update_time` (`auto_update_time`)
) 

