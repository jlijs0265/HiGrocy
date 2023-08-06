package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.accountVO;
import org.zerock.domain.orderListVO;
import org.zerock.domain.orderRecordVO;

public interface orderRecordMapper {
	
	public boolean insertOR(orderRecordVO vo);
	public boolean insertAccount(accountVO account);
	


}
