package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.PMListVO;


public interface PMListMapper {
	public List<PMListVO> getList();
	public boolean insertPM(PMListVO vo);
	public boolean updatePM(PMListVO vo);
	public boolean deletePM(int pm_list_code);
}
