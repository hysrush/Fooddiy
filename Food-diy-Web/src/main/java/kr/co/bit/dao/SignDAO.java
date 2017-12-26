package kr.co.bit.dao;

import java.util.List;
import java.util.Map;

import kr.co.bit.vo.OrderVO;
import kr.co.bit.vo.UserVO;

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
	
	//가입 확인
	int checkMember(UserVO phoneCert);

	// main
	Map<String, List<Object>> main();

	// 주문 번호 조회로 일단 주문 사항 있는지 확인
	int orderCheck(String num);
	
	// 주문번호에 해당하는 주문 사항
	OrderVO orderDetail(String no);
	
}
