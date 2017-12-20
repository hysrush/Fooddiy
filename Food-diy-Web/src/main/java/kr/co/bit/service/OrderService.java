package kr.co.bit.service;

import java.util.List;

import kr.co.bit.vo.OrderVO;

public interface OrderService {
	
	List<OrderVO> selectAllOrder(String storeName);
	List<OrderVO> selectByIdOrder(String id);
	List<OrderVO> selectByDateOrder(String date);
	void insertOrder(OrderVO orderVO);
	void deleteOrder(String id);
	
}
