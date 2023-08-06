package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.zerock.service.RawMaterialService;
import org.zerock.service.accountService;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
public class orderController {
	@Autowired
	private accountService account_service;
	
	@Autowired
	private RawMaterialService raw_service;
	
	@GetMapping("/order")
	public String orderRequest(Model model) {
		log.info("oder..page.. controller");
		model.addAttribute("accList", account_service.getList());
		model.addAttribute("rawList", raw_service.getRawMaterialList());
		return "/order/orderApplication";
	}
	

}
