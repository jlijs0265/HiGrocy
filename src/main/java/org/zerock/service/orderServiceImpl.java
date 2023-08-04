package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.ProductVO;
import org.zerock.domain.accountVO;
import org.zerock.domain.orderVO;
import org.zerock.mapper.orderMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor

public class orderServiceImpl implements orderService {
	private orderMapper mapper;

	@Override
	public List<orderVO> getList(){
		return null;
		
	}

	@Override
	public boolean insert(orderVO vo) {
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
