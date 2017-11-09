package kr.co.bit.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.community.vo.QnaBoardVO;

@Repository
public class CommunityDAOImp implements CommunityDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.community.dao.CommunityDAO.";
	
	// <QnA DAO>
	// QnA 전체보기
	@Override
	public List<QnaBoardVO> selectAll() {
		List<QnaBoardVO> listAll = sqlSession.selectList(url + "selectAllQnA");
		return listAll;
	}
	// 타입별 QnA 전체보기
	@Override
	public List<QnaBoardVO> selectType(String type) {
		List<QnaBoardVO> listType = sqlSession.selectList(url + "selectTypeQnA", type);
		return listType;
	}
	// QnA 새 글쓰기
	@Override
	public void insert(QnaBoardVO qna) {
		sqlSession.insert(url + "insertQnA", qna);
	}
	// QnA 글 수정
	@Override
	public void update(QnaBoardVO qna) {
		sqlSession.update(url + "modifyQnA", qna);
	}
	// QnA 글 삭제
	@Override
	public void delete(int no) {
		sqlSession.delete(url + "removeQnA", no);
	}

	
}
