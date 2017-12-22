package kr.co.bit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.MemberOrderDAO;
import kr.co.bit.dao.OrderDAO;
import kr.co.bit.vo.OrderVO;

@Service
public class OrderServiceImp implements OrderService{

	
	@Autowired
	private OrderDAO dao;
	
	@Autowired
	private MemberOrderDAO mdao;
	
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
		
		if(orderVO.getId().equals("비회원")) {
			dao.insert(orderVO);
			return;
		}
		
		dao.insert(orderVO);
		mdao.updateCoupon(orderVO.getId());
		
	}
	
	@Override
	public void deleteOrder(String id) {
		dao.delete(id);
	}
}
