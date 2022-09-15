

CREATE TABLE `missed_call_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `called_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id` (`org_id`,`mobile_number`)
) ;

