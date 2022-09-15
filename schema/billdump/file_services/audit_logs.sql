

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `perfomed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `performed_ip` int(11) DEFAULT NULL,
  `status_code` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `file_version` (`file_id`,`version_id`),
  KEY `namespace` (`namespace`)
) 

