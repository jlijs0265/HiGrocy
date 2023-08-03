package org.zerock.domain;

import lombok.Data;

@Data
public class ProductionRecordVO {
	int production_record_code;
	int machine_code;
	int item_code;
	int pr_code;
	int usage_time;
	int defective_amount;
}
