package kr.co.bit.menu.dao;

import java.util.List;

import kr.co.bit.menu.vo.CartVO;

public interface CartDAO {
	
	List<CartVO> selectAll(CartVO cartVO);
	CartVO selectOne();
	void insert(CartVO cartVO);
	void update(CartVO cartVO);
	void updateProductQty(CartVO cartVO);
	void delete(CartVO cartVO);
	List<CartVO> selectMenu(String id);
}
