package kr.co.bit.sign.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.sign.dao.SignDAO;
import kr.co.bit.sign.vo.LoginVO;
import kr.co.bit.sign.vo.PhoneCertVO;

@Service
public class SignServiceImp implements SignService {

	@Autowired
	private SignDAO signDAOImp;
	
	// 로그인
	public MemberVO login(LoginVO login) {
		
		return signDAOImp.login(login);
	}
	
	//회원 가입
	public void signUp(MemberVO memberVO) {
		
		signDAOImp.signUp(memberVO);
		
	}
	
	// id 중복 체크
	public int checkId(String id) {
		
		return signDAOImp.checkId(id);
	}
	
	//id 찾기
	public LoginVO lostId(PhoneCertVO lost) {
		return signDAOImp.lostId(lost);
	}
	
	//pw 찾기
	public LoginVO lostPw(PhoneCertVO lost) {
		return signDAOImp.lostPw(lost);
	}

}
