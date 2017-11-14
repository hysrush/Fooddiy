package kr.co.bit.sign.dao;

import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.sign.vo.LoginVO;

public interface SignDAO {
	
	// 로그인
	MemberVO login(LoginVO login);
	
	//회원가입
	void signUp(MemberVO memberVO);
	
	//id 중복 체크
	int checkId(String id);
}
