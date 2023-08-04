package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller

public class orderController {
	
	@GetMapping("/order")
	public String orderRequest() {
		return "/order/orderApplication";
	}
}
