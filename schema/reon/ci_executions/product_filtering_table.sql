CREATE TABLE `product_filtering_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `vertical` enum("movie", "f&b", "apparel", "hypermarket", "others") CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT "others",
  `max_price` int(11) DEFAULT 999999999,
  `min_price` int(11) DEFAULT 0,
  `excluded_item_id` text DEFAULT NULL,
  `transasaction_duration` int(11) DEFAULT NULL,
  `release_before_current_date` int(11) DEFAULT NULL,
  `release_after_current_date` int(11) DEFAULT NULL,
  `categories` varchar(1023) DEFAULT NULL,
  `excluded_categories` varchar(1023) DEFAULT NULL,
  `stores` text DEFAULT NULL,
  `excluded_stores` text DEFAULT NULL,
  `transaction_start_date` varchar(256) DEFAULT NULL,
  `transaction_end_date` varchar(256) DEFAULT NULL,
  `excluded_attributes` text DEFAULT NULL,
  `custom_attribute_columns` varchar(1023) DEFAULT NULL,
  PRIMARY KEY (`id`)
);