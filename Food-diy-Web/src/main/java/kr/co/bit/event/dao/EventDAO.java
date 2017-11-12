package kr.co.bit.event.dao;

import java.util.List;

import kr.co.bit.event.vo.EventBoardVO;

public interface EventDAO {
	
	List<EventBoardVO> selectAll();
	EventBoardVO selectOne(int no);
	void insert(EventBoardVO eventVO);
	void update(EventBoardVO eventVO);
	void delete(int no);
	

}
