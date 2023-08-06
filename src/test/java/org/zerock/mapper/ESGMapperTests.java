package org.zerock.mapper;

import static org.junit.Assert.*;import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.DateEcoVO;

import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ESGMapperTests {
	@Autowired
	private ESGMapper mapper;
	
	/*Mapper Test Complete*/
//	@Test
//    public void testGetList() {
//		//TODO 내일 이어서 해야 할 부분,
//		log.info("mapperTest" + mapper.getEcoDate(Date.valueOf("2023-08-04")));
//    //LocalDate.now()
//	}
}

