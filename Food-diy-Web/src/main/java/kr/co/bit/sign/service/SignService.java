package kr.co.bit.sign.service;

import kr.co.bit.user.vo.UserVO;

public interface SignService {

	UserVO login(UserVO login);
	void signUp(UserVO memberVO);
	int checkId(String id);
	UserVO lostId(UserVO lost);
	UserVO lostPw(UserVO lost);
}
