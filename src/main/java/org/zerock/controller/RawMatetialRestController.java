package org.zerock.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.RawMaterialVO;
import org.zerock.service.RawMaterialServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@AllArgsConstructor
@Log4j
public class RawMatetialRestController {
	
	private RawMaterialServiceImpl service;
	
	// 원재료 수정
	@PutMapping("/raw_material")
	public ResponseEntity<RawMaterialVO> updateRawMaterial(@RequestBody RawMaterialVO vo) {
		log.info(vo);
		boolean result = service.updateRawMaterial(vo);
		return new ResponseEntity<RawMaterialVO>(vo, HttpStatus.OK);
	}
	
	@DeleteMapping("/raw_material/{code}")
	public ResponseEntity<String> deleteRawMaterial(@PathVariable int code) {
		boolean result = service.deleteRawMaterial(code);
		return result == true ? new ResponseEntity<String>("success", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping("/search/raw_material")
	public ResponseEntity<List<RawMaterialVO>> searchRawMaterial(@RequestBody String rawName) {
		log.info(rawName);
		return ResponseEntity.ok(null);
	}

}
