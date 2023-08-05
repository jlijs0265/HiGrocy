package org.zerock.service;

import java.util.List;

import org.zerock.domain.ProductVO;
import org.zerock.domain.accountVO;
import org.zerock.domain.orderVO;
import org.zerock.domain.orderVO;

public interface orderService {
	
	public List<orderVO> getList();
	public boolean insert(orderVO vo);
	public List<ProductVO> getProductList();
	public List<accountVO> getName();
	
}
