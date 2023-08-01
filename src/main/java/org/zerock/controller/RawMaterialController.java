package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class RawMaterialController {
	
	@GetMapping("/raw_material")
	public String insertRawMaterial() {
		// 원재료 등록 페이지 작성
		
		return "/item/raw_material";
	}
	

}
