package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.PRRecordVO;
import org.zerock.domain.ProductVO;
import org.zerock.domain.ProductionRequestListVO;
import org.zerock.mapper.PRRecordMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class PRRecordServiceImpl implements PRRecordService{
	
	private PRRecordMapper mapper;

	@Override
	public List<PRRecordVO> getlist() {
		return null;
	}

	@Override
	public boolean insert(PRRecordVO vo) {
		return false;
	}

	@Override
	public List<ProductionRequestListVO> getdiff(BetweenDateVO vo) {
		return null;
	}

	@Override
	public List<ProductVO> getProductList() {
		return mapper.getProductList();
	}
	
	@Override
	public List<Integer> getRawCodeList(int product_code) {
		
		return null;
	}
	
	
	

}
