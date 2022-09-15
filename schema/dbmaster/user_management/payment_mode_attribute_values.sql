

CREATE TABLE `payment_mode_attribute_values` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `org_payment_mode_attribute_id` int(11) NOT NULL,
  `org_payment_mode_id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL,
  `payment_mode_attribute_id` int(11) NOT NULL,
  `payment_mode_details_id` bigint(20) NOT NULL,
  `payment_mode_attribute_possible_values_id` int(11) DEFAULT NULL,
  `org_payment_mode_attribute_possible_values_id` int(11) DEFAULT NULL,
  `value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`payment_mode_id`,`payment_mode_details_id`),
  KEY `org_id_2` (`org_id`,`payment_mode_id`,`payment_mode_attribute_id`),
  KEY `org_payment_mode_attribute_possible_values_idx` (`org_id`,`org_payment_mode_attribute_possible_values_id`),
  KEY `payment_mode_attribute_possible_values_idx` (`payment_mode_attribute_possible_values_id`,`org_id`),
  KEY `org_payment_mode_attribute_id` (`org_id`,`org_payment_mode_attribute_id`),
  KEY `auto_time_idx` (`auto_update_time`)
) ;

