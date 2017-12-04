package kr.co.bit.menu.service;

import kr.co.bit.menu.vo.CartStoreVO;

public interface CartStoreService {
	
	CartStoreVO selectOneCartStore(String id);
	void insertCartStore(CartStoreVO cartStoreVO);
	void updateCartStore(CartStoreVO cartStoreVO);
	void deleteCartStore(CartStoreVO cartStoreVO);
	
}
