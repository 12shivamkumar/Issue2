

CREATE TABLE `org_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto-generated id',
  `org_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '-1',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 

