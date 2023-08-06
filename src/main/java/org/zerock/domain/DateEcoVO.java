package org.zerock.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class DateEcoVO {
		private int machine_code;
		private String type;
		private int green_gas_date;
		private int energy_date;
		private Date sdate;
		private double total;
}
