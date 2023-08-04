package org.zerock.service;

import java.util.ArrayList;

import org.zerock.domain.BomVO;
import org.zerock.domain.ItemVO;
import org.zerock.domain.ProductVO;

public interface ProductService {
	
	ArrayList<ProductVO> getProductList();
	boolean registerItem(ItemVO vo);
	boolean registerProduct(ProductVO vo, ArrayList<BomVO> bomList);
	ArrayList<BomVO> getBomList(int product_code);
	boolean updateProduct(ProductVO vo);
	boolean deleteBom(int product_code);
	boolean updateBom(BomVO vo);
	boolean deleteProduct(int product_code);
	
}
