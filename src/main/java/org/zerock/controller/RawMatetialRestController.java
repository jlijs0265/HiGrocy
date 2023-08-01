package org.zerock.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.ItemVO;
import org.zerock.domain.RawMaterialVO;
import org.zerock.service.RawMaterialService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@AllArgsConstructor
@Log4j
public class RawMatetialRestController {
	
	private RawMaterialService service;
	
	// 원재료 등록
	@PostMapping("/raw_material")
	public void insertRawMatetial() {
		log.info("POST 컨트롤러 탐");
		
		ItemVO item = new ItemVO();
		item.setType("원자재");
		boolean insertItem = service.insertItem(item);
		System.out.println(insertItem);
		System.out.println(item.getItem_code());
		
		if(insertItem) {
			RawMaterialVO vo = new RawMaterialVO();
			vo.setType("원자재");
			vo.setName("인스턴트 드라이 이스트22");
			vo.setOrigin("프랑스");
			vo.setRenewability("재생가능한원부자재");
			vo.setStandard_quantity(50);
			vo.setUnit("kg");
			log.info(service.insertRawMaterial(vo));
		}		
	}

}
