package kr.co.bit.menu.dao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.menu.vo.MenuVO;

@Repository
public class MenuDAOImp implements MenuDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.menu.dao.MenuDAO.";
	
	// <Menu DAO>
	// 메뉴 전체보기
	@Override
	public List<MenuVO> selectAll() {
		List<MenuVO> listAll = sqlSession.selectList(url + "selectAllMenu");
		return listAll;
	}
	//번호별 메뉴보기(상세보기)
	@Override
	public MenuVO selectOne(int no) {
		MenuVO menuDetail = sqlSession.selectOne(url + "selectOneMenu", no);
		return menuDetail;
	}
	//새 메뉴 쓰기
	@Override
	public void insert(MenuVO menuVO) {
		sqlSession.insert(url + "insertMenu", menuVO);		
	}
	//메뉴 수정
	@Override
	public void update(MenuVO menuVO) {
		sqlSession.update(url + "modifyMenu", menuVO);				
	}
	//메뉴 삭제
	@Override
	public void delete(int no) {
		sqlSession.delete(url + "removeMenu", no);
	}
	
}
