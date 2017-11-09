package kr.co.bit.member.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.member.vo.QnABoardVO;

@Repository
public class QnADAOImpl implements QnADAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	public List<QnABoardVO> selectAll(){
		
		List<QnABoardVO> list = sqlSession.selectList("kr.co.bit.member.dao.QnADAO.selectAllmember");
		return list;
	}
	public QnABoardVO selectOne(int no) { 
		return sqlSession.selectOne("kr.co.bit.member.dao.QnADAO.selectByNo",no);
	}
	
	public void insert(QnABoardVO member) { 
		sqlSession.insert("kr.co.bit.member.dao.QnADAO.insertmember",member);
	}
	
	public void update(QnABoardVO member) {
		
	}
	public void delete(int no) {
		
	}

}
