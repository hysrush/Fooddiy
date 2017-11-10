package kr.co.bit.community.service;

import java.util.List;

import kr.co.bit.community.vo.QnaBoardVO;


public interface QnaService {

	// QnA Service
	List<QnaBoardVO> selectAllQnA();
	List<QnaBoardVO> selectTypeQnA(String type);
	QnaBoardVO selectOneQnA(int no);
	void insertQnA(QnaBoardVO qna);
	void modifyQnA(QnaBoardVO qna);
	void removeQnA(int no);
	
}
