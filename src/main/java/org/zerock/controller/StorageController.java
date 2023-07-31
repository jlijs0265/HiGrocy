package org.zerock.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/storage/*")
@AllArgsConstructor
@Log4j
public class StorageController {

	@GetMapping("storage")
	public String storage() {
		//창고 관리 페이지
		
		return "storage/storage";
	}
	/*
	 * @PostMapping("insert/storage") public String register() {
	 * 
	 * return "insert/storage"; }
	 */
}
