

CREATE TABLE `default_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `type` enum('OPTIN','OPTOUT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OPTOUT',
  `subscription_type` enum('SINGLE','DOUBLE','CONFIRMED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SINGLE',
  `file_service_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

