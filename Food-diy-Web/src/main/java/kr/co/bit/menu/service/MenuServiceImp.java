package kr.co.bit.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.menu.dao.MenuDAO;
import kr.co.bit.vo.MenuVO;

@Service
public class MenuServiceImp implements MenuService {
	
	@Autowired
	private MenuDAO menuDAO;
	
	// <Menu Service>
	// Menu 전체보기
	@Override
	public List<MenuVO> selectAllMenu() {
		List<MenuVO> listAll = menuDAO.selectAll();
		return listAll;
	}
	// 번호별 menu보기(상세보기)
	@Override
	public MenuVO selectOneMenu(int no) {
		MenuVO menuDetail = menuDAO.selectOne(no);
		return menuDetail;
	}
	// Menu 새 글쓰기
	@Override
	public void insertMenu(MenuVO menuVO) {
		menuDAO.insert(menuVO);
	}	
	// Menu 글 수정
	@Override
	public void modifyMenu(MenuVO menuVO) {
		menuDAO.update(menuVO);		
	}
	// Menu 글 삭제
	@Override
	public void removeMenu(int no) {
		menuDAO.delete(no);
	}
	
	
       
    
}
