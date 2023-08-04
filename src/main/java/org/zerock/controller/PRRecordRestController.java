package org.zerock.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.ProductVO;
import org.zerock.service.PRRecordService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@AllArgsConstructor
public class PRRecordRestController {
	
	private PRRecordService service;
	
	@GetMapping("/item")
	public ResponseEntity<List<ProductVO>> getItemList() {
		List<ProductVO> productList = service.getProductList();
		return new ResponseEntity<List<ProductVO>> (productList, HttpStatus.OK);
	}
	
	@PostMapping("/itemAmount")
	public String getAmount(@RequestBody String code) {
		// item_code를 받아서 BOM 조회 후, 해당 원재료의 발주목록에 있는 단가를 가져온다.
		log.info(code);
		
		return "okok";
	}
	
}
