package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BomVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductTests {

//	@Test
//	public void test() {
//		fail("Not yet implemented");
//	}
	
	@Autowired
	private ProductMapper mapper;
	
//	@Test
//	public void productListTest() {
//		log.info(Arrays.toString(mapper.getProductList().toArray()));
//	}
	
	@Test
	public void insertProductTests() {
		/*
		 * ItemVO item = new ItemVO(); item.setType("생산품"); mapper.registerItem(item);
		 * 
		 * int product_code = mapper.getMaxItemCode(); log.info(product_code); ProductVO
		 * vo = new ProductVO(); vo.setProduct_code(product_code);
		 * vo.setItem_code(product_code); vo.setName("카스테라");
		 * mapper.registerProduct(vo);
		 */
		
		//bom 등록 
		/*
		 * BomVO bom = new BomVO(); bom.setProduct_code(10);
		 * bom.setRaw_materials_code(11); bom.setAmount(3); mapper.registerBom(bom);
		 */
		
		/*
		 * BomVO bom1 = new BomVO(); bom1.setProduct_code(10);
		 * bom1.setRaw_materials_code(13); bom1.setAmount(5); mapper.registerBom(bom1);
		 * 
		 * BomVO bom2 = new BomVO(); bom2.setProduct_code(10);
		 * bom2.setRaw_materials_code(16); bom2.setAmount(4); mapper.registerBom(bom2);
		 */
		
		
	
	}

}
