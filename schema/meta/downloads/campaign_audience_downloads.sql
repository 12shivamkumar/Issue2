

CREATE TABLE `campaign_audience_downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` enum('PROCESSING','EXECUTED','ARCHIVED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

