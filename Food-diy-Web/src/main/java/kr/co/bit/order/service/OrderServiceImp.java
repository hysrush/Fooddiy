package kr.co.bit.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.order.dao.OrderDAO;
import kr.co.bit.order.vo.OrderVO;

@Service
public class OrderServiceImp implements OrderService{

	
	@Autowired
	private OrderDAO dao;
	
	@Override
	public List<OrderVO> selectAllOrder(String storeName) {
		List<OrderVO> allOrderList = dao.selectAll(storeName);
		return allOrderList;
	}
	
	@Override
	public List<OrderVO> selectByIdOrder(String id) {
		List<OrderVO> dateOrderList = dao.selectById(id);
		return dateOrderList;
	}
	
	@Override
	public List<OrderVO> selectByDateOrder(String date) {
		// TODO Auto-generated method stub
		List<OrderVO> idOrderList = dao.selectByDate(date);
		return idOrderList;
	}
	
	@Override
	public void insertOrder(OrderVO orderVO) {
		dao.insert(orderVO);
	}
	
	@Override
	public void deleteOrder(String id) {
		dao.delete(id);
	}
}
