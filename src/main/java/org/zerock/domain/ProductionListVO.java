package org.zerock.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ProductionListVO {

	int PR_code;
	int item_code;
	Date sdate;
}
