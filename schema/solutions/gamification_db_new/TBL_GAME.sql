CREATE TABLE `TBL_GAME` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ALLOWED_PLAY` int(11) NOT NULL,
  `AVAILABLE_FOR_ALL` bit(1) NOT NULL,
  `BRAND_ID` bigint(20) DEFAULT NULL,
  `CREATED_BY` varchar(255) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `ENABLED` bit(1) NOT NULL,
  `END_TIME` datetime NOT NULL,
  `LESS_COUPON_WARNING` int(11) NOT NULL,
  `START_TIME` datetime NOT NULL,
  `IS_STARTED` bit(1) DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  `UPDATION_TIME` datetime DEFAULT NULL,
  `USER_GAME_ITEM_LIMIT_ENABLED` bit(1) DEFAULT FALSE,
  PRIMARY KEY (`ID`),
  KEY `idx_brandId` (`BRAND_ID`)
)