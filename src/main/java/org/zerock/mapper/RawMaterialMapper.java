package org.zerock.mapper;

import java.util.ArrayList;

import org.zerock.domain.ItemVO;
import org.zerock.domain.RawMaterialVO;

public interface RawMaterialMapper {
	
	public boolean registerItem(ItemVO item);
	public ArrayList<RawMaterialVO> getlist();
	public boolean registerRawMaterial(RawMaterialVO vo);
	public boolean updateRawMaterial(RawMaterialVO vo);
	public boolean deleteRawMaterial(int raw_materials_code);
	public ArrayList<RawMaterialVO> searchRawMaterial(String name);
	public ArrayList<RawMaterialVO> searchRawCode(int raw_materials_code);
}
