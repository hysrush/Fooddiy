package kr.co.bit.menu.service;

import java.util.List;

import kr.co.bit.vo.CartVO;

public interface CartService {
	
	List<CartVO> selectAllCart(CartVO cartVO);
	CartVO selectOneCart();
	void insertCart(CartVO cartVO);
	void updateCart(CartVO cartVO);
	void updateProductQty(CartVO cartVO);
	void deleteCartById(String id);
	void deleteCartByNo(CartVO cartVO);
	//최근주문 내역
	List<CartVO> selectMenu(String id);
	List<CartVO> cartDelete(CartVO vo);
}
