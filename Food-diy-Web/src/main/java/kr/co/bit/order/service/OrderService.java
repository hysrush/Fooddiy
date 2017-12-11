package kr.co.bit.order.service;

import java.util.List;

import kr.co.bit.order.vo.OrderVO;

public interface OrderService {
	
	List<OrderVO> selectAllOrder(String storeName);
	List<OrderVO> selectByIdOrder(String id);
	List<OrderVO> selectByDateOrder(String date);
	void insertOrder(OrderVO orderVO);
	void deleteOrder(String id);
	
}
