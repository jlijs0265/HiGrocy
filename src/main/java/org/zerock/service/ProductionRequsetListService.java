package org.zerock.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.PRListVO;
import org.zerock.domain.PRRecordVO;
import org.zerock.domain.ProductProcessVO;
import org.zerock.domain.ProductionListVO;
import org.zerock.domain.ProductionRecordVO;
import org.zerock.domain.ProductionRequestListVO;
import org.zerock.mapper.PRListMapper;
import org.zerock.mapper.PRRecordMapper;
import org.zerock.mapper.ProductProcessMapper;
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
	
	@Autowired
	private ProductProcessMapper pp_mapper;
	
	//생산요청 현황 조회
	//조회버튼 눌렀을때 서비스 생산요청 목록 - 생산 목록 해서 (날짜별로)가져와야함
	public List<ProductionRequestListVO> getProductionList(BetweenDateVO vo){
		return pr_record_mapper.getdiff(vo);
	}
	
	
	//생산 버튼 눌렀을시 작동할 서비스(트랜잭션화 필요)
	public boolean product(ProductionRecordVO vo) {
		//TODO:서비스 안넘어옴 수정필요
		log.info("service....");
		List<ProductProcessVO> PRlist = pp_mapper.getlist(vo.getItem_code());
		ProductionListVO list = new ProductionListVO(); 
		list.setItem_code(vo.getItem_code());
		list.setPR_code(vo.getPr_code());
		log.info(PRlist);
		return false; //p_record_mapper.insertPR(PRlist) & pl_mapper.insertPL(list);
	}
}
