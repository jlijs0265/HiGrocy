package org.zerock.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class WHListVO {
	//입출고 내역 코드
	private int warehousing_record_code;
	//품목 코드
	private int item_code;
	//창고 코드
	private int storage_code;
	//입출고 유형
	private String warehousing_type;
	//입출고 날짜
	private Date wr_date;
	//재고 수량
	private int amount;
	//입출고 유형별 코드
	private String warehousing_type_code;
	//유통기한
	private Date keeping_date;
}
