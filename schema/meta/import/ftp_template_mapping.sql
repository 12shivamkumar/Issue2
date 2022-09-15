

CREATE TABLE `ftp_template_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `source_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_id` (`org_id`,`source_id`,`profile_id`)
) 

