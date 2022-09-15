CREATE TABLE `LOG_DOWNSTREAM_FAILURE` (
 `ID` bigint(20) NOT NULL AUTO_INCREMENT,
 `ORG_ID` bigint(20) NOT NULL,
 `CUSTOMER_ID` bigint(20) DEFAULT NULL,
 `API` varchar(255) DEFAULT NULL,
 `TYPE` varchar(20) DEFAULT NULL,
 `MARVEL_REQUEST_ID` varchar(50) DEFAULT NULL,
 `DOWNSTREAM_REQUEST_ID` varchar(50) DEFAULT NULL,
 `REQUEST` TEXT DEFAULT NULL,
 `RESPONSE` TEXT DEFAULT NULL,
 `STATUS_CODE` bigint(20) DEFAULT NULL,
 `CREATED_ON` timestamp DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`ID`),
 KEY `idx_org_marvelreqid` (`ORG_ID`,`MARVEL_REQUEST_ID`),
 KEY `idx_org_reqid` (`ORG_ID`,`DOWNSTREAM_REQUEST_ID`),
 KEY `idx_customerid_org` (`CUSTOMER_ID`,`ORG_ID`),
 KEY `idx_status_reqid` (`STATUS_CODE`,`ORG_ID`)
)