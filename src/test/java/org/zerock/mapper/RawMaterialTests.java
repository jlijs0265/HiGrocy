package org.zerock.mapper;

import static org.junit.Assert.*;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.RawMaterialVO;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class RawMaterialTests {
	@Autowired
	private RawMaterialMapper mapper;
	
	
	@Test
	public void test() {
		log.info(mapper.getlist());
	}

//	@Test
//	public void inserttest() {
//		RawMaterialVO vo = new RawMaterialVO();
//		vo.setClassification("원자재");
//		vo.setMaterials_name("인스턴트 드라이 이스트");
//		vo.setOrigin("프랑스");
//		vo.setRenewability("재생가능한원부자재");
//		vo.setStandard_quantity(25);
//		vo.setUnit("kg");
//		log.info(mapper.insertRawMaterial(vo));
//	}
//	
//	@Test
//	public void updatetest() {
//		RawMaterialVO vo = new RawMaterialVO();
//		vo.setClassification("원자재");
//		vo.setMaterials_name("밀가루");
//		vo.setOrigin("국내산");
//		vo.setRenewability("재생가능한원부자재");
//		vo.setStandard_quantity(25);
//		vo.setUnit("kg");
//		log.info(mapper.insertRawMaterial(vo));
//	}
}
