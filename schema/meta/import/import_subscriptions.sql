

CREATE TABLE `import_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(10) unsigned NOT NULL COMMENT 'if zero, subscribed to all orgs',
  `subscribed_from` date NOT NULL,
  `subscribed_upto` date NOT NULL,
  `added_by` int(10) unsigned NOT NULL,
  `added_on` datetime NOT NULL,
  `unsubscribed_on` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`)
) 

