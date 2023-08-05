package org.zerock.service;

import org.zerock.domain.ItemVO;
import org.zerock.domain.orderListVO;

public interface orderListService {

	public boolean insertOL(orderListVO vo);
	boolean registerItem(ItemVO vo);
	
}
