package kr.co.bit.member.service;

import java.util.List;

import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.member.vo.QnABoardVO;


public interface MemberService {

	List<MemberVO> selectAllmember();
	MemberVO selectOneMember(int no);
	void insertMember(MemberVO member);
	void modifyMember(MemberVO member);
	void removeMember(int no);
	void memberUpdate(MemberVO vo);
	List<QnABoardVO> selectAllQnA();
		
}
