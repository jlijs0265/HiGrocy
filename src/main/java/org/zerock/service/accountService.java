package org.zerock.service;

import java.util.List;

import org.zerock.domain.accountVO;

public interface accountService {
	
	public void register(accountVO account);
	
	public accountVO get(int account_code);
	
	public int modify(accountVO account);
	
	public int remove(int account_code);
	
	public List<accountVO> getList();
	
}
