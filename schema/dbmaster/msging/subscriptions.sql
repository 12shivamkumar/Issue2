

CREATE TABLE `subscriptions` (
  `publisherId` bigint(20) NOT NULL COMMENT 'id''s are external',
  `subscriberId` bigint(20) NOT NULL COMMENT 'id''s are external',
  `categoryId` smallint(6) NOT NULL,
  `subscriberName` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Contains the timestamp of when this person was added to this list',
  PRIMARY KEY (`publisherId`,`subscriberId`,`categoryId`),
  KEY `publisherId` (`publisherId`,`categoryId`)
) ;

