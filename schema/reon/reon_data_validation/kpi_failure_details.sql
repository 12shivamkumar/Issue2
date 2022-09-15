
-- start  Schema : kpi_failure_details

CREATE TABLE `kpi_failure_details` (
  `org_id` int(11) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `test_case_name` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `mismatch` text,
  `exec_id` int(11) DEFAULT NULL
) ;


-- end  Schema : kpi_failure_details