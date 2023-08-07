package org.zerock.mapper;

import java.util.ArrayList;
import java.util.List;

import org.zerock.domain.ItemVO;
import org.zerock.domain.RawMaterialVO;

public interface RawMaterialMapper {
	
	public boolean registerItem(ItemVO item);
	public ArrayList<RawMaterialVO> getlist();
	public RawMaterialVO selectOnce(int item_code);
	public boolean registerRawMaterial(RawMaterialVO vo);
	public boolean updateRawMaterial(RawMaterialVO vo);
	public boolean deleteRawMaterial(int raw_materials_code);
	public ArrayList<RawMaterialVO> searchRawMaterial(String name);
}
