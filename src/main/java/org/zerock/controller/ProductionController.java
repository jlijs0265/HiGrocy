package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.zerock.service.PMListService;
import org.zerock.service.PMService;
import org.zerock.service.ProductionRequsetListService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ProductionController {
	@Autowired
	private ProductionRequsetListService service;
		
	@GetMapping("/production/requestList")
	public void viewList() {
		log.info("requestList....page....");
	}
}
