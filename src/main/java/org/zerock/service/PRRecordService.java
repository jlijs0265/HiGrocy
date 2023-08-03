package org.zerock.service;

import java.util.List;

import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.PRRecordVO;
import org.zerock.domain.ProductVO;
import org.zerock.domain.ProductionRequestListVO;

public interface PRRecordService {
	
	public List<PRRecordVO> getlist();
	public boolean insert(PRRecordVO vo);
	public List<ProductionRequestListVO> getdiff(BetweenDateVO vo);
	public List<ProductVO> getProductList();
	public List<Integer> getRawCodeList(int product_code);
	
}
