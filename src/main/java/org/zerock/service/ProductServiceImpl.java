package org.zerock.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.BomVO;
import org.zerock.domain.ItemVO;
import org.zerock.domain.ProductVO;
import org.zerock.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class ProductServiceImpl implements ProductService{
	
	private ProductMapper mapper;
	
	@Override
	public ArrayList<ProductVO> getProductList() {
		return mapper.getProductList();
	}

	@Override
	public boolean registerItem(ItemVO vo) {
		return false;
	}

	@Transactional
	@Override
	public boolean registerProduct(ProductVO vo, ArrayList<BomVO> bomList) {
		// 품목 등록
		ItemVO item = new ItemVO();
		item.setType("생산품");
		boolean itemResult = mapper.registerItem(item);
		// 생산품 등록
		if(itemResult) {
			int item_code = mapper.getMaxItemCode();
			vo.setItem_code(item_code);
			vo.setProduct_code(item_code);
			boolean result = mapper.registerProduct(vo);
			// bom 등록
			for(BomVO bom : bomList) {
				bom.setProduct_code(vo.getProduct_code());
				mapper.registerBom(bom);
			}
			return result;
		} else {
			return false;
		}
		
	}
	
	@Override
	public ArrayList<BomVO> getBomList(int product_code) {
		return mapper.getBomList(product_code);
	}
	
	// 생산품 수정
	@Override
	public boolean updateProduct(ProductVO vo) {
		return mapper.updateProduct(vo);
	}
	
	// bom 수정
	// bom 삭제 후, 다시 생성할 것
@Override
	public boolean deleteBom(int product_code) {
		return mapper.deleteBom(product_code);
	}
	
	@Override
	public boolean updateBom(BomVO vo) {
		return mapper.registerBom(vo);
	}
	
	@Override
	public boolean deleteProduct(int product_code) {
		return mapper.deleteProduct(product_code);
	}
	
	@Override
	public ArrayList<ProductVO> searchProduct(String name) {
		return mapper.searchProduct(name);
	}

}
