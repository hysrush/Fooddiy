package kr.co.bit.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.menu.dao.CartDAO;
import kr.co.bit.menu.vo.CartVO;


@Service
public class CartServiceImp implements CartService{
	
	@Autowired
	private CartDAO dao;
	
	@Override
	public List<CartVO> selectAllCart(CartVO cartVO) {
		
		List<CartVO> cartList = dao.selectAll(cartVO);
		return cartList;
	}
	
	@Override
	public CartVO selectOneCart() {
		
		CartVO cart = dao.selectOne();
		return cart;
	}
	
	@Override
	public void insertCart(CartVO cartVO) {
		dao.insert(cartVO);
	}
	@Override
	public void updateCart(CartVO cartVO) {
		dao.update(cartVO);
	}
	
	@Override
	public void deleteCart(CartVO cartVO) {
		dao.delete(cartVO);
	}
}
