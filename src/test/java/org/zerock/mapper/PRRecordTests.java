package org.zerock.mapper;


import java.sql.Date;
import java.text.SimpleDateFormat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.PRRecordVO;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PRRecordTests {
	@Autowired
	private PRRecordMapper mapper;
	
//	@Test
//	public void inserttest() {
//		PRRecordVO vo = new PRRecordVO();
//		vo.setPr_record_code(1);
//		vo.setRequest_manager("송희문");
//		log.info(mapper.insert(vo));
//	}
//	
//	@Test
//	public void updatetest() {
//		PMListVO vo = new PMListVO();
//		vo.setMachine_code(1);
//		vo.setPm_list_code(2);
//		vo.setFactory_name("마라공장지점");
//		vo.setLocation("A-16");
//		vo.setName("반죽기");
//		log.info(mapper.updatePM(vo));
//	}
//	
	
//	@Test
//	public void test() {
//		log.info(mapper.getlist());
//	}
	
	@Test
	public void test() {
		BetweenDateVO vo = new BetweenDateVO();
//		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
		vo.setStart(Date.valueOf("2023-08-01"));
		vo.setEnd(Date.valueOf("2023-08-03"));
		log.info(vo);
		log.info(mapper.getdiff(vo));
	}


}
