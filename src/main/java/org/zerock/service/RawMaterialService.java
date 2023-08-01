package org.zerock.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ItemVO;
import org.zerock.domain.RawMaterialVO;
import org.zerock.mapper.RawMaterialMapper;

@Service
public class RawMaterialService {
	
	@Autowired
	private RawMaterialMapper mapper;
	
	// 품목 등록
	public boolean insertItem(ItemVO item) {
		return mapper.insertItem(item);
	}
	
	// 원재료 목록 리스트 불러오기
	public ArrayList<RawMaterialVO> getRawMaterialList() {
		return null;
	}
	
	// 원재료 등록
	 public boolean insertRawMaterial(RawMaterialVO vo) {
		 return mapper.insertRawMaterial(vo);
	 }
	
	// 원재료 수정
	 public boolean updateRawMaterial(RawMaterialVO vo) {
		 
		 return true;
	 }
	
	// 원재료 삭제
	 public boolean deleteRawMatetial() {
		 return true;
	 }
	 

}
