package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.orderRecordVO;


@Service
public interface orderRecordService {

	public boolean insert(orderRecordVO vo);

}
