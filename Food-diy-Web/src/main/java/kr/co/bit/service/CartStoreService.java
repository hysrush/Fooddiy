package kr.co.bit.service;

import java.util.List;

import kr.co.bit.vo.CartStoreVO;

public interface CartStoreService  {
	
	CartStoreVO selectOneCartStore(String id);
	void insertCartStore(CartStoreVO cartStoreVO);
	void updateCartStore(CartStoreVO cartStoreVO);
	void deleteCartStore(String id);
	
}
