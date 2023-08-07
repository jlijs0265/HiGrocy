package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.accountVO;
import org.zerock.mapper.accountMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class accountServiceImpl implements accountService {
	
	@Autowired
	private accountMapper ac_mapper;
	
	
	@Override
	@Transactional
	public boolean insert(accountVO vo) {
		log.info("insert service execute..."+vo);
		return ac_mapper.insert(vo);
	}

	// 단일조회
	@Override
	public accountVO getListOnce(int account_code) {
		log.info("get!!!" + account_code);
		return ac_mapper.getListOnce(account_code);
	}

	@Override
	public boolean update(accountVO account) {
		
		return ac_mapper.update(account);
	}

	@Override
	public boolean delete(int account_code) {
		log.info("remove!!!" + account_code);
		return ac_mapper.delete(account_code);
	}

	// 전체조회
	@Override
	public List<accountVO> getList() {
		
		log.info("getlist!!!");
		
		return ac_mapper.getList();
	}
	
	
}
