package kr.co.bit.menu.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.menu.vo.CartStoreVO;

@Repository
public class CartStoreDAOImp implements CartStoreDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.menu.dao.CartStoreDAO.";
	
	@Override
	public List<CartStoreVO> selectOne(String id) {
		
		List<CartStoreVO> cartStoreVO = sqlSession.selectList(url + "selectOneCartStore", id);
		
		
		return cartStoreVO;
	}	
	@Override
	public void insert(CartStoreVO cartStoreVO) {
		sqlSession.insert(url + "insertCartStore", cartStoreVO);
	}
	
	@Override
	public void update(CartStoreVO cartStoreVO) {
		sqlSession.update(url + "updateCartStore", cartStoreVO);
	}
	
	@Override
	public void delete(CartStoreVO cartStoreVO) {
		sqlSession.delete(url + "deleteCartStore", cartStoreVO);
	}
	
	
}
