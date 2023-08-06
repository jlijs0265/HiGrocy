package org.zerock.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.BomVO;
import org.zerock.domain.PRListVO;
import org.zerock.domain.PRRecordVO;
import org.zerock.domain.ProductProcessVO;
import org.zerock.domain.ProductionListVO;
import org.zerock.domain.ProductionRecordVO;
import org.zerock.domain.ProductionRequestListVO;
import org.zerock.domain.WHListVO;
import org.zerock.mapper.PRListMapper;
import org.zerock.mapper.PRRecordMapper;
import org.zerock.mapper.ProductMapper;
import org.zerock.mapper.ProductProcessMapper;
import org.zerock.mapper.ProductionListMapper;
import org.zerock.mapper.ProductionRecordMapper;
import org.zerock.mapper.WHManageMapper;

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
	
	@Autowired
	private ProductMapper bom_mapper;
	
	@Autowired
	private WHManageMapper WH_mapper;
	
	//생산요청 현황 조회
	//조회버튼 눌렀을때 서비스 생산요청 목록 - 생산 목록 해서 (날짜별로)가져와야함
	public List<ProductionRequestListVO> getProductionList(BetweenDateVO vo){
		return pr_record_mapper.getdiff(vo);
	}
	
	
	//생산 버튼 눌렀을시 작동할 서비스(트랜잭션화 필요)
	@Transactional
	public boolean product(ProductionRecordVO vo) {
		//해당하는 생산품을 만들기위해서 필요한 Process 조회
		List<ProductProcessVO> PRlist = pp_mapper.getlist(vo.getItem_code());
		//생산목록에 생산품과 생산요청코드를 넣음.
		ProductionListVO list = new ProductionListVO(); 
		list.setItem_code(vo.getItem_code());
		list.setPr_code(vo.getPr_code());
		//생산시간을 구하기위해 수량을 따로 저장함 총생산시간(생산수량 * 프로세스타임)
		int totalUnit = vo.getUsage_time() + vo.getDefective_amount();
		int defectiveUnit = vo.getDefective_amount();
		pl_mapper.insertPL(list);
		log.info(PRlist);
		//생산이력의 경우 기계별로 남겨야하기 때문에 기계별로 남김.
		for(ProductProcessVO pp:PRlist) {
			vo.setMachine_code(pp.getMachine_code());
			vo.setUsage_time(totalUnit * pp.getProcess_time());
			log.info(vo);
			p_record_mapper.insertPR(vo);
		}
		//생산품의 원자재량 조회
		List<BomVO> bomlist = bom_mapper.getBomList(vo.getItem_code());
		//원자재 출고 처리
		WHListVO whvo = new WHListVO();
		whvo.setKeeping_date(null);
		whvo.setStorage_code(1);
		whvo.setWarehousing_type_code("P-"+vo.getPr_code());
		whvo.setWarehousing_type("출고");
		for(BomVO bom:bomlist) {
			whvo.setItem_code(bom.getRaw_materials_code());
			whvo.setAmount(bom.getAmount()*totalUnit);
			WH_mapper.register(whvo);
		}
		//생산품 입고 처리
		whvo.setWarehousing_type("입고");
		whvo.setItem_code(vo.getItem_code());
		whvo.setAmount(totalUnit-defectiveUnit);
		WH_mapper.register(whvo);


		return true; 
	}
}
