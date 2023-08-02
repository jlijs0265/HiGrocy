package org.zerock.domain;

import lombok.Data;

@Data
public class PMListVO {
	int pm_list_code;
	int machine_code;
	String name;
	String factory_name;
	String location;
}
