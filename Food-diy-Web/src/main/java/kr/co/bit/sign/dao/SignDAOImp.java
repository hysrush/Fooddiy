package kr.co.bit.sign.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.member.vo.MemberVO;

@Repository
public class SignDAOImp implements SignDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public MemberVO login(MemberVO	 login) {
		
		// API 가입 확인 또는 아이디 비밀번호 확인
		int check = sql.selectOne("kr.co.bit.member.dao.loginCheck", login);
		
		if(check == 0) {
			return null;
		}
		
		return sql.selectOne("kr.co.bit.member.dao.login", login);
		
	}

	public void signUp(MemberVO memberVO) {
		
		sql.insert("kr.co.bit.member.dao.signUp", memberVO);
	}
	
	public int checkId(String id) {
		
		return sql.selectOne("kr.co.bit.member.dao.checkId", id);
	}

	// id 찾기
	public MemberVO lostId(MemberVO lost) {
		
		// 가입한 건지 확인
		int check = sql.selectOne("kr.co.bit.member.dao.lostIdCheck", lost);
		
		if(check == 0) {
			return null;
		}
		
		return sql.selectOne("kr.co.bit.member.dao.lostId", lost);
	}

	// pw 찾기
	public MemberVO lostPw(MemberVO lost) {
		
		int check = sql.selectOne("kr.co.bit.member.dao.lostPw", lost);
		
		if(check == 0) {
			return null;
		}
		return sql.selectOne("kr.co.bit.member.dao.lostPw", lost);
	}

	
}
