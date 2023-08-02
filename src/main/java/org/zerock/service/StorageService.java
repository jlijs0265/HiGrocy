package org.zerock.service;

import java.util.List;

import org.zerock.domain.StorageVO;

public interface StorageService {
	int register(StorageVO vo);
	int update(StorageVO vo);
	int delete(int code);
	StorageVO get(int code);
	List<StorageVO> getList();
}
