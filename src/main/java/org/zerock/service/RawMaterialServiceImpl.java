package org.zerock.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ItemVO;
import org.zerock.domain.RawMaterialVO;
import org.zerock.mapper.RawMaterialMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class RawMaterialServiceImpl implements RawMaterialService{
	
	@Autowired
	private RawMaterialMapper mapper;
	
	// 원재료 목록 조회
	@Override
	public ArrayList<RawMaterialVO> getRawMaterialList() {
		return mapper.getlist();
	}

	// 원재료 하나 조회
	@Override
	public RawMaterialVO getRawMaterial() {
		return null;
	}

	// 원재료 등록
	@Override
	public boolean registerRawMaterial(RawMaterialVO vo) {
		// 품목 먼저 등록 후 원재료 등록
		ItemVO item = new ItemVO();
		item.setType("원부자재");
		log.info(item);
		if(mapper.registerItem(item)) {
			return mapper.registerRawMaterial(vo);
		} else {
			return false;
		}
	}

	// 원재료 수정
	@Override
	public boolean updateRawMaterial(RawMaterialVO vo) {
		return mapper.updateRawMaterial(vo);
	}

	// 원재료 삭제
	@Override
	public boolean deleteRawMaterial(int code) {
		return mapper.deleteRawMaterial(code);
	}
	
	
	 

}
