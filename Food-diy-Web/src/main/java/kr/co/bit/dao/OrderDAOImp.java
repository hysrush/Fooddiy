package kr.co.bit.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.vo.OrderVO;

@Repository
public class OrderDAOImp implements OrderDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.dao.OrderDAO.";
	
	@Override
	public List<OrderVO> selectAll(String storeName) {
		
		//지점별 전체주문 내역
		List<OrderVO> allOrderList = sqlSession.selectList(url + "selectAllOrder", storeName);
		return allOrderList;
	}
	
	@Override
	public List<OrderVO> selectById(String id) {
		
		//id별 주문 내역
		List<OrderVO> idOrderList = sqlSession.selectList(url + "selectByIdOrder",	id);
		return idOrderList;
	}
	 
	@Override
	public List<OrderVO> selectByDate(String date) {
		
		//날짜별 주문내역
		List<OrderVO> dateOrderList = sqlSession.selectList(url + "selectByDateOrder", date);
		return dateOrderList;
	}
	
	@Override
	public void insert(OrderVO orderVO) {
		System.out.println(orderVO);
		System.out.println(orderVO);
		System.out.println(orderVO);
		System.out.println(orderVO);
		System.out.println(orderVO);
		System.out.println(orderVO);
		sqlSession.insert(url + "insertOrder", orderVO);
	}
	
	@Override
	public void delete(String id) {
		sqlSession.delete(url + "deleteOrder", id);
	}

	@Override
	public void noninsert(OrderVO orderVO) {
		sqlSession.insert(url + "noninsertOrder", orderVO);
		
	}
	
	
	//주문취소
	@Override
	public void cancel(Map<String, String> info) {
		sqlSession.update(url + "cancelOrder", info);
	}
}
