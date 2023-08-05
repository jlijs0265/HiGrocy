package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.service.StorageService;
import org.zerock.service.WHService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/*")
@AllArgsConstructor
@Log4j
public class WHController {
	
	private WHService service;

	@GetMapping("/wh")
	public String wareHousing (Model model) {
		model.addAttribute("WHList", service.getList());
		log.info("Welcome WareHosing!"+ model);
		
		return "wh/warehousing";
	}
	
	@GetMapping("/wh/detail")
	public String whDetail(Model model) {
//		model.addAttribute("DetailList",/**/);
		log.info("Welcom WHDetail!");
		return "wh/detail";
	}
}
