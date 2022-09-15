CREATE TABLE `REF_GAME_ITEM_DETAILS` (
  `DESCRIPTION` varchar(255) NOT NULL,
  `GAME_ITEM_ID` bigint(20) NOT NULL,
  `IMAGE_URI` varchar(255) DEFAULT NULL,
  `LANGUAGE_CODE` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `LAST_UPDATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`GAME_ITEM_ID`,`LANGUAGE_CODE`),
  KEY `idx_languageCode` (`LANGUAGE_CODE`),
  KEY `idx_gameItemId` (`GAME_ITEM_ID`)
)