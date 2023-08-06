package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.accountVO;

public interface accountMapper {
	
	// getList
	public List<accountVO> getList();
	
	// read
	public accountVO getListOnce(int account_code);
	
	// create
	public boolean insert(accountVO vo);

	// del
	public boolean delete(int account_code);
	
	//update
	public boolean update(accountVO vo);
	
}
