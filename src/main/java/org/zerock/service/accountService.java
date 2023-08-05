package org.zerock.service;

import java.util.List;

import org.zerock.domain.accountVO;

public interface accountService {
	
	public boolean insert(accountVO vo);
	
	public accountVO getListOnce(int account_code);
	
	public boolean update(accountVO vo);
	
	public boolean delete(int account_code);
	
	public List<accountVO> getList();
	
}
