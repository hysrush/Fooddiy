package kr.co.bit.event.service;

import java.util.List;

import kr.co.bit.event.vo.EventBoardVO;
import kr.co.bit.event.vo.StoreVO;

public interface EventService {

	
	List<EventBoardVO> selectAllEvent();
	List<EventBoardVO> selectEndEvent();
	List<StoreVO> selectStoreList();
	EventBoardVO selectOneEvent(int no);
	void insertEvent(EventBoardVO eventVO);
	void modifyEvent(EventBoardVO eventVO);
	void removeEvent(int no); 
	
	
	
	
	
	
}
