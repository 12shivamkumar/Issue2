

CREATE TABLE `issue_revision_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `issue_log_id` int(11) NOT NULL,
  `revision_params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id` (`org_id`,`issue_id`,`issue_log_id`)
) ;

