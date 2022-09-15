CREATE TABLE `TBL_COUNTRY` (
 `ID` bigint(20) NOT NULL AUTO_INCREMENT,
 `BRAND_ID` bigint(20) DEFAULT NULL,
 `ORG_ID` bigint(20) DEFAULT NULL,
 `IS_ENABLED` bit(1) DEFAULT NULL,
 `NAME` varchar(255) DEFAULT NULL,
 `LAST_UPDATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 `CREATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`ID`),
 KEY `idx_brandId` (`BRAND_ID`),
 KEY `idx_orgId` (`ORG_ID`),
 KEY `idx_name` (`NAME`)
)