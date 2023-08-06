package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.WHDetailVO;
import org.zerock.domain.WHListVO;

public interface WHManageMapper {
	// 등록
	public int register(WHListVO vo);

	// 수정
	public int update(WHListVO vo);

	// 삭제
	public int delete(int code);

	// 단일 조회
	public WHListVO get(int code);

	// 전체 조회
	public List<WHListVO> getList();
	
	//품목 재고 조회
	public List<WHDetailVO> getDetailList();
}
