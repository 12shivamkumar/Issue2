CREATE TABLE `partner_program_enrollment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `loyalty_program_id` int(11) NOT NULL COMMENT 'Loyalty program to which the partner program is linked',
  `partner_program_id` int(11) NOT NULL COMMENT 'Partner program to which the customer is getting enrolled',
  `customer_id` int(11) NOT NULL,
  `is_linked` tinyint(1) NOT NULL COMMENT 'Checks if the customer is linked to the partner program',
  `is_active` tinyint(1) DEFAULT 1 COMMENT 'True if record is active',
  `current_slab_id` int(11) NOT NULL COMMENT 'Current slab identifier of the customer',
  `current_slab_expiry_date` datetime NOT NULL COMMENT 'Expiry date of the current slab of the customer',
  `last_slab_change_date` datetime NOT NULL COMMENT 'Date of latest partner program slab change of the customer',
  `enrolled_on` datetime NOT NULL COMMENT 'Date of enrollment of customer into the partner program',
  `partner_program_membership_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'External identifier of the customer in partner program',
  `created_on` datetime NOT NULL,
  `event_log_id` bigint(20) DEFAULT -1 COMMENT 'Id of event log',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `partner_program_id` (`org_id`,`loyalty_program_id`,`customer_id`,`partner_program_id`),
  KEY `partner_program_linked_idx` (`org_id`,`loyalty_program_id`,`partner_program_id`,`is_linked`),
  KEY `slab_expiry` (`current_slab_id`,`current_slab_expiry_date`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`),
  KEY `auto_time_idx` (`auto_update_time`)
);