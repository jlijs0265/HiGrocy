package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.ProductionRecordVO;


public interface ProductionRecordMapper {
	public List<ProductionRecordVO> getList();
	public ProductionRecordVO getListOnce(int production_record_code);
	public boolean insertPR(ProductionRecordVO vo);
}
