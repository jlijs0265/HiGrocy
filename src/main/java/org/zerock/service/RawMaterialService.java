package org.zerock.service;

import java.util.ArrayList;

import org.zerock.domain.ItemVO;
import org.zerock.domain.RawMaterialVO;

public interface RawMaterialService {
	
	ArrayList<RawMaterialVO> getRawMaterialList();
	RawMaterialVO getRawMaterial();
	boolean registerRawMaterial(RawMaterialVO vo);
	boolean updateRawMaterial(RawMaterialVO vo);
	boolean deleteRawMaterial(int code);
	ArrayList<RawMaterialVO> searchRawMaterial(String name);
	ArrayList<RawMaterialVO> searchRawCode(int raw_materials_code);

}
