package kr.co.bit.sign.dao;

import kr.co.bit.member.vo.MemberVO;

public interface SignDAO {
	
	// 로그인
	MemberVO login(MemberVO login);
	
	//회원가입
	void signUp(MemberVO memberVO);
	
	//id 중복 체크
	int checkId(String id);
	
	//id 찾기
	MemberVO lostId(MemberVO lost);
	
	//pw 찾기
	MemberVO lostPw(MemberVO lost);
}
