package org.zerock.domain;

import java.util.List;

import lombok.Data;

@Data
public class TotalListVO {
	List<orderListVO> orderList;
	orderRecordVO orderRecord;
}