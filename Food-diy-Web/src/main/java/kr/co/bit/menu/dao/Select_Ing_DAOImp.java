package kr.co.bit.menu.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.menu.vo.IngredientsVO;

@Repository
public class Select_Ing_DAOImp  implements Select_Ing_DAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.menu.dao.Select_Ing_DAO.";
	
	@Override
	public List<IngredientsVO> selectAllIng() {
		
		List<IngredientsVO> ingAll = sqlSession.selectList(url + "selectAllIng");
		
		return ingAll;
	}
}