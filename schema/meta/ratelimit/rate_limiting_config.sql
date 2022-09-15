

CREATE TABLE `rate_limiting_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `module` enum('API') COLLATE utf8mb4_unicode_ci NOT NULL,
  `context_type` enum('TILL','ADMIN_USER','STR_SERVER','ASSOCIATE','STORE','ZONE','CLIENT_IP','ORG') COLLATE utf8mb4_unicode_ci NOT NULL,
  `context_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` enum('DAILY','HOURLY','MINUTE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_modified_on` datetime NOT NULL,
  `last_modified_by` int(11) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

