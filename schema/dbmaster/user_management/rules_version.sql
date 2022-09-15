

CREATE TABLE `rules_version` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `file_tag` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`,`org_id`)
) ;

