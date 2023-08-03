package org.zerock.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.zerock.service.PMListService;
import org.zerock.service.PMService;
import org.zerock.service.ProductProcessService;
import org.zerock.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ProductProcessController {
	
	@Autowired
	private ProductProcessService pp_service;
	
	@Autowired
	private ProductService p_service;
	
	@Autowired
	private PMService pm_service;
	
	
	@GetMapping("/process")
	public String product(Model model) {
		model.addAttribute("productList", p_service.getProductList());
		model.addAttribute("m_Lists", pm_service.getPM());		
		return "/item/process";
	}
	
}
