package org.zerock.mapper;

import static org.junit.Assert.*;

import java.sql.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BetweenDateVO;
import org.zerock.domain.orderRecordVO;

import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class orderTest {
	@Autowired
	private orderRecordMapper mapper;
	
//	@Test
//	public void test() {
//		log.info(mapper.getlist());
//	}
//
//	@Test
//	public void insertTest() {
//		orderRecordVO vo = new orderRecordVO();
//	}
//	@Test
//	public void selectTest() {
//		BetweenDateVO vo = new BetweenDateVO();
//		vo.setStart(Date.valueOf("2023-08-01"));
//		vo.setEnd(Date.valueOf("2023-08-30"));
//		log.info(mapper.selectBetween(vo));
//	}
//	
	
}
