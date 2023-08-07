package org.zerock.mapper;

import static org.junit.Assert.*;


import java.sql.Date;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.WHListVO;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class WHManageMapperTests {

	@Autowired
	private WHManageMapper mapper;
	
		/*TEST COMPLETE*/
//@Test
//public void registerWH() {
//    WHListVO vo = new WHListVO();
//    log.info("registerMapper Tests...");
//
//    vo.setWarehousing_record_code(2);
//    vo.setItem_code(10);
//    vo.setStorage_code(1);
//    vo.setWarehousing_type("입고");
//    vo.setWr_date(Date.valueOf("2023-08-03")); // Java Time API 사용
//    vo.setAmount(100);
//    vo.setWarehousing_type_code("P-003");
//    vo.setKeeping_date(Date.valueOf("2023-08-03")); // Java Time API 사용
//    mapper.register(vo);
//}
//	@Test
//	public void updateWH() {
//		WHListVO vo = new WHListVO();
//		log.info("updateMapper Tests...");
//	
//	    vo.setWarehousing_record_code(1);
//	    vo.setItem_code(10);
//	    vo.setStorage_code(1);
//	    vo.setWarehousing_type("입고");
//	    vo.setWr_date(Date.valueOf("2023-08-03")); // Java Time API 사용
//	    vo.setAmount(100);
//	    vo.setWarehousing_type_code("P-002");
//	    vo.setKeeping_date(Date.valueOf("2023-08-03")); // Java Time API 사용
//	    mapper.update(vo);
//	}
//	@Test
//	public void deleteWH() {
//		log.info("deleteMapper Tests...");
//		mapper.delete(2);
//	}
//	@Test
//	public void getWH() {
//		log.info("getMapper Tests..."+mapper.get(1));
//		
//	}
//	@Test
//	public void getListWH() {
//		log.info("getListMapper Tests..."+ mapper.getList());
//	}
//		@Test
//		public void getDetailList() {
//			log.info("getDetailList mapper Tests..." + mapper.getDetailList());
//			
//		}

}
