CREATE TABLE `channel_category_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,

  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`)
);