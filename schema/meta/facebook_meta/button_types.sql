

CREATE TABLE `button_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto-generated id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_json` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '-1',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 

