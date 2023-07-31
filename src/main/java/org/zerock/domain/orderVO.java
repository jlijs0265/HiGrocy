package org.zerock.domain;

import lombok.Data;

@Data
public class orderVO {
	private int item_code;
	private String name;
	private String unit;
	private int amount;
	private int price;
	
}
