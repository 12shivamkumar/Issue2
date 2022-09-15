

CREATE TABLE `hd_metric_data` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `hd_entities_id` int(20) NOT NULL COMMENT 'Foreign key to hd_entities table',
  `metric_id` int(20) NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `window` int(10) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key_id` (`metric_id`)
) ;

