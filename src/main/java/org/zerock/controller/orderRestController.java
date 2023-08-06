package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.orderListVO;
import org.zerock.service.accountService;
import org.zerock.service.orderListService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j


public class orderRestController {
	
//	@Autowired
//	private orderListService ol_service;
	
//	@PostMapping("/order/insert")
//	public ResponseEntity<Object>insertOL(@RequestBody orderListVO vo){
//		log.info("order : ajax" + vo);
//		return ResponseEntity.ok(ol_service.insertOL(vo));
//	}
//	

}
