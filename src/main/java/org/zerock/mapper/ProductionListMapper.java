package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.ProductionListVO;


public interface ProductionListMapper {
	public List<ProductionListVO> getList();
	public boolean insertPL(ProductionListVO vo);

}
