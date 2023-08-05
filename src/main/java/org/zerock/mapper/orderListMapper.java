package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.orderListVO;



public interface orderListMapper {
	
	public List<orderListVO> getList();
	public orderListVO getListOnce(int order_code);
	public boolean insertOL(orderListVO vo);
	public boolean updateOL(orderListVO vo);
	public boolean deleteOL(int order_code);
	
}
