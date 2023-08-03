package org.zerock.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.PRListVO;
import org.zerock.domain.PRRecordVO;
import org.zerock.domain.ProductionListVO;
import org.zerock.domain.ProductionRecordVO;
import org.zerock.domain.ProductionRequestListVO;
import org.zerock.mapper.PRListMapper;
import org.zerock.mapper.PRRecordMapper;
import org.zerock.mapper.ProductionListMapper;
import org.zerock.mapper.ProductionRecordMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ProductionRequsetListService {
	
	@Autowired
	private PRRecordMapper pr_record_mapper;
	
	@Autowired
	private ProductionListMapper pl_mapper;
	
	@Autowired
	private ProductionRecordMapper p_record_mapper;
	
	//생산요청 현황 조회
	//조회버튼 눌렀을때 서비스 생산요청 목록 - 생산 목록 해서 (날짜별로)가져와야함
	public List<ProductionRequestListVO> getProductionList(BetweenDateVO vo){
		return pr_record_mapper.getdiff(vo);
	}
	
	
	//생산 버튼 눌렀을시 작동할 서비스(트랜잭션화 필요)
	@Transactional
	public boolean product(ProductionRecordVO vo) {
		ProductionListVO list = new ProductionListVO(); 
		list.setItem_code(vo.getItem_code());
		list.setPR_code(vo.getPR_code());
		return p_record_mapper.insertPR(vo) & pl_mapper.insertPL(list);
	}
}
