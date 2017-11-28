package kr.co.bit.menu.service;

import java.util.List;

import kr.co.bit.menu.vo.CartVO;

public interface CartService {
	
	List<CartVO> selectAllCart(CartVO cartVO);
	CartVO selectOneCart();
	void insertCart(CartVO cartVO);
	void updateCart(CartVO cartVO);
	void deleteCart(CartVO cartVO);
	
}
