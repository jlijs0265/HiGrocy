package org.zerock.service;

import java.util.List;

import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.orderListVO;
import org.zerock.domain.orderRecordVO;

public interface orderListService {

	public boolean insertOL(orderListVO vo);
	public List<orderRecordVO> selectDate(BetweenDateVO vo);
	public List<orderListVO> selectItem(int order_code);
	
}
