package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.orderRecordVO;

public interface orderRecordMapper {
	
	public List<orderRecordVO> getList();
	public orderRecordVO getListOnce(int order_code);
	public boolean insertOR(orderRecordVO vo);
	public boolean updateOR(orderRecordVO vo);
	public boolean deleteOR(int order_code);
	
}
