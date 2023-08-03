package org.zerock.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class PRRecordVO {
	
	int pr_record_code;
	Date request_date;
	String request_manager;
	
}
