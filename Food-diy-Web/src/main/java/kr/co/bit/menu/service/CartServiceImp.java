package kr.co.bit.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.menu.dao.CartDAO;
import kr.co.bit.vo.CartVO;


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
	public void updateProductQty(CartVO cartVO) {
		dao.updateProductQty(cartVO);
	}
	@Override
	public void deleteCartById(String id) {
		dao.deleteById(id);
	}
	
	@Override
	public void deleteCartByNo(CartVO cartVO) {
		dao.deleteByNo(cartVO);;
	}
	
	

	@Override
	public List<CartVO> selectMenu(String id) {
		
		return dao.selectMenu(id);
	}

	@Override
	public List<CartVO> cartDelete(CartVO vo) {
		
		return dao.cartDelete(vo);
	}
}
