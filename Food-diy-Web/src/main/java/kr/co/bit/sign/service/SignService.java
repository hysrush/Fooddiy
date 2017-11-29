package kr.co.bit.sign.service;

import kr.co.bit.sign.vo.PhoneCertVO;
import kr.co.bit.user.vo.UserVO;

public interface SignService {

	UserVO login(UserVO login);
	void signUp(UserVO memberVO);
	int checkId(String id);
	UserVO lostId(PhoneCertVO lost);
	UserVO lostPw(PhoneCertVO lost);
	String sender(UserVO member);
	UserVO nonSignUp(UserVO mail);
	int checkMember(UserVO phoneCert);
}
