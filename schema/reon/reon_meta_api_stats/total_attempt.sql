
-- start  Schema : total_attempt

CREATE TABLE `total_attempt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `hour` int(11) NOT NULL,
  `attempt_count` int(11) NOT NULL,
  `hit_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hourly` (`day`,`hour`)
)  ;


-- end  Schema : total_attempt