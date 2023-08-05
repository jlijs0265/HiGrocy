package org.zerock.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class orderRecordVO {
	
	private int order_code;
	private int account_code;
	private Date order_date;
	private String order_manager;
	private Date delivery_date;
	
}

