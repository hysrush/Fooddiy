package kr.co.bit.service;

import java.util.List;

import kr.co.bit.vo.CartVO;
import kr.co.bit.vo.ClaimBoardVO;
import kr.co.bit.vo.MemberOrderVO;
import kr.co.bit.vo.UserVO;


public interface MemberService {

	List<UserVO> selectAllmember();
	UserVO selectOneMember(int no);
	void insertMember(UserVO member);
	void modifyMember(UserVO member);
	void getMemberUpdate(UserVO member);
	void memberDelte(String id);
	void setmyMenu(CartVO member);
	List<MemberOrderVO> getmyMenu(String id);
	List<CartVO> delmyMenu(List<String> noList);
	List<ClaimBoardVO> delmyQnA(List<String> noList);
	MemberOrderVO getmyMenuDetail(int no);
	int selectStamp(String id);
	
}
