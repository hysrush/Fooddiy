package kr.co.bit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.CartStoreDAO;
import kr.co.bit.vo.CartStoreVO;

@Service
public class CartStoreServiceImp implements CartStoreService{
	
	@Autowired
	CartStoreDAO dao;
	
	@Override
	public CartStoreVO selectOneCartStore(String id){
		CartStoreVO cartStoreVO = dao.selectOne(id);
		return cartStoreVO;
	}
	
	@Override
	public void insertCartStore(CartStoreVO cartStoreVO) {
		dao.insert(cartStoreVO);
	}
	
	@Override
	public void updateCartStore(CartStoreVO cartStoreVO) {
		dao.update(cartStoreVO);
	}
	
	@Override
	public void deleteCartStore(String id) {
		dao.delete(id);
	}
	
}
