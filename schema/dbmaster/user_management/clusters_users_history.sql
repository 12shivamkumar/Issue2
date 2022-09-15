

CREATE TABLE `clusters_users_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `cluster_id` int(11) NOT NULL,
  `cluster_value_id_from` bigint(20) NOT NULL,
  `cluster_value_id_to` bigint(20) DEFAULT NULL,
  `added_by` bigint(20) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_id` (`org_id`,`cluster_id`,`user_id`),
  KEY `org_id_2` (`org_id`,`cluster_id`,`added_on`)
) ;

