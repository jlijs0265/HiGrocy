package org.zerock.mapper;

import java.sql.Date;
import java.util.List;

import org.zerock.domain.DateEcoVO;

public interface ESGMapper {
	
	public List<DateEcoVO> getEcoDate(Date date);
}
