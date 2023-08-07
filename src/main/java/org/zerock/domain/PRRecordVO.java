package org.zerock.domain;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;

@Data
public class PRRecordVO implements Serializable{
	
	int pr_record_code;
	Date request_date;
	String request_manager;
	
	
}
