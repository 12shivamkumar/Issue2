

CREATE TABLE `scope_entities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

