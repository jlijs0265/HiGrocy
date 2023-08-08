package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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

	@Transactional
	@Override
	public boolean register(PRRecordVO vo, List<ProductionRequestListVO> prList) {
		// 생산 이력을 등록함과 동시에 생산 목록을 등록해준다.
		
		boolean result1 = mapper.register(vo);
		boolean result2 = false;
		if(result1) {
			for(ProductionRequestListVO pr : prList) {
				result2 = mapper.insertPrList(pr);
			}
		}
		return result2;
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
	
	@Override
	public int[] getPrice(int item_code) {
		return mapper.getPrice(item_code);
	}
	
	

}
