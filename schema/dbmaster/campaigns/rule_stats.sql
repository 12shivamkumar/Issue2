

CREATE TABLE `rule_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `voucher_series_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issued` tinyint(1) NOT NULL,
  `created_time` datetime NOT NULL,
  `bill_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`org_id`)
) ;

