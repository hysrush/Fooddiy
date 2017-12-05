package kr.co.bit.menu.service;

import java.util.List;

import kr.co.bit.menu.vo.CartStoreVO;

public interface CartStoreService {
	
	List<CartStoreVO> selectOneCartStore(String id);
	void insertCartStore(CartStoreVO cartStoreVO);
	void updateCartStore(CartStoreVO cartStoreVO);
	void deleteCartStore(CartStoreVO cartStoreVO);
	
}
