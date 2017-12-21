package kr.co.bit.service;

import java.util.List;
import java.util.Map;

import kr.co.bit.vo.PhoneCertVO;
import kr.co.bit.vo.UserVO;

public interface SignService {

	UserVO login(UserVO login);
	void signUp(UserVO memberVO);
	int checkId(String id);
	UserVO lostId(UserVO lost);
	UserVO lostPw(PhoneCertVO lost);
	String sender(UserVO member);
	UserVO nonSignUp(UserVO mail);
	int checkMember(UserVO phoneCert);
	Map<String, List<Object>> main();
	
}
