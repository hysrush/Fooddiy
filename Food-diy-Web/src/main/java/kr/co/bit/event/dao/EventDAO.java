package kr.co.bit.event.dao;

import java.util.List;

import kr.co.bit.event.vo.EventBoardVO;
import kr.co.bit.event.vo.StoreVO;

public interface EventDAO {
	
	List<EventBoardVO> selectAll();
	List<EventBoardVO> selectEndEvent();
	List<StoreVO> selectStoreList();
	EventBoardVO selectOne(int no);
	void insert(EventBoardVO eventVO);
	void update(EventBoardVO eventVO);
	void delete(int no);
	

}
