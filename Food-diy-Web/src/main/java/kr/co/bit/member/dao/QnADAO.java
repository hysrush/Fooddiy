package kr.co.bit.member.dao;

import java.util.List;

import kr.co.bit.member.vo.QnABoardVO;

public interface QnADAO {
	List<QnABoardVO> selectAll();
	QnABoardVO selectOne(int no);
	void insert(QnABoardVO event);
	void update(QnABoardVO event);
	void delete(int no);
}
