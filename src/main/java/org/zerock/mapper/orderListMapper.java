package org.zerock.mapper;


import java.util.List;

import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.orderListVO;
import org.zerock.domain.orderRecordVO;

public interface orderListMapper {
	
	public boolean insertOL(orderListVO vo);
	public List<orderListVO> selectItem(int order_code);
	public List<orderRecordVO> selectBetween(BetweenDateVO vo);
	
}
