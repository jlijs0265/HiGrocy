package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.orderVO;

public interface orderMapper {
	
	public List<orderVO> getList();
	public boolean insert(orderVO vo);
	
	public List<ProductVO> getProductList();

	
}
