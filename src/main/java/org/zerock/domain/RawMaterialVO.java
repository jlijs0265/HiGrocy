package org.zerock.domain;

import lombok.Data;

@Data
public class RawMaterialVO {
	int raw_materials_code;
	String classification;
	String materials_name;
	String renewability;
	String unit;
	int standard_quantity;
	String origin;
	
}
