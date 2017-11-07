package kr.co.bit.sign.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.sign.vo.LoginVO;

@Repository
public class SignDAOImp implements SignDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public LoginVO signIn(LoginVO login) {
		
		return sql.selectOne("kr.co.bit.member.dao.login", login);
		
	}

	public void signUp(MemberVO memberVO) {
		
		sql.insert("kr.co.bit.member.dao.signUp", memberVO);
	}

	
}
