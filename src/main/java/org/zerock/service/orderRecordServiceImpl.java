package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.orderRecordVO;
import org.zerock.mapper.orderRecordMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class orderRecordServiceImpl implements orderRecordService {
	private orderRecordMapper mapper;

	@Override
	public boolean insert(orderRecordVO vo) {
		return mapper.insertOR(vo);
	}

}
