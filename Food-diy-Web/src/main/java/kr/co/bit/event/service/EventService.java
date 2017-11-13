package kr.co.bit.event.service;

import java.util.List;

import kr.co.bit.event.vo.EventBoardVO;

public interface EventService {

	
	List<EventBoardVO> selectAllEvent();
	List<EventBoardVO> selectEndEvent();
	EventBoardVO selectOneEvent(int no);
	void insertEvent(EventBoardVO eventVO);
	void modifyEvent(EventBoardVO eventVO);
	void removeEvent(int no); 
	
	
	
	
	
	
}
