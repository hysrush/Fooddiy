package kr.co.bit.member.dao;

import java.util.List;

import kr.co.bit.menu.vo.CartVO;
import kr.co.bit.user.vo.UserVO;


public interface MemberDAO {
	
	List<UserVO> selectAll();
	UserVO selectOne(int no);
	void insert(UserVO member);
	void update(UserVO member);
	void delete(String id);
	void setmyMenu(CartVO member);
	List<CartVO> getmyMenu(String id);
	
}
