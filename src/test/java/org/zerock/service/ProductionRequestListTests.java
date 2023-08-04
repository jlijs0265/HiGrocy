package org.zerock.service;

import static org.junit.Assert.*;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.ProductionMachineVO;
import org.zerock.domain.ProductionRecordVO;
import org.zerock.domain.RawMaterialVO;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductionRequestListTests {
	@Autowired
	private ProductionRequsetListService service;
	
	
	@Test
	public void test() {
		ProductionRecordVO vo = new ProductionRecordVO();
		vo.setItem_code(19);
		vo.setDefective_amount(10);
		vo.setMachine_code(1);
		vo.setPr_code(1);
		vo.setProduction_record_code(1);
		vo.setUsage_time(10);
		log.info(service.product(vo));
	}
	

//	@Test
//	public void inserttest() {
//		ProductionMachineVO vo = new ProductionMachineVO();
//		vo.setEnergy_usage(30);
//		vo.setGas_emissions(2);
//		vo.setType("20L숙성기");
//		log.info(service.insertPM(vo));
//	}
	
//	@Test
//	public void updatetest() {
//		ProductionMachineVO vo = new ProductionMachineVO();
//		vo.setMachine_code(2);
//		vo.setEnergy_usage(1500);
//		vo.setGas_emissions(50);
//		vo.setType("대형오븐기");
//		log.info(service.updatePM(vo));
//	}
}
