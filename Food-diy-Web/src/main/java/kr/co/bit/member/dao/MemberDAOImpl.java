package kr.co.bit.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<MemberVO> selectAll() {
		List<MemberVO> list = sqlSession.selectList("kr.co.bit.member.dao.MemberDAO.selectAllMember");
		return list;
	}

	public MemberVO selectOne(int no) {
		return sqlSession.selectOne("kr.co.bit.member.dao.MemberDAO.selectByNo", no);

	}

	public void insert(MemberVO member) {
		sqlSession.insert("kr.co.bit.member.dao.MemberDAO.insertBoard", member);
		
	}

	public void update(MemberVO board) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int no) {
		// TODO Auto-generated method stub
		
	}

}
