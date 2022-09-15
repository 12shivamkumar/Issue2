CREATE TABLE `REF_GAME_ITEM_METADATA` (
  `EXHAUSED_LIMIT` int(11) NOT NULL,
  `GAME_ITEM_ID` bigint(20) NOT NULL,
  `MAX_LIMIT` int(11) NOT NULL,
  `WIN_PERCENTAGE` double NOT NULL,
  `LAST_UPDATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`GAME_ITEM_ID`)
)