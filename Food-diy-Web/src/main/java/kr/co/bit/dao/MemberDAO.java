package kr.co.bit.dao;

import java.util.List;

import kr.co.bit.vo.CartVO;
import kr.co.bit.vo.ClaimBoardVO;
import kr.co.bit.vo.MemberOrderVO;
import kr.co.bit.vo.UserVO;


public interface MemberDAO {
	
	List<UserVO> selectAll();
	UserVO selectOne(int no);
	void insert(UserVO member);
	void update(UserVO member);
	void delete(String id);
	void setmyMenu(CartVO member);
	List<MemberOrderVO> getmyMenu(String id);
	List<CartVO> delmyMenu(List<String> noList);
	MemberOrderVO getmyMenuDetail(int no);
	List<ClaimBoardVO> delmyQnA(List<String> noList);
	int selectStamp(String id);
	
}
