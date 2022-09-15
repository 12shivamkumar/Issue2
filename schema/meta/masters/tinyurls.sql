

CREATE TABLE `tinyurls` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `full_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_till` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

