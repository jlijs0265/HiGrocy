package org.zerock.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.StorageVO;
import org.zerock.service.StorageService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/storage/*")
@Log4j
@AllArgsConstructor
public class StorageRestController {

	private StorageService service;
	
	
	  @PostMapping(value="insert/storage", consumes = MediaType.APPLICATION_JSON_VALUE) 
	  public ResponseEntity<String> register(@RequestBody StorageVO vo){ log.info("Storage register..........");
	  log.info("vo입니다 : "+vo);
	  return service.register(vo) ==1 
			  ? new ResponseEntity<>("success", HttpStatus.OK) 
			  : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); }
	 
	
	
	@PutMapping(value="storage", consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> update(){
		log.info("Storage update..........");
		
		return service.update(null) ==1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@DeleteMapping(value="storage/{code}", consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> delete(@PathVariable Long code) {
		log.info("Storage delete........code:"+code);
		
		return service.delete(code) == 1
				? new ResponseEntity<>("success",HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
