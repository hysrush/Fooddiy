package kr.co.bit.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.event.dao.EventDAO;
import kr.co.bit.event.vo.EventBoardVO;

@Service
public class EventServiceImpl implements EventService{

	@Autowired
	private EventDAO eventDAO;
	
	@Override
	public List<EventBoardVO> selectAllEvent(){
		
		List<EventBoardVO> list = eventDAO.selectAll();
		return list;
		
	}
	
	//Event 글 보기
	@Override
	public EventBoardVO selectOneEvent(int no) {
		return eventDAO.selectOne(no);
	}
	
	
	//Event 글쓰기
	@Override
	public void insertEvent(EventBoardVO event) {
	/*	eventDAO.insert(event);*/
	}
	
	@Override
	public void modifyEvent(EventBoardVO event) {
		eventDAO.update(event);
	}
	
	@Override
	public void removeEvent(int no) {
		eventDAO.delete(no);
	}
	
	
	
}
