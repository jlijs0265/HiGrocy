package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.zerock.service.PMListService;
import org.zerock.service.PMService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class PMController {
	@Autowired
	private PMListService pm_service;
	
	@Autowired
	private PMService m_service;
	
	@GetMapping("/pm")
	public String viewList(Model model) {
		model.addAttribute("PMList", pm_service.getPMList());
		model.addAttribute("MList", m_service.getPM());
		log.info("pm....page....");
		return "pm/pm";
	}
}
