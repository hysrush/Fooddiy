package kr.co.bit.member.service;

import java.util.List;

import kr.co.bit.menu.vo.CartVO;
import kr.co.bit.sign.vo.LoginVO;
import kr.co.bit.user.vo.UserVO;


public interface MemberService {

	List<UserVO> selectAllmember();
	UserVO selectOneMember(int no);
	void insertMember(UserVO member);
	void modifyMember(UserVO member);
	void getMemberUpdate(UserVO member);
	void memberDelte(String id);
	void setmyMenu(CartVO member);
	List<CartVO> getmyMenu(String id);
	
}
