package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PRRecordController {
	
	@GetMapping("/pr")
	public String getProductRequestPage() {
		return "/production/productionRequest";
	}

}
