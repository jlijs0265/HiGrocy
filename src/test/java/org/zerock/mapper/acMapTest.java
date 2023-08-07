package org.zerock.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.accountVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class acMapTest {

	@Autowired
	private accountMapper mapper;
	
//	@Test
//	public void insertTest() {
//		accountVO vo = new accountVO();
//		vo.setAccount_code(1);
//		vo.setName("°õÇ¥");
//		vo.setPhone_number("010-1432-5678");
//		
//		mapper.insert(vo);
//	}
//	
	
//	@Test
//	public void readTest() {
//		
//		accountVO account = mapper.read(1);
//		
//		log.info(account);
//		
//	}
	
//	@Test
//	public void getTest() {
//		mapper.getList().forEach(account -> log.info(account));
//	}
	

//	@Test
//	public void update() {
//		accountVO account = new accountVO();
//		
//		account.setAccount_code(1);
//		account.setName("¸»Ç¥");
//		account.setPhone_number(01012341231);
//	}
//	
	
	
//	@Test
//	public void delTest() {
//		log.info("del_code : " + mapper.delete(1));
//	}
//	

}
