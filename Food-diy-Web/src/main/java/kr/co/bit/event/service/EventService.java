package kr.co.bit.event.service;

import java.util.List;

import kr.co.bit.event.vo.EventBoardVO;

public interface EventService {

	
	List<EventBoardVO> selectAllEvent();
	EventBoardVO selectOneEvent(int no);
	void insertEvent(EventBoardVO event);
	void modifyEvent(EventBoardVO event);
	void removeEvent(int no); 
	
	
	
	
	
	
}
