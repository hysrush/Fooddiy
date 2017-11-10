package kr.co.bit.community.service;

import java.util.List;

import kr.co.bit.community.vo.QnaBoardVO;


public interface QnaService {

	// QnA Service
	List<QnaBoardVO> selectAllQnA();
	QnaBoardVO selectOneQnA(int no);
	void insertQnA(QnaBoardVO qnaVO);
	void modifyQnA(QnaBoardVO qnaVO);
	void removeQnA(int no);
	
}
