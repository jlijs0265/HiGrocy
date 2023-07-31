package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.ProductionMachineVO;


public interface ProductionMachineMapper {
	public List<ProductionMachineVO> getList();
	public boolean insertPM(ProductionMachineVO vo);
	public boolean updatePM(ProductionMachineVO vo);
	public boolean deletePM(int machine_code);
}
