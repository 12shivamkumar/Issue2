CREATE TABLE `TBL_USER_REWARD` (
 `ID` bigint(20) NOT NULL AUTO_INCREMENT,
 `BRAND_ID` bigint(20) DEFAULT NULL,
 `ORG_ID` bigint(20) DEFAULT NULL,
 `INTOUCH_VOUCHER` varchar(255) DEFAULT NULL,
 `INTOUCH_VOUCHER_EXPIRY` varchar(255) DEFAULT NULL,
 `MOBILE` varchar(255) DEFAULT NULL,
 `INTOUCH_USER_ID` bigint(20) DEFAULT NULL,
 `INTOUCH_POINTS_DEDUCTED` varchar(255) DEFAULT NULL,
 `IS_REDEEMED` bit(1) DEFAULT NULL,
 `REWARD_ID` bigint(20) DEFAULT NULL,
 `VENDOR_REWARD` json DEFAULT NULL,
 `AUDIT_INFO` json DEFAULT NULL,
 `ISSUED_REF_ID` varchar(255) DEFAULT NULL,
 `POINTS_REF_ID` varchar(255) DEFAULT NULL,
 `LAST_UPDATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 `CREATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`ID`),
 KEY `idx_brandId` (`BRAND_ID`),
 KEY `idx_orgId` (`ORG_ID`),
 KEY `idx_rewardId` (`REWARD_ID`),
 KEY `idx_mobile_brandId` (`MOBILE`,`BRAND_ID`),
 KEY `idx_mobile_orgId` (`MOBILE`,`ORG_ID`),
 KEY `idx_created_on` (`CREATED_ON`),
 KEY `idx_intouchUserId_brandId` (`INTOUCH_USER_ID`,`BRAND_ID`),
 KEY `idx_intouchUserId_orgId` (`INTOUCH_USER_ID`,`ORG_ID`)
)
