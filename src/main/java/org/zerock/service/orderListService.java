package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.ItemVO;
import org.zerock.domain.orderListVO;

@Service
public interface orderListService {

	public boolean insertOL(orderListVO vo);
	boolean registerItem(ItemVO vo);
	
}
