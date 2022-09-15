

CREATE TABLE `system_rules_scopes_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `program_id` int(11) NOT NULL,
  `system_rule_id` int(11) NOT NULL,
  `scope_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `program_id` (`program_id`,`system_rule_id`,`scope_id`,`name`)
) ;

