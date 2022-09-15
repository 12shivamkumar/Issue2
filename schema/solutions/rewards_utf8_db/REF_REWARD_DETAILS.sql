CREATE TABLE `REF_REWARD_DETAILS` (
 `DESCRIPTION` text NOT NULL,
 `IS_ENABLED` bit(1) NOT NULL,
 `IMAGE_URI` varchar(255) DEFAULT NULL,
 `LANGUAGE_CODE` varchar(255) NOT NULL,
 `NAME` varchar(255) NOT NULL,
 `REWARD_ID` bigint(20) NOT NULL,
 `TERM_N_CONDITIONS` varchar(255) NOT NULL,
 `THUMBNAIL_URI` varchar(255) DEFAULT NULL,
 `LAST_UPDATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 `CREATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP,
 `IS_MIGRATED` bit(1) NOT NULL DEFAULT 0,
 PRIMARY KEY (`LANGUAGE_CODE`,`REWARD_ID`),
 KEY `idx_rewardId_languageCode` (`REWARD_ID`,`LANGUAGE_CODE`),
 KEY `idx_migrated` (`IS_MIGRATED`)
)