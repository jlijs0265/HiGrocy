package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class PMController {
	
	@GetMapping("/pm")
	public String viewList() {
		log.info("pm....page....");
		return "pm/pm";
	}
}
