

CREATE TABLE `coupons_issued` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `coupon_code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'pin code used while uploading coupons',
  `issued_to` bigint(20) NOT NULL,
  `coupon_series_id` int(11) NOT NULL,
  `issued_date` datetime NOT NULL,
  `issued_by` bigint(20) NOT NULL COMMENT 'till that created the coupon',
  `issual_type` enum('SINGLE','BULK','NCA') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'the way the issual was triggered',
  `criteria_id` bigint(20) DEFAULT NULL COMMENT 'will be group id for bulk issual and will be rule id in case of single coupons',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `bill_id` bigint(20) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `coupon_uniqueness` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `unique_code` (`org_id`,`coupon_code`,`active`,`coupon_uniqueness`),
  KEY `issued_date_idx` (`org_id`,`issued_date`),
  KEY `user_id` (`org_id`,`issued_to`),
  KEY `org_time_idx` (`org_id`,`auto_update_time`),
  KEY `auto_time_idx` (`auto_update_time`),
  KEY `voucher_series` (`org_id`,`coupon_series_id`,`issued_to`)
) ;
