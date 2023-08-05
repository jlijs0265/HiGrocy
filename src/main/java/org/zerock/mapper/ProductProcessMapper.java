package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.ProductProcessVO;

public interface ProductProcessMapper {
	public List<ProductProcessVO> getlist(int product_code);
	public boolean insert(ProductProcessVO vo);
	public boolean update(ProductProcessVO vo);
	public boolean delete(int product_process_code);
}
