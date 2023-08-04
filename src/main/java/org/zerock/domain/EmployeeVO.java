package org.zerock.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class EmployeeVO {
	
	private int emp_no;
	private String empid;
	private String empname;
	private String emppass;
	private Date regdate;

	private AuthVO auth;
}
