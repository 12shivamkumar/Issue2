

CREATE TABLE `purchasable_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchasable_from_id` int(11) NOT NULL,
  `purchasable_to_id` int(11) NOT NULL,
  `type` enum('INCLUDED','OPTIONAL','REQUIRED','CONFLICT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `purchasable_from_id` (`purchasable_from_id`,`purchasable_to_id`)
) ;

