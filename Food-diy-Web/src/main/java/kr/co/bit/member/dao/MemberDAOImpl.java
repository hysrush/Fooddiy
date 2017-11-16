package kr.co.bit.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.user.vo.UserVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<UserVO> selectAll() {
		List<UserVO> list = sqlSession.selectList("kr.co.bit.member.dao.MemberDAO.selectAllMember");
		return list;
	}

	public UserVO selectOne(int no) {
		return sqlSession.selectOne("kr.co.bit.member.dao.MemberDAO.selectByNo", no);

	}

	public void insert(UserVO member) {
		sqlSession.insert("kr.co.bit.member.dao.MemberDAO.insertBoard", member);
		
	}

	    public void update(UserVO vo) {
	        sqlSession.update("member.memberUpdate", vo);
	 
	    }

	public void delete(int no) {
		// TODO Auto-generated method stub
		
	}

		
	}

