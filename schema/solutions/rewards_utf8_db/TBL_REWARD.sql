CREATE TABLE `TBL_REWARD` (
 `ID` bigint(20) NOT NULL AUTO_INCREMENT,
 `BRAND_ID` bigint(20) DEFAULT NULL,
 `ORG_ID` bigint(20) DEFAULT NULL,
 `IS_ENABLED` bit(1) NOT NULL,
 `END_DATE` datetime NOT NULL,
 `INTOUCH_GROUP` varchar(255) DEFAULT NULL,
 `INTOUCH_POINTS` int(11) DEFAULT NULL,
 `INTOUCH_SERIES_ID` varchar(255) DEFAULT NULL,
 `LABEL` varchar(255) DEFAULT NULL,
 `PRIORITY` int(11) NOT NULL,
 `REDEMPTION_TYPE` int(11) NOT NULL,
 `START_DATE` datetime NOT NULL,
 `INTOUCH_TIER` varchar(255) DEFAULT NULL,
 `TYPE` varchar(255) DEFAULT NULL,
 `VENDOR_REDEMPTION_ID` bigint(20) DEFAULT NULL,
 `INTOUCH_TILL_ID` bigint(20) DEFAULT NULL,
 `PROGRAM_ID` bigint(20) DEFAULT NULL,
 `LAST_UPDATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 `CREATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`ID`),
 KEY `idx_brandId` (`BRAND_ID`),
 KEY `idx_orgId` (`ORG_ID`),
 KEY `idx_vendorRedemptionId` (`VENDOR_REDEMPTION_ID`),
 KEY `idx_type` (`TYPE`),
 KEY `idx_priority` (`PRIORITY`),
 KEY `idx_intouchTier` (`INTOUCH_TIER`),
 KEY `idx_intouchGroup` (`INTOUCH_GROUP`),
 KEY `idx_label` (`LABEL`),
 KEY `idx_isEnabled` (`IS_ENABLED`)
)