package kr.co.bit.sign.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.sign.dao.SignDAO;
import kr.co.bit.sign.vo.LoginVO;

@Service
public class SignServiceImp implements SignService {

	@Autowired
	private SignDAO signDAOImp;
	
	public LoginVO login(LoginVO login) {
		
		return null;
	}
	
	public void signUp(MemberVO memberVO) {
		
		signDAOImp.signUp(memberVO);
		
	}

}
