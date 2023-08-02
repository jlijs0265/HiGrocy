package org.zerock.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.service.StorageService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/storage/*")
@AllArgsConstructor
@Log4j
public class StorageController {
	
	private StorageService service;

	@GetMapping("storage")
	public String storage(Model model) {
		//창고 관리 페이지
		model.addAttribute("storageList", service.getList());
		return "storage/storage";
	}
	
}
