package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.PMListVO;
import org.zerock.domain.ProductionListVO;
import org.zerock.domain.ProductionMachineVO;
import org.zerock.domain.ProductionRecordVO;
import org.zerock.service.PMListService;
import org.zerock.service.PMService;
import org.zerock.service.ProductionRequsetListService;

import lombok.extern.log4j.Log4j;

@Log4j
@RestController
public class ProductionRestController {

	@Autowired
	private ProductionRequsetListService service;

	//조회 버튼
	@PostMapping("production/requestList/get")
	public ResponseEntity<Object> getPM(@RequestBody BetweenDateVO vo) {
		log.info("productionList ajax 통신..."+vo);
		return ResponseEntity.ok(service.getProductionList(vo));
	}

	// 생산 버튼
	@PostMapping("production/requestList/register")
	public ResponseEntity<Object> registerProduction(@RequestBody ProductionRecordVO vo) {
		log.info("product ajax 통신..."+vo);
		return ResponseEntity.ok(service.product(vo));
	}
}
