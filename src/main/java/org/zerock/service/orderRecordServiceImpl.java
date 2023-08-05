package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.ProductVO;
import org.zerock.domain.accountVO;
import org.zerock.domain.orderRecordVO;
import org.zerock.mapper.orderRecordMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor

public class orderRecordServiceImpl implements orderRecordService {
	private orderRecordMapper mapper;

	@Override
	public boolean insert(orderRecordVO vo) {
		return mapper.insertOR(vo);
	}
}
