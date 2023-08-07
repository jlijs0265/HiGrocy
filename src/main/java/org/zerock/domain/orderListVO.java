package org.zerock.domain;

import lombok.Data;

@Data
public class orderListVO {
	private int order_code;
	private int item_code;
	private int account_code;
	private int price;
	private int amount;
	private RawMaterialVO item;
}