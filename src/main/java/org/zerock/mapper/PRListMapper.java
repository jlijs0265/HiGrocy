package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.PRListVO;

public interface PRListMapper {
	public List<PRListVO> getlist();
	public boolean insert(PRListVO vo);
}
