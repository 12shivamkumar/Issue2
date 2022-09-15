CREATE TABLE `source_target_dimension_column_mapping` (
  `table_mapping_id` int NOT NULL,
  `source_column_id` int NOT NULL,
  `dimension_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_joining_required` tinyint(1) NOT NULL,
  `dim_table_id` int NOT NULL,
  `join_col_id` int NOT NULL,
  `select_col_id` int NOT NULL,
  `value_mappings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_str` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_mapping_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimension_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`table_mapping_id`,`dimension_id`,`scope_id`) USING BTREE
) ENGINE=InnoDB;