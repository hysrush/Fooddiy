package kr.co.bit.dao;

import java.util.List;

import kr.co.bit.vo.OrderVO;

public interface OrderDAO {
	
	List<OrderVO> selectAll(String storeName);
	List<OrderVO> selectById(String id);
	List<OrderVO> selectByDate(String date);
	void insert(OrderVO orderVO);
	void delete(String id);
}
