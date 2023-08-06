package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.ItemVO;
import org.zerock.domain.TotalListVO;
import org.zerock.domain.orderListVO;
import org.zerock.mapper.orderListMapper;
import org.zerock.mapper.orderRecordMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class orderRecordServiceImpl implements orderRecordService {

	@Autowired
	private orderListMapper ol_mapper;
	
	@Autowired
	private orderRecordMapper or_mapper;
	
	@Override
	@Transactional
	public boolean insertOL(TotalListVO vo) {
		or_mapper.insertOR(vo.getOrderRecord());
		for (orderListVO v : vo.getOrderList())
		{
			ol_mapper.insertOL(v);
		}
		return true;
	}


}
