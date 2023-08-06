package org.zerock.domain;

import java.sql.Date;

import lombok.Data;

//생산요청 현황시 JOIN문으로 가져올 Domain
@Data
public class ProductionRequestListVO {
	int pr_code;
	Date request_date;
	String request_manager;
	int item_code;
	int amount;
}
