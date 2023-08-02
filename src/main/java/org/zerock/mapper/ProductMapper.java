package org.zerock.mapper;

import java.util.ArrayList;

import org.zerock.domain.BomVO;
import org.zerock.domain.ItemVO;
import org.zerock.domain.ProductVO;

public interface ProductMapper {
	
	ArrayList<ProductVO> getProductList();
	boolean registerItem(ItemVO vo);
	int getMaxItemCode();
	boolean registerProduct(ProductVO vo);
	boolean registerBom(BomVO vo);
	ArrayList<BomVO> getBomList(int product_code);
	boolean updateProduct(ProductVO vo);
	boolean deleteBom(BomVO vo);

}
