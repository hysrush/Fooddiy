package kr.co.bit.event.dao;

import java.util.List;

import kr.co.bit.event.vo.QnABoardVO;

public interface EventDAO {
	
	List<QnABoardVO> selectAll();
	QnABoardVO selectOne(int no);
	void insert(QnABoardVO event);
	void update(QnABoardVO event);
	void delete(int no);
	

}
