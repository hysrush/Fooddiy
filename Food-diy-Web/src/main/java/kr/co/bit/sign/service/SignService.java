package kr.co.bit.sign.service;

import kr.co.bit.member.vo.MemberVO;

public interface SignService {

	MemberVO login(MemberVO login);
	void signUp(MemberVO memberVO);
	int checkId(String id);
	MemberVO lostId(MemberVO lost);
	MemberVO lostPw(MemberVO lost);
}
