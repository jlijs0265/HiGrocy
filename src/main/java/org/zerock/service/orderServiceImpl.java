package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.orderVO;
import org.zerock.mapper.orderMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service // service�� mvc�� ������ �����Ƿ� root-context�� ����
@AllArgsConstructor // �����ڰ� ������ autowired ���̵� �ڵ����� �ʵ� ��ü ����
@Log4j

public class orderServiceImpl implements orderService {
	private orderMapper mapper;

	@Override
	public void register(orderVO order) {
		// TODO Auto-generated method stub
		
	}
	
}
