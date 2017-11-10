package kr.co.bit.community.dao;

import java.util.List;

import kr.co.bit.community.vo.QnaBoardVO;

public interface QnaDAO {
	
	// QnA DAO
	List<QnaBoardVO> selectAll();
	QnaBoardVO selectOne(int no);
	void insert(QnaBoardVO qnaVO);
	void update(QnaBoardVO qnaVO);
	void delete(int no);

}
