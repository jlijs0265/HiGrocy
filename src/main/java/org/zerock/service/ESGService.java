package org.zerock.service;

import java.sql.Date;
import java.util.List;

import org.zerock.domain.DateEcoVO;

public interface ESGService {
	public List<DateEcoVO> getEcoDate(Date date);
}
