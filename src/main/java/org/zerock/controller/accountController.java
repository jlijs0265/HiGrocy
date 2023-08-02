package org.zerock.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;

import org.zerock.domain.accountVO;
import org.zerock.service.accountService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor

public class accountController {

	private accountService service;
	

	@GetMapping("/account")
	public String readAccount(Model model) {
		log.info(Arrays.toString(service.getList().toArray()));
		model.addAttribute("accList", service.getList());
		return "/order/account";
	}
	
	@PostMapping("/account/register")
	public String registerAccount(accountVO vo) {
		service.register(vo);
		return "redirect:/account";
		
	}
	
}
