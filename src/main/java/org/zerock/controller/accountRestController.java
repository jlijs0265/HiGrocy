package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.accountVO;
import org.zerock.service.accountService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@AllArgsConstructor

public class accountRestController {

	@Autowired
	private accountService service;

	
	@PostMapping(value = "/account/resister", consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Object> insertAccount(@RequestBody accountVO vo) {
		log.info("Storage register..........");
		log.info("vo입니다 : " + vo);
		return ResponseEntity.ok(service.insert(vo));
	}

	
	@PutMapping(value = "/account/update", consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Object> updateAccount(@RequestBody accountVO vo) {
		log.info("Storage update..........");
		log.info("vo입니다 : " + vo);
		return ResponseEntity.ok(service.update(vo));
	}
	
	@DeleteMapping(value="/account/delete", consumes = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Object> deleteAccount(@RequestBody int account_code) {
		log.info("Storage delete........code:"+account_code);

		  return ResponseEntity.ok(service.delete(account_code));
		 
	}
	
	
}
