package kr.co.bit.sign.service;

import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.sign.vo.LoginVO;

public interface SignService {

	MemberVO login(LoginVO login);
	void signUp(MemberVO memberVO);
	int checkId(String id);
}
