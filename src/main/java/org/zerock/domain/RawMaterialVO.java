package org.zerock.domain;

import lombok.Data;

@Data
public class RawMaterialVO {
	int raw_materials_code;
	String type;
	String name;
	String renewability;
	String unit;
	int standard_quantity;
	String origin;
	
	// item_code
	private int item_code;

	
}
