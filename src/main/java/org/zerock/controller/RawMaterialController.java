package org.zerock.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.zerock.domain.RawMaterialVO;
import org.zerock.service.RawMaterialServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class RawMaterialController {
	
	private RawMaterialServiceImpl service;
	
	@GetMapping("/raw_material")
	public String readRawMaterial(Model model) {
		// 원재료 등록 페이지 작성
//		log.info(Arrays.toString(service.getRawMaterialList().toArray()));
		model.addAttribute("rawList", service.getRawMaterialList());
		return "/item/raw_material";
	}
	
	@PostMapping("/raw_material/insert")
	public String registerRawMarerial(RawMaterialVO vo) {
		service.registerRawMaterial(vo);
		return "redirect:/raw_material";
	}
	

}
