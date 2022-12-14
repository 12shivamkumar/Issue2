CREATE TABLE `USER_GAME_ITEM` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20)  NOT NULL,
  `GAME_ID` bigint(20)  NOT NULL,
  `GAME_ITEM_ID` bigint(20)  NOT NULL,
  `BRAND_ID` bigint(20)  NOT NULL,
  `USER_GAME_ITEM_WINS_COUNT` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `idx_userId_gameItemId` (`BRAND_ID`, `GAME_ID`, `USER_ID`, `GAME_ITEM_ID`)
)