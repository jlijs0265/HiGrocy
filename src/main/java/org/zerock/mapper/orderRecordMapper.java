package org.zerock.mapper;

import org.zerock.domain.accountVO;
import org.zerock.domain.orderRecordVO;

public interface orderRecordMapper {
	
	public boolean insertOR(orderRecordVO vo);
	public boolean insertAccount(accountVO account);

}
