package org.zerock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.ProductProcessVO;
import org.zerock.domain.RawMaterialVO;
import org.zerock.service.ProductProcessService;
import org.zerock.service.RawMaterialServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

@RestController
@Log4j
public class ProductProcessRestController {
	
	@Autowired
	private ProductProcessService service;
	
	// 생산 프로세스 조회
	@GetMapping("/process/getList/{product_code}")
	public ResponseEntity<List<ProductProcessVO>> getlist(@PathVariable int product_code) {
		log.info("controller 타는중.."+product_code);
		return ResponseEntity.ok(service.getlist(product_code));
	}
	// 생산 프로세스 등록
	@PostMapping("/process/register")
	public ResponseEntity<Object> insert(@RequestBody List<ProductProcessVO> vo) {
		log.info(vo);
		return ResponseEntity.ok(service.insert(vo));
	}

	// 생산 프로세스 삭제
	@DeleteMapping("/process/delete")
	public ResponseEntity<Object> deleteRawMaterial(@RequestBody List<ProductProcessVO> vo) {
		log.info(vo);
		return ResponseEntity.ok(service.delete(vo));
	}

}
