package kr.co.bit.sign.dao;

import kr.co.bit.user.vo.UserVO;

public interface SignDAO {
	
	// 로그인
	UserVO login(UserVO login);
	
	//회원가입
	void signUp(UserVO memberVO);
	
	//id 중복 체크
	int checkId(String id);
	
	//id 찾기
	UserVO lostId(UserVO lost);
	
	//pw 찾기
	UserVO lostPw(UserVO lost);
	
	//임시 비밀번호 설정
	void setPw(UserVO setpw);

}
