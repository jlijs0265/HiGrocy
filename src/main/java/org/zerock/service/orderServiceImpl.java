package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.orderVO;
import org.zerock.mapper.orderMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service // service는 mvc와 관련이 없으므로 root-context에 설정
@AllArgsConstructor // 생성자가 있으면 autowired 없이도 자동으로 필드 객체 생성
@Log4j

public class orderServiceImpl implements orderService {
	private orderMapper mapper;

	@Override
	public void register(orderVO order) {
		// TODO Auto-generated method stub
		
	}
	
}
