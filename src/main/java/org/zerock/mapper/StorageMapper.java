package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.StorageVO;

public interface StorageMapper {
	
	//등록
	public int register(StorageVO vo);
	//수정
	public int update(StorageVO vo);
	//삭제
	public int delete(int code);
	//단일 조회
	public StorageVO get(int code);
	//전체 조회
	public List<StorageVO> getList();

}
