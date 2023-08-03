package org.zerock.mapper;

import static org.junit.Assert.*;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.ProductProcessVO;
import org.zerock.domain.RawMaterialVO;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductProcessTests {
	@Autowired
	private ProductProcessMapper mapper;
	
	
	@Test
	public void test() {
		log.info(mapper.getlist());
	}

//	@Test
//	public void inserttest() {
//		ProductProcessVO vo = new ProductProcessVO();
//		vo.setMachine_code(1);
//		vo.setProcess_order(1);
//		vo.setProcess_time(5);
//		vo.setProduct_code(19);
//		log.info(mapper.insert(vo));
//	}
//	
//	@Test
//	public void updatetest() {
//		ProductProcessVO vo = new ProductProcessVO();
//		vo.setProduct_process_code(2);
//		vo.setMachine_code(3);
//		vo.setProcess_order(2);
//		vo.setProcess_time(40);
//		vo.setProduct_code(19);
//		log.info(mapper.update(vo));
//	}
//	@Test
//	public void updatetest2() {
//		ProductProcessVO vo = new ProductProcessVO();
//		vo.setProduct_process_code(3);
//		vo.setMachine_code(21);
//		vo.setProcess_order(3);
//		vo.setProcess_time(10);
//		vo.setProduct_code(19);
//		log.info(mapper.update(vo));
//	}
//	@Test
//	public void updatetest3() {
//		ProductProcessVO vo = new ProductProcessVO();
//		vo.setProduct_process_code(4);
//		vo.setMachine_code(2);
//		vo.setProcess_order(4);
//		vo.setProcess_time(15);
//		vo.setProduct_code(19);
//		log.info(mapper.update(vo));
//	}
	@Test
	public void inserttest1() {
		ProductProcessVO vo = new ProductProcessVO();
		vo.setMachine_code(4);
		vo.setProcess_order(5);
		vo.setProcess_time(2);
		vo.setProduct_code(19);
		log.info(mapper.insert(vo));
	}
	
}
