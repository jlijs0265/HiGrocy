package org.zerock.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.accountVO;
import org.zerock.mapper.acMapTest;
import org.zerock.service.accountService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class acSerTest {

	@Autowired
	private accountService service;
	
//	@Test
//	public void registerTest() {
//		
//		accountVO account = new accountVO();
//		account.setAccount_code(3);
//		account.setName("메퍼에서 서비스로");
//		account.setPhone_number("1234");
//	
//		service.register(account);
//		
//		log.info("생성된 게시물 번호 : " + account.getAccount_code());
//	
//	}	

	
	@Test
	public void getListTest() {
		service.getList().forEach(account -> log.info(account));
	}
	
//	@Test
//	public void get() {
//		log.info(service.get(1));
//	}
	
//	@Test
//	public void updateTest() {
//		
//		accountVO account = service.get(1);
//		
//		if (account == null) {
//			return;
//		}
//		
//		account.setName("백곰표");
//		log.info("modify result : " + service.modify(account));
//	}
	
//	@Test
//	public void delTest() {
//		
//		log.info("remove result : " + service.remove(1)); 
//	}

}
