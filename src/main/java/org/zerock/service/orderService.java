package org.zerock.service;

import java.util.List;

import org.zerock.domain.ProductVO;
import org.zerock.domain.accountVO;
import org.zerock.domain.orderRecordVO;
import org.zerock.domain.orderRecordVO;

public interface orderService {
	
	public List<orderRecordVO> getList();
	public boolean insert(orderRecordVO vo);
	public List<ProductVO> getProductList();
	public List<accountVO> getName();
	
}
