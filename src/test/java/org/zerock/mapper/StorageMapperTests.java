package org.zerock.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.StorageVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class StorageMapperTests {

	@Autowired
	private StorageMapper mapper;
	
	/*TEST Complete*/
	
//	//창고 등록
//	@Test
//	public void registerTest() {
//		log.info("register mapperTest...");
//		StorageVO vo = new StorageVO();
//		vo.setStorage_code(2);
//		vo.setName("홍익동 123번지 111창고");
//		vo.setLocation("서울특별시 성동구 홍익동 123번지");
//		vo.setManager("홍길동");
//		
//		mapper.register(vo);
//	}
//	//창고 수정
//	@Test
//	public void updateTest() {
//		StorageVO vo = new StorageVO();
//		vo.setStorage_code(2);
//		vo.setName("홍익동 123번지 111창고");
//		vo.setLocation("서울특별시 성동구 홍익동 123번지");
//		vo.setManager("박길동");
//		log.info("update mapperTest...");
//		
//		mapper.update(vo);
//		
//	}
//	//창고 삭제
//	@Test
//	public void deleteTest() {
//		log.info("delete mapperTest...");
//		StorageVO vo = new StorageVO();
//		vo.setStorage_code(3);
//		mapper.delete(vo.getStorage_code());
//	}
//	//창고 단일 조회
//	@Test
//	public void getTest() {
//		StorageVO vo = mapper.get(1);
//		
//		log.info("get mapperTest..."+ vo);
//		
//	}
//	//창고 전체 조회
//	@Test
//	public void getListTest() {
//		
//		log.info("getList mapperTest..." + mapper.getList());
//		
//	}
	
}
