package org.zerock.service;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.DateEcoVO;
import org.zerock.mapper.ESGMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class ESGServiceImpl implements ESGService {

	
	private ESGMapper mapper;
	@Override
	public List<DateEcoVO> getEcoDate(Date date) {
		// TODO Auto-generated method stub
		log.info("EcoDate Service... "+ date);
		return mapper.getEcoDate(date);
	}

}
