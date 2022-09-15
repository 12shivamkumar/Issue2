

CREATE TABLE `loyalty_not_interested_bills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `bill_number` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_amount` double NOT NULL,
  `bill_gross_amount` double NOT NULL DEFAULT '0' COMMENT 'amount before discount',
  `bill_discount` double NOT NULL DEFAULT '0' COMMENT 'discount given on the bill',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_time` datetime NOT NULL,
  `entered_by` bigint(20) NOT NULL COMMENT 'Store ID',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `outlier_status` enum('NORMAL','INTERNAL','FRAUD','OUTLIER','TEST','FAILED','OTHER','RETRO','DELETED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NORMAL',
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`billing_time`),
  KEY `org_id_2` (`org_id`,`entered_by`,`billing_time`),
  KEY `orgid_billnum_date_idx` (`org_id`,`bill_number`,`billing_time`),
  KEY `auto_time_idx` (`auto_update_time`) 
) ;

