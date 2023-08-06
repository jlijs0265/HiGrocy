package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.BetweenDateVO;
import org.zerock.service.orderListService;
import org.zerock.service.orderRecordService;

import lombok.extern.log4j.Log4j;
import sun.print.resources.serviceui;

@RestController
@Log4j
public class OrderListRestController {
	@Autowired
	private orderRecordService service;

	@PostMapping("/orderlist/betweendate")
	public ResponseEntity<Object> orderlist(BetweenDateVO vo) {
		return ResponseEntity.ok(service.selectDate(vo));
	}
}
