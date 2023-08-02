package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.StorageVO;
import org.zerock.mapper.StorageMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Service
@Log4j
public class StorageServiceImpl implements StorageService {

	
	private StorageMapper mapper;
	
	@Override
	public List<StorageVO> getList() {
		log.info("getList service execute...");
		return mapper.getList();
	}

	@Override
	public int register(StorageVO vo) {
		log.info("register service execute..."+vo);
		
		return mapper.register(vo);
	}

	@Override
	public int update(StorageVO vo) {
		log.info("update service execute..."+vo);
		return mapper.update(vo);
	}

	@Override
	public int delete(int code) {
		log.info("delete service execute..."+code);
		return mapper.delete(code);
	}

	@Override
	public StorageVO get(int code) {
		log.info("get service execute..."+code);
		return mapper.get(code);
	}

}
