package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.service.orderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/order")
@Log4j

public class orderController {
	
	@GetMapping("/")
	public String list() {
		log.info("µé¾î¿È");
		return "/order/orderApplication";
	}
}
