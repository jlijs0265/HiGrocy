package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.PMListVO;
import org.zerock.domain.ProductionMachineVO;
import org.zerock.service.PMListService;
import org.zerock.service.PMService;

import lombok.extern.log4j.Log4j;

@Log4j
@RestController
public class PMRestController {

	@Autowired
	private PMListService pm_service;

	@Autowired
	private PMService m_service;

	// 기계목록 상세보기
	@GetMapping("/pm/get")
	public ResponseEntity<Object> getPM(@RequestBody int machine_code) {
		log.info("pm ajax 통신..."+machine_code);
		return ResponseEntity.ok(m_service.getPMonce(machine_code));
	}

	// 기계목록 등록하기
	@PostMapping("/pm/register")
	public ResponseEntity<Object> registerPM(@RequestBody ProductionMachineVO vo) {
		log.info("pm ajax 통신..."+vo);
		return ResponseEntity.ok(m_service.insertPM(vo));
	}

	// 기계목록 수정하기
	@PutMapping("/pm/update")
	public ResponseEntity<Object> updatePM(@RequestBody ProductionMachineVO vo) {
		log.info("pm ajax 통신...");
		return ResponseEntity.ok(m_service.updatePM(vo));
	}

	// 기계목록 삭제하기
	@DeleteMapping("/pm/delete")
	public ResponseEntity<Object> deletePM(@RequestBody int machine_code) {
		log.info("pm ajax 통신...");
		return ResponseEntity.ok(m_service.deletePM(machine_code));
	}

	// 생산기계목록 상세보기
	@GetMapping("/pmlist/get")
	public ResponseEntity<Object> getPMlist(@RequestBody int pm_list_code) {
		log.info("pm ajax 통신...");
		return ResponseEntity.ok(pm_service.getPMListOnce(pm_list_code));
	}

	// 생산기계목록 등록하기
	@PostMapping("/pmlist/register")
	public ResponseEntity<Object> registerPMlist(@RequestBody PMListVO vo) {
		log.info("pm ajax 통신...");
		return ResponseEntity.ok(pm_service.insertPMList(vo));
	}

	// 생산기계목록 수정하기
	@PutMapping("/pmlist/update")
	public ResponseEntity<Object> updatePMlist(@RequestBody PMListVO vo) {
		log.info("pm ajax 통신...");
		return ResponseEntity.ok(pm_service.updatePMList(vo));
	}

	// 생산기계목록 삭제하기
	@DeleteMapping("/pmlist/delete")
	public ResponseEntity<Object> deletePMlist(@RequestBody int pm_list_code) {
		log.info("pm ajax 통신...");
		return ResponseEntity.ok(pm_service.deletePMList(pm_list_code));
	}

}
