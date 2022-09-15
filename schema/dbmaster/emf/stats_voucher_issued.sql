

CREATE TABLE `stats_voucher_issued` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `ruleset_id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `rule_case_info_id` int(11) NOT NULL,
  `voucher_series_id` int(11) NOT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`ruleset_id`),
  KEY `auto_time_idx` (`added_on`) 
) ;

