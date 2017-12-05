package kr.co.bit.menu.dao;

import java.util.List;

import kr.co.bit.menu.vo.CartStoreVO;

public interface CartStoreDAO {
	CartStoreVO selectOne(String id);
	void insert(CartStoreVO cartStoreVO);
	void update(CartStoreVO cartStoreVO);
	void delete(String id);
}