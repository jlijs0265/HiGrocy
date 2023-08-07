package org.zerock.service;

import static org.junit.Assert.*;

import java.sql.Date;
import java.time.LocalDate;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ESGServiceTests {

	@Autowired
	private ESGService service;
	
	/*ESGServiceTests Complete*/
	@Test
	public void getEcoDate() {
		log.info("EcoDate ServiceTest..."+ service.getEcoDate(Date.valueOf(LocalDate.now())));
	}

}
