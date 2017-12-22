package kr.co.bit.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.vo.UserVO;

@Repository
public class SignDAOImp implements SignDAO {

	@Autowired
	private SqlSessionTemplate sql;
	String url = "kr.co.bit.member.dao.";
	
	// 로그인
	public UserVO login(UserVO login) {
		
		// API 가입 확인 또는 아이디 비밀번호 확인
		int check = sql.selectOne(url+"loginCheck", login);

		if(check == 0 ) {
			return null;
		}
			
		return sql.selectOne(url+"login", login);
		
	}

	// 회원가입
	public void signUp(UserVO memberVO) {
		
		/*// 비회원
		if(memberVO.getType().equals("N")) {
		
			sql.insert(url+"nonSignUp", memberVO);
		}else {
			sql.insert(url+"signUp", memberVO);
		}
		*/
		sql.insert(url+"signUp", memberVO);
		sql.insert("kr.co.bit.member.dao.insertStamp", memberVO.getId());
	}
	
	public int checkId(String id) {
		
		return sql.selectOne(url+"checkId", id);
	}

	// id 찾기
	public UserVO lostId(UserVO lost) {
		
		// 가입한 건지 확인
		int check = sql.selectOne(url+"lostIdCheck", lost);
		
		if(check == 0) {
			return null;
		}

		return sql.selectOne(url+"lostId", lost);

	}
	
	// pw 찾기
	public UserVO lostPw(UserVO lost) {
		
		int check = sql.selectOne(url+"lostPwCheck", lost);
		
		if(check == 0) {
			return null;
		}
		return sql.selectOne(url+"lostPw", lost);
	}

	// 임시 비밀번호 설정
	public void setPw(UserVO setpw) {
	
		sql.insert(url+"pwUpdate", setpw);
	}

	//가입했는지 확인
	public int checkMember(UserVO phoneCert) {
		
		/*System.out.println(phoneCert);*/
		return sql.selectOne(url+"checkMember", phoneCert);
	}

	// main
	public Map<String, List<Object>> main() {
		
		Map<String, List<Object>> map = new HashMap<>();
		
		map.put("notice", sql.selectList("kr.co.bit.main.mainN"));
		map.put("sns", sql.selectList("kr.co.bit.main.mainS"));
		map.put("event", sql.selectList("kr.co.bit.main.mainE"));
		
		/*System.out.println(map.get("notice").toString());
		System.out.println(map.get("sns").toString());
		System.out.println(map.get("event").toString());*/
		
		return map;
	}
	
}
