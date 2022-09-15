

CREATE TABLE `strategies` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto generated strategy id',
  `org_id` int(11) NOT NULL DEFAULT '0',
  `program_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of the strategy instance',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'description of the strategy instance',
  `strategy_type_id` int(11) NOT NULL COMMENT 'type of the strategy instance',
  `property_values` mediumtext COLLATE utf8mb4_unicode_ci COMMENT 'configuration values to be used by the strategy',
  `created_on` datetime NOT NULL COMMENT 'date on which the instance was created',
  `owner` enum('LOYALTY','CAMPAIGN') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LOYALTY' COMMENT 'module using the strategy',
  auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `strategy_type_id` (`org_id`,`program_id`,`strategy_type_id`,`name`) ,
  INDEX auto_update_time (auto_update_time)
) ;

