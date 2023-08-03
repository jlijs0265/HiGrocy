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
	@PostMapping("/process/getList")
	public ResponseEntity<List<ProductProcessVO>> getlist(@RequestBody int product_code) {
		log.info("controller 타는중.."+product_code);
		return ResponseEntity.ok(service.getlist(product_code));
	}
	// 생산 프로세스 등록
	@PostMapping("/process/register")
	public ResponseEntity<Object> insert(@RequestBody List<ProductProcessVO> vo) {
		log.info(vo);
		return ResponseEntity.ok(service.insert(vo));
	}
//	// 원재료 수정
//	@PutMapping("/process/update")
//	public ResponseEntity<RawMaterialVO> updateRawMaterial(@RequestBody RawMaterialVO vo) {
//		log.info(vo);
//		boolean result = service.updateRawMaterial(vo);
//		return new ResponseEntity<RawMaterialVO>(vo, HttpStatus.OK);
//	}
//	
//	@DeleteMapping("/process/delete")
//	public ResponseEntity<String> deleteRawMaterial(@PathVariable int code) {
//		boolean result = service.deleteRawMaterial(code);
//		return result == true ? new ResponseEntity<String>("success", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
//	}

}
