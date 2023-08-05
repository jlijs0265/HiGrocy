package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.domain.accountVO;


@Controller

public class orderController {
	
	@GetMapping("/order")
	public String orderRequest() {
		return "/order/orderApplication";
	}
	
	@GetMapping
	@ResponseBody
	public accountVO a(accountVO account) {
		
		return se
	}
}
