CREATE TABLE `REF_GAME_ITEM_DETAILS_AUD` (
  `GAME_ITEM_ID` bigint(20) NOT NULL,
  `LANGUAGE_CODE` varchar(255) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `IMAGE_URI` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`GAME_ITEM_ID`,`LANGUAGE_CODE`,`REV`),
  KEY `idx_rev` (`REV`)
)