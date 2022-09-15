

CREATE TABLE `new_roles` (
  `org_id` int(3) DEFAULT NULL,
  `org_name` varchar(52) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_name` varchar(23) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_role_name` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approver_email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `org_id` (`org_id`,`role_name`)
) ;

