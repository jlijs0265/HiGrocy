package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.accountVO;
import org.zerock.service.orderListService;
import org.zerock.service.orderRecordService;

import lombok.extern.log4j.Log4j;


@RestController
@Log4j

public class orderListController {
	
	@Autowired
	private orderRecordService or_service;
	
	@Autowired
	private orderListService ol_service;
	
	@PostMapping("/order")
	public ResponseEntity<object>
	
}
