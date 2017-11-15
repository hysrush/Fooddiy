package kr.co.bit.sign.service;

import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.sign.vo.LoginVO;
import kr.co.bit.sign.vo.PhoneCertVO;

public interface SignService {

	MemberVO login(LoginVO login);
	void signUp(MemberVO memberVO);
	int checkId(String id);
	LoginVO lostId(PhoneCertVO lost);
	LoginVO lostPw(PhoneCertVO lost);
}
