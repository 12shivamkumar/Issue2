

CREATE TABLE `rate_limit_hit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `loggable_user_id` int(11) NOT NULL,
  `resource` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `client_ip` bigint(20) DEFAULT NULL,
  `api_version` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_params` longtext COLLATE utf8mb4_unicode_ci,
  `http_method` enum('GET','POST','HEAD','PUT','DELETE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent_id` int(11) NOT NULL,
  `status_codes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_id` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `server_ip` bigint(20) NOT NULL,
  `error_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`,`loggable_user_id`)
) 

