package org.zerock.controller;

import java.util.ArrayList;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.BomVO;
import org.zerock.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@AllArgsConstructor
public class ProductRestController {
	
	private ProductService service;
	
	@GetMapping("/bom/{pcode}")
	public ResponseEntity<ArrayList<BomVO>> getBomList(@PathVariable int pcode) {
		log.info(pcode);
		return new ResponseEntity<ArrayList<BomVO>>(service.getBomList(pcode), HttpStatus.OK);
	}
	
	@PutMapping("/product")
	public ResponseEntity<String> updateProduct() {
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}

}
