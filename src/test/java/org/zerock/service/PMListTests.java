package org.zerock.service;

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
	private PMListService service;
	
	@Test
	public void test() {
		log.info(service.getPMList());
	}
	
	@Test
	public void getOncetest() {
		log.info(service.getPMListOnce(1));
	}
	
	//되야하는게 맞음
//	@Test
//	public void inserttruetest() {
//		PMListVO vo = new PMListVO();
//		vo.setFactory_name("마라공장지점");
//		vo.setLocation("A-10");
//		vo.setName("오븐기");
//		vo.setMachine_code(2);
//		log.info(service.insertPMList(vo));
//	}
	
	//안되는게 맞음
//	@Test
//	public void insertfalsetest() {
//		PMListVO vo = new PMListVO();
//		vo.setFactory_name("마라공장지점");
//		vo.setLocation("A-10");
//		vo.setName("오븐기");
//		vo.setMachine_code(5);
//		log.info(service.insertPMList(vo));
//	}
	
//	@Test
//	public void updatetest() {
//		PMListVO vo = new PMListVO();
//		vo.setMachine_code(3);
//		vo.setPm_list_code(5);
//		vo.setFactory_name("마라공장지점");
//		vo.setLocation("A-5");
//		vo.setName("숙성기");
//		log.info(service.updatePMList(vo));
//	}
	
	



}
