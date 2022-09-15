

CREATE TABLE `actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto-generated id',
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `params` mediumtext NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '-1',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) 

