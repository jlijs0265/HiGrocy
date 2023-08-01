package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.PMListVO;
import org.zerock.domain.ProductionMachineVO;
import org.zerock.mapper.PMListMapper;
import org.zerock.mapper.ProductionMachineMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class PMListService {
	
	@Autowired
	private PMListMapper pm_mapper;
	
	@Autowired
	private ProductionMachineMapper m_mapper;
	
	//생산기계 목록 조회
	public List<PMListVO> getPMList(){
		return pm_mapper.getList(); 
	}
	
	//생산기계 등록 - 기계코드가 기존 기계코드테이블에 존재하지 않으면 자동으로 false
	public boolean insertPMList(PMListVO vo) {
		try {
		ProductionMachineVO test = m_mapper.getPM(vo.getMachine_code());
		log.info(test.getMachine_code());
		return pm_mapper.insertPM(vo);
		}catch (Exception e) {
			return false;
		}
	}
	
	//생산기계 목록 수정
	public boolean updatePMList(PMListVO vo) {
		return pm_mapper.updatePM(vo);
	}
	
	//생산기계 목록 삭제
	public boolean deletePMList(int pm_list_code) {
		return pm_mapper.deletePM(pm_list_code);
	}

}
