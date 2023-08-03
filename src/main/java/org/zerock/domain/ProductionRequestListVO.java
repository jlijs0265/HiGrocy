package org.zerock.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ProductionRequestListVO {
	int pr_code;
	Date request_date;
	String request_manager;
	int item_code;
	int amount;
}
