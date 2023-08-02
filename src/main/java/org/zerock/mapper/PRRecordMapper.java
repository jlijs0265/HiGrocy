package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.PRRecordVO;
import org.zerock.domain.ProductionRecordVO;

public interface PRRecordMapper {
	public List<PRRecordVO> getlist();
	public boolean insert(PRRecordVO vo);
	public List<PRRecordVO> getdiff(BetweenDateVO vo);

}
