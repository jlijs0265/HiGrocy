package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.ProductProcessVO;
import org.zerock.domain.ProductionMachineVO;
import org.zerock.mapper.ProductProcessMapper;
import org.zerock.mapper.ProductionMachineMapper;

@Service
public class ProductProcessService {
	
	@Autowired
	private ProductProcessMapper mapper;
	
	//생산공정 리스트 조회
	public List<ProductProcessVO> getlist(int product_code) {
		return mapper.getlist(product_code);
	}
	
	//생산공정 등록
	@Transactional
	public boolean insert(List<ProductProcessVO> vo) {
		for(ProductProcessVO v : vo) {
			mapper.insert(v);
		}
		return true;
	}
	
	//생산공정 수정
	public boolean update(ProductProcessVO vo) {
		return mapper.update(vo);
	}
	
	//생산공정 삭제
	@Transactional
	public boolean delete(List<ProductProcessVO> vo) {
		for(ProductProcessVO v : vo) {
			mapper.delete(v.getProduct_process_code());
		}
		return true;
	}
		
}
