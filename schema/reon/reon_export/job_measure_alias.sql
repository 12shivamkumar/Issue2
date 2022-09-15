
-- start  schema : job_measure_alias

 CREATE  TABLE `job_measure_alias` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `fact_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `measure_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_job_id_idx` (`org_id`,`job_id`),
  KEY `job_id_idx` (`job_id`)
)   COLLATE=utf8mb4_unicode_ci;


-- end  Schema : job_measure_alias
