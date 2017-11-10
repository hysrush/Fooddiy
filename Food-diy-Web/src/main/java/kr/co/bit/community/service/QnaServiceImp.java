package kr.co.bit.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.community.dao.QnaDAO;
import kr.co.bit.community.vo.QnaBoardVO;

@Service
public class QnaServiceImp implements QnaService {

	@Autowired
	private QnaDAO qnaDAO;
	
	// <QnA Service>
	// QnA 전체보기
	@Override
	public List<QnaBoardVO> selectAllQnA() {
		List<QnaBoardVO> listAll = qnaDAO.selectAll();
		return listAll;
	}
	// 타입별 QnA 전체보기
	@Override
	public List<QnaBoardVO> selectTypeQnA(String type) {
		List<QnaBoardVO> listType = qnaDAO.selectType(type);
		return listType;
	}
	// 글번호별 QnA 글보기
	@Override
	public QnaBoardVO selectOneQnA(int no) {
		QnaBoardVO qnaDetail = qnaDAO.selectOne(no);
		return qnaDetail;
	}
	// QnA 새 글쓰기
	@Override
	public void insertQnA(QnaBoardVO qna) {
		qnaDAO.insert(qna);
	}
	// QnA 글 수정
	@Override
	public void modifyQnA(QnaBoardVO qna) {
		qnaDAO.update(qna);
	}
	// QnA 글 삭제
	@Override
	public void removeQnA(int no) {
		qnaDAO.delete(no);
	}

	
	
}
