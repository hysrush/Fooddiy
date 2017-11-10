package kr.co.bit.community.dao;

import java.util.List;

import kr.co.bit.community.vo.QnaBoardVO;

public interface QnaDAO {
	
	// QnA DAO
	List<QnaBoardVO> selectAll();
	List<QnaBoardVO> selectType(String type);
	QnaBoardVO selectOne(int no);
	void insert(QnaBoardVO qna);
	void update(QnaBoardVO qna);
	void delete(int no);

}
