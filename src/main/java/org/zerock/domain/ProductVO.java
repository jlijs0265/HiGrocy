package org.zerock.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {

	private String name;
	private int product_code;
	private int item_code;
	
}
