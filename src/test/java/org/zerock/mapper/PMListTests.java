package org.zerock.mapper;

import static org.junit.Assert.*;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.PMListVO;
import org.zerock.domain.ProductionMachineVO;
import org.zerock.domain.RawMaterialVO;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PMListTests {
	@Autowired
	private PMListMapper mapper;
	
//	@Test
//	public void inserttest() {
//		PMListVO vo = new PMListVO();
//		vo.setFactory_name("마라공장지점");
//		vo.setLocation("A-15");
//		vo.setName("반죽기");
//		vo.setMachine_code(1);
//		log.info(mapper.insertPM(vo));
//	}
//	
	@Test
	public void updatetest() {
		PMListVO vo = new PMListVO();
		vo.setMachine_code(1);
		vo.setPm_list_code(2);
		vo.setFactory_name("마라공장지점");
		vo.setLocation("A-16");
		vo.setName("반죽기");
		log.info(mapper.updatePM(vo));
	}
	
	
	@Test
	public void test() {
		log.info(mapper.getList());
	}


}
