package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {

	@GetMapping("/login")
	public void login(String error, String logout, Model model) {

		if (error != null) {
			model.addAttribute("error", error);
		}

		if (logout != null) {
			model.addAttribute("logout", logout);
		}
	}
	
	

}
