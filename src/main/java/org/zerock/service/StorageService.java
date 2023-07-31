package org.zerock.service;

import java.util.List;

import org.zerock.domain.StorageVO;

public interface StorageService {
	List<StorageVO> getList();
	int register(StorageVO vo);
	int update(Long code);
	int delete(Long code);
	StorageVO get();
}
