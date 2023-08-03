package org.zerock.domain;

import lombok.Data;

@Data
public class ProductProcessVO {
	int product_process_code;
	int product_code;
	int process_time;
	int process_order;
	int machine_code;
}
