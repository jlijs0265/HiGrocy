package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.RawMaterialVO;

public interface RawMaterialMapper {
	public List<RawMaterialVO> getlist();
	public boolean insertRawMaterial(RawMaterialVO vo);
}
