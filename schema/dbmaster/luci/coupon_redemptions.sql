

CREATE TABLE `coupon_redemptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `coupon_series_id` int(11) DEFAULT NULL,
  `coupon_issued_id` bigint(11) NOT NULL,
  `redeemed_user_id` bigint(20) NOT NULL,
  `redeemed_date` datetime NOT NULL,
  `redeemed_at_store` bigint(20) NOT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `bill_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_amount` decimal(15,3) DEFAULT NULL,
  `details` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'Any details about the redemption',
  `entry_type` enum('intouch','manual') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'intouch',
  `validation_code_used` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_cpn_id` (`org_id`,`coupon_issued_id`,`active`,`redeemed_user_id`),
  KEY `redeemed_date_idx` (`org_id`,`coupon_series_id`,`active`,`redeemed_user_id`,`redeemed_date`),
  KEY `org_time_idx` (`auto_update_time`,`org_id`),
  KEY `redeemed_user_id_idx` (`org_id`,`redeemed_user_id`)
) ;
