package org.zerock.controller;

import java.util.ArrayList;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.BomVO;
import org.zerock.domain.ProductVO;
import org.zerock.service.ProductService;

import com.fasterxml.jackson.databind.ObjectMapper;

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
	public ResponseEntity<String> updateProduct(@RequestBody ProductVO vo) {
		log.info("product update~~~~~~~~");
		log.info(vo);
		boolean result = service.updateProduct(vo);
//		boolean result = true;
		return result == true ? new ResponseEntity<String>("success", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@DeleteMapping("/bom/{product_code}")
	public ResponseEntity<String> deleteBom(@PathVariable int product_code) {
		log.info("bom delete~~~~~~~~");
		boolean result = service.deleteBom(product_code);
//		boolean result = true;
		return result == true ? new ResponseEntity<String>("success", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@PostMapping("/bom/{product_code}")
	public ResponseEntity<String> registerBom(@PathVariable int product_code , @RequestParam String bomList) {
		log.info("bom insert~~~~~~~~");
		log.info(bomList);
		boolean result = false;
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			BomVO[] bomArray = objectMapper.readValue(bomList, BomVO[].class);
			for (BomVO item : bomArray) {
				item.setProduct_code(product_code);
				result = service.updateBom(item);
//				log.info(item);
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result == true ? new ResponseEntity<String>("success", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@DeleteMapping("/product/{product_code}")
	public ResponseEntity<String> deleteProduct(@PathVariable int product_code) {
		boolean result = service.deleteProduct(product_code);
		return result == true ? new ResponseEntity<String>("success", HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	

}
