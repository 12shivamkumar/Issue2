

CREATE TABLE `supported_browsers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `browser_mime_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `browser_mime_name` (`browser_mime_name`)
) ;

