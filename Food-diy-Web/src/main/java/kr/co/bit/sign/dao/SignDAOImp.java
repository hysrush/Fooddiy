package kr.co.bit.sign.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.user.vo.UserVO;

@Repository
public class SignDAOImp implements SignDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	// 로그인
	public UserVO login(UserVO login) {
		
		// API 가입 확인 또는 아이디 비밀번호 확인
		int check = sql.selectOne("kr.co.bit.member.dao.loginCheck", login);

		if(check == 0) {
			return null;
		}
		
		return sql.selectOne("kr.co.bit.member.dao.login", login);
		
	}

	// 회원가입
	public void signUp(UserVO memberVO) {
		
		// 비회원
		if(memberVO.getType().equals("N")) {
		
			sql.insert("kr.co.bit.member.dao.nonSignUp", memberVO);
		}else {
			sql.insert("kr.co.bit.member.dao.signUp", memberVO);
		}
		
	}
	
	public int checkId(String id) {
		
		return sql.selectOne("kr.co.bit.member.dao.checkId", id);
	}

	// id 찾기
	public UserVO lostId(UserVO lost) {
		
		// 가입한 건지 확인
		int check = sql.selectOne("kr.co.bit.member.dao.lostIdCheck", lost);
		
		if(check == 0) {
			return null;
		}
		
		return sql.selectOne("kr.co.bit.member.dao.lostId", lost);
	}

	// pw 찾기
	public UserVO lostPw(UserVO lost) {
		
		int check = sql.selectOne("kr.co.bit.member.dao.lostPwCheck", lost);
		
		if(check == 0) {
			return null;
		}
		return sql.selectOne("kr.co.bit.member.dao.lostPw", lost);
	}

	// 임시 비밀번호 설정
	public void setPw(UserVO setpw) {
	
		sql.insert("kr.co.bit.member.dao.pwUpdate", setpw);
	}
	
}
