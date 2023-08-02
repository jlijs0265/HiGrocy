package org.zerock.domain;

import lombok.Data;

@Data
public class ProductionMachineVO {
	int machine_code;
	String type;
	int gas_emissions;
	int energy_usage;
	
}
