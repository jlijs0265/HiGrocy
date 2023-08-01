package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ProductionMachineVO;
import org.zerock.mapper.ProductionMachineMapper;

@Service
public class PMService {
	
	@Autowired
	private ProductionMachineMapper mapper;
	
	//기계 목록 조회
	public List<ProductionMachineVO> getPM() {
		return mapper.getList();
	}
	
	//기계 목록 등록
	public boolean insertPM(ProductionMachineVO vo) {
		return mapper.insertPM(vo);
	}
	
	//기계 목록 수정
	public boolean updatePM(ProductionMachineVO vo) {
		return mapper.updatePM(vo);
	}
	
	//기계 목록 삭제
	public boolean deletePM(int machine_code) {
		return mapper.deletePM(machine_code);
	}
		
}
