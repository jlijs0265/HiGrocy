package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.BetweenDateVO;
import org.zerock.service.orderListService;
import org.zerock.service.orderRecordService;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class OrderListRestController {
	@Autowired
	private orderListService service;

	@PostMapping("/orderlist/betweendate")
	public ResponseEntity<Object> orderlist(@RequestBody BetweenDateVO vo) {
		log.warn(vo);
		return ResponseEntity.ok(service.selectDate(vo));
//		return ResponseEntity.ok("aaa");
	}
	@PostMapping("/orderlist/items")
	public ResponseEntity<Object> orderitemlist(@RequestBody int order_code) {
		log.warn(order_code);
		return ResponseEntity.ok(service.selectItem(order_code));
//		return ResponseEntity.ok("aaa");
	}
}
