

CREATE TABLE `target_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_id` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `date_org_store_udx` (`org_id`,`store_id`,`date_id`)
) 

