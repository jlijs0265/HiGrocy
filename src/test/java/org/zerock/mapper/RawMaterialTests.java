package org.zerock.mapper;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class RawMaterialTests {
	@Autowired
	private RawMaterialMapper mapper;
	
	
//	@Test
//	public void test() {
//		log.info(mapper.getlist());
//	}
	
	

//	@Test
//	public void inserttest() {
//		
//		ItemVO item = new ItemVO();
//		item.setItem_code(1);
//		item.setType("원자재");
//		mapper.insertItem(item);
//		
//		RawMaterialVO vo = new RawMaterialVO();
//		vo.setType("원자재");
//		vo.setName("인스턴트 드라이 이스트");
//		vo.setOrigin("프랑스");
//		vo.setRenewability("재생가능한원부자재");
//		vo.setStandard_quantity(25);
//		vo.setUnit("kg");
//		vo.setItem_code(item);
//		log.info(mapper.insertRawMaterial(vo));
//	}
//
	
//	@Test
//	public void updatetest() { 
//		RawMaterialVO vo = new RawMaterialVO();
//		vo.setRaw_materials_code(2);
//		vo.setType("원자재");
//		vo.setName("밀가루");
//		vo.setOrigin("국내산");
//		vo.setRenewability("재생가능한원부자재");
//		vo.setStandard_quantity(25);
//		vo.setUnit("kg");
//		log.info(mapper.updateRawMaterial(vo));
//	}
	
//	@Test
//	public void getRawMaterialList() {
//		log.info(Arrays.toString(mapper.getlist().toArray()));
//	}
	
//	@Test
//	public void getRawMaterialList() {
//		Criteria cri = new Criteria();
//		cri.setKeyword("A");
//		cri.setType("NC");
//		List<RawMaterialVO> list = mapper.getList(cri);
//		list.forEach(raw -> log.info(list));
//	}
	
}
