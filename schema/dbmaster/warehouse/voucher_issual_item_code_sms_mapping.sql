

CREATE TABLE `voucher_issual_item_code_sms_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_issual_item_code_id` int(11) NOT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_text` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `voucher_issual_item_code_id` (`voucher_issual_item_code_id`,`item_code`)
) ;

