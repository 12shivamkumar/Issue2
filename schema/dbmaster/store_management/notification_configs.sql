

CREATE TABLE `notification_configs` (
  `action_id` int(11) NOT NULL,
  `report_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `send_sms` enum('YES','NO') COLLATE utf8mb4_unicode_ci DEFAULT 'NO',
  `send_email` enum('YES','NO') COLLATE utf8mb4_unicode_ci DEFAULT 'NO',
  `org_id` int(11) NOT NULL,
  PRIMARY KEY (`action_id`,`org_id`)
) ;

