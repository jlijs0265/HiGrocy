package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ItemVO;
import org.zerock.domain.orderListVO;
import org.zerock.mapper.orderListMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class orderListServiceImpl implements orderListService {

	@Autowired
	private orderListMapper ol_mapper;
	
	@Override
	public boolean insertOL(orderListVO vo, ) {
		
		log.info("insert service execute..." + vo);
		return ol_mapper.insertOL(vo);
	
	
	}


}
