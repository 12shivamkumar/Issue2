

CREATE TABLE `bucket_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rows_count` int(11) DEFAULT NULL,
  `last_visited_on` date NOT NULL,
  `has_sub_delivery_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) 

