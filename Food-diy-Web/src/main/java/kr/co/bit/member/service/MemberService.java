package kr.co.bit.member.service;

import java.util.List;

import kr.co.bit.user.vo.UserVO;


public interface MemberService {

	List<UserVO> selectAllmember();
	UserVO selectOneMember(int no);
	void insertMember(UserVO member);
	void modifyMember(UserVO member);
	void removeMember(int no);
	static void memberUpdate(UserVO vo) {
		// TODO Auto-generated method stub
		
	}
		
}
