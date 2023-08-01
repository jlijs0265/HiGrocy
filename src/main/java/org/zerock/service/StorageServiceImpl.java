package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.StorageVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class StorageServiceImpl implements StorageService {

	@Override
	public List<StorageVO> getList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int register(StorageVO vo) {
		// TODO Auto-generated method stub
		log.info("vo............."+vo);
		
		return 0;
	}

	@Override
	public int update(Long code) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int code) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public StorageVO get() {
		// TODO Auto-generated method stub
		return null;
	}

}
