package org.zerock.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.accountVO;
import org.zerock.service.accountService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@AllArgsConstructor
@Controller
@Log4j

public class accountController {

	private accountService service;
	
	@GetMapping("/account")
	public String account(Model model) {
		log.info(Arrays.toString(service.getList().toArray()));
		model.addAttribute("accList", service.getList());
		return "account/account";
	}
	
}
