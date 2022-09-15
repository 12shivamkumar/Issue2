CREATE TABLE pa_tree_imbalance (
id INT(11) NOT NULL AUTO_INCREMENT,
org_id INT(11) NOT NULL,
program_id INT(11) NOT NULL,
customer_id INT(11) NOT NULL,
point_category_id INT(11) NOT NULL,
source VARCHAR(50) NOT NULL COMMENT 'source of imbalance',
imbalance DECIMAL(15, 3) NOT NULL COMMENT 'total imbalance',
imbalance_checks TEXT NOT NULL COMMENT 'tree checks where imbalance is found',
imbalance_checks_info TEXT NOT NULL COMMENT 'tree imbalance value per check',
published_date_time datetime NOT NULL COMMENT 'when kpi message was published',
published_date date NOT NULL COMMENT 'date on which kpi message was published',
process_start_date_time datetime NOT NULL COMMENT 'when kpi message was processed',
auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id, org_id),
UNIQUE KEY imbalance_record_source_idx (org_id, program_id, point_category_id, customer_id, source, published_date),
KEY imbalance_date_idx (published_date, org_id),
KEY auto_update_time_idx (auto_update_time));

