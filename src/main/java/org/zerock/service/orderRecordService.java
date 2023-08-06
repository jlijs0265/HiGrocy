package org.zerock.service;

import java.util.List;

import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.ProductVO;
import org.zerock.domain.accountVO;
import org.zerock.domain.orderRecordVO;
import org.zerock.domain.orderRecordVO;

public interface orderRecordService {

	public boolean insert(orderRecordVO vo);
	public List<orderRecordVO> selectDate(BetweenDateVO vo);

}
