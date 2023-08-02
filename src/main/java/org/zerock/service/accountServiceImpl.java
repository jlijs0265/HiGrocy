package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.accountVO;
import org.zerock.mapper.accountMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class accountServiceImpl implements accountService {
	
	@Autowired
	private accountMapper mapper;
	
	
	@Override
	public void register(accountVO account) {
		log.info("register!!!!!");
		mapper.insert(account);
	}

	// 단일조회
	@Override
	public accountVO get(int account_code) {
		log.info("get!!!" + account_code);
		return mapper.read(account_code);
	}

	@Override
	public int modify(accountVO account) {
		log.info("modify!!!" + account);
		return mapper.update(account);
	}

	@Override
	public int remove(int account_code) {
		log.info("remove!!!" + account_code);
		return mapper.delete(account_code);
	}

	// 전체조회
	@Override
	public List<accountVO> getList() {
		
		log.info("getlist!!!");
		
		return mapper.getList();
	}
	
	
}
