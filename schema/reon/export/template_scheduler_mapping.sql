

CREATE TABLE `template_scheduler_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `scheduler_task_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `filters` longtext COLLATE utf8mb4_unicode_ci,
  `columns` mediumtext COLLATE utf8mb4_unicode_ci,
  `file_format` mediumtext COLLATE utf8mb4_unicode_ci,
  `profile` smallint(3) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `updated_by` int(11) NOT NULL,
  `last_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_profile` (`org_id`,`profile`,`scheduler_task_id`),
  KEY `org_template` (`org_id`,`template_id`),
  KEY `scheduler_task_org_id` (`org_id`,`scheduler_task_id`,`template_id`)
) 

