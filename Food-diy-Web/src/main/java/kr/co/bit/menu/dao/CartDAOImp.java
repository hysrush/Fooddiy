package kr.co.bit.menu.dao;

import java.util.List;

import javax.swing.GroupLayout.SequentialGroup;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.menu.vo.CartVO;


@Repository
public class CartDAOImp implements CartDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.menu.dao.CartDAO.";
	
	@Override
	public List<CartVO> selectAll(CartVO cartVO) {
		List<CartVO> cartList = sqlSession.selectList(url + "selectAllCart", cartVO);
		return  cartList;
	}

	@Override
	public CartVO selectOne() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(CartVO cartVO) {
		sqlSession.insert(url + "insertCart", cartVO);

	}

	@Override
	public void update(CartVO cartVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(CartVO cartVO) {
		sqlSession.delete(url + "deleteCart", cartVO);

	}

}
