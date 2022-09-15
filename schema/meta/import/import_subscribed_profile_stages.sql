

CREATE TABLE `import_subscribed_profile_stages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL,
  `stage_type` enum('ALL','TEMP_DB_INSERT','VALIDATIONS','MAINDB_COMPLETE','DAILY_SUMMARY','PENDING_NOTIFY','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_subscribe_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_subscribe_stage` (`group_subscribe_id`,`profile_id`,`stage_type`)
) 

