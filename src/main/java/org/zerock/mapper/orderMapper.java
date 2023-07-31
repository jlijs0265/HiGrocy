package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.orderVO;

public interface orderMapper {
	public List<orderVO> getlist();
	public boolean insertOrder(orderVO vo);
	
}
