package org.zerock.mapper;

import static org.junit.Assert.*;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.ProductionMachineVO;
import org.zerock.domain.RawMaterialVO;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductionMachineTests {
	@Autowired
	private ProductionMachineMapper mapper;
	
	
	@Test
	public void test() {
		log.info(mapper.getList());
	}

//	@Test
//	public void inserttest() {
//		ProductionMachineVO vo = new ProductionMachineVO();
//		vo.setEnergy_usage(50);
//		vo.setGas_emissions(2);
//		vo.setType("50L반죽기");
//		log.info(mapper.insertPM(vo));
//	}
	
	@Test
	public void updatetest() {
		ProductionMachineVO vo = new ProductionMachineVO();
		vo.setMachine_code(2);
		vo.setEnergy_usage(50);
		vo.setGas_emissions(2);
		vo.setType("50L반죽기");
		log.info(mapper.updatePM(vo));
	}
}
