package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.WHListVO;
import org.zerock.mapper.WHManageMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@AllArgsConstructor
@Service
@Log4j
public class WHServiceImpl implements WHService {

	private WHManageMapper mapper;
	
	@Override
	public int register(WHListVO vo) {
		// TODO Auto-generated method stub
		return mapper.register(vo);
	}

	@Override
	public int update(WHListVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo);
	}

	@Override
	public int delete(int code) {
		// TODO Auto-generated method stub
		return mapper.delete(code);
	}

	@Override
	public WHListVO get(int code) {
		// TODO Auto-generated method stub
		return mapper.get(code);
	}

	@Override
	public List<WHListVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

}
