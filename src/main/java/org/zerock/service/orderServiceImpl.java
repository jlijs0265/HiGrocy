package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.ProductVO;
import org.zerock.domain.accountVO;
import org.zerock.domain.orderRecordVO;
import org.zerock.mapper.orderRecordMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor

public class orderServiceImpl implements orderService {
	private orderRecordMapper mapper;

	@Override
	public List<orderRecordVO> getList(){
		return null;
		
	}

	@Override
	public boolean insert(orderRecordVO vo) {
		return false;
	}

	@Override
	public List<ProductVO> getProductList() {
		return mapper.getProductList();
	}

	@Override
	public List<accountVO> getName() {
		return null;
	}
	
}
