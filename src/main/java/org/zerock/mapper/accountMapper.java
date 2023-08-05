package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.accountVO;
import org.zerock.domain.orderRecordVO;

public interface accountMapper {
	
	// getList
	public List<accountVO> getList();
	
	// read
	public accountVO read(int account_code);
	
	// create
	public void insert(accountVO account);

	// del
	public int delete(int account_code);
	
	//update
	public int update(accountVO account);
	
}
