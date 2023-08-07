package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.PRRecordVO;
import org.zerock.domain.ProductVO;
import org.zerock.domain.ProductionRequestListVO;

public interface PRRecordMapper {
	
	public List<PRRecordVO> getlist();
	public boolean register(PRRecordVO vo);
	public List<ProductionRequestListVO> getdiff(BetweenDateVO vo);
	public List<ProductVO> getProductList();
	public List<Integer> getRawCodeList(int product_code);
	public boolean insertPrList(ProductionRequestListVO vo);
	
}
