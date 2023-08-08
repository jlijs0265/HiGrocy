package org.zerock.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.PRRecordVO;
import org.zerock.domain.ProductVO;
import org.zerock.domain.ProductionRequestListVO;
import org.zerock.service.PRRecordService;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RestController
@AllArgsConstructor
public class PRRecordRestController {

	private PRRecordService service;

	@GetMapping("/item")
	public ResponseEntity<List<ProductVO>> getItemList() {
		List<ProductVO> productList = service.getProductList();
		return new ResponseEntity<List<ProductVO>>(productList, HttpStatus.OK);
	}

	@PostMapping("/itemAmount")
	public String getAmount(@RequestBody String code) {
		// item_code를 받아서 BOM 조회 후, 해당 원재료의 발주목록에 있는 단가를 가져온다.
		log.info(code);

		return "okok";
	}

	@PostMapping("/pr/register")
	public ResponseEntity<String> registerPRRecord(@RequestParam String totalList) {
		log.warn(totalList);
		
		boolean result = false;
		
		// JSON 문자열 파싱
        ObjectMapper objectMapper = new ObjectMapper();
        
		try {
			JsonNode jsonNode = objectMapper.readTree(totalList);
			log.warn(totalList);
			
			String prRecord = jsonNode.get("prRecord").asText();
			String prRecordList = jsonNode.get("prRecordList").asText();
			
			log.warn(prRecord);
			log.warn(prRecordList);
			
			objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
			PRRecordVO record = objectMapper.readValue(prRecord, PRRecordVO.class);

			ProductionRequestListVO[] prRequestArray = objectMapper.readValue(prRecordList, ProductionRequestListVO[].class);
			
			result = service.register(record, Arrays.asList(prRequestArray));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.warn(result);
		return new ResponseEntity<String>(totalList, HttpStatus.OK);
	}
	
	@GetMapping("pr/price")
	public ResponseEntity<Integer> getPrice(int item_code) {
		int[] result = service.getPrice(item_code);
		int total = 0;
		for(int i = 0; i < result.length; i++) {
			total += result[i];
		}
		return new ResponseEntity<Integer>(total, HttpStatus.OK);
	}
	
}
