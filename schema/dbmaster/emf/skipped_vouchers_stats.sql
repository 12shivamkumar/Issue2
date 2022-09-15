

CREATE TABLE `skipped_vouchers_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `voucher_series_id` int(11) NOT NULL,
  `skipped_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`customer_id`),
  KEY `skipped_on` (`org_id`,`skipped_on`)
) ;

