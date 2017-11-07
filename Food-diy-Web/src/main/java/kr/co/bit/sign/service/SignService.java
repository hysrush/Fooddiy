package kr.co.bit.sign.service;

import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.sign.vo.LoginVO;

public interface SignService {

	LoginVO login(LoginVO login);
	void signUp(MemberVO memberVO);
}
