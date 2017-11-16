package kr.co.bit.menu.dao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bit.menu.vo.MenuVO;

public interface MenuDAO {
	
	List<MenuVO> selectAll();
	MenuVO selectOne(int no);
	void insert(MenuVO menuVO);
	void update(MenuVO menuVO);
	void delete(int no);
	
}