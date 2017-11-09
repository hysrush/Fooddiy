package kr.co.bit.event.service;

import java.util.List;

import kr.co.bit.event.vo.QnABoardVO;

public interface EventService {

	
	List<QnABoardVO> selectAllEvent();
	QnABoardVO selectOneEvent(int no);
	void insertEvent(QnABoardVO event);
	void modifyEvent(QnABoardVO event);
	void removeEvent(int no); 
	
	
	
	
	
	
}
