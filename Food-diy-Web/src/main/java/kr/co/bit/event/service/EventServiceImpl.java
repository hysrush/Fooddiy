package kr.co.bit.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.event.dao.EventDAO;
import kr.co.bit.event.vo.EventBoardVO;
import kr.co.bit.event.vo.StoreVO;

@Service
public class EventServiceImpl implements EventService{

	@Autowired
	private EventDAO eventDAO;
	
	@Override
	public List<EventBoardVO> selectAllEvent(){
		
		List<EventBoardVO> list = eventDAO.selectAll();
		return list;
		
	}
	
	
	
	@Override
	public List<EventBoardVO> selectEndEvent() {
		List<EventBoardVO> list = eventDAO.selectEndEvent();
		return list;
	}
	
	
	@Override
	public List<StoreVO> selectStoreList(){
		List<StoreVO> list = eventDAO.selectStoreList();
		return list;
	}
	
	
	
	//Event 湲� 蹂닿린
	@Override
	public EventBoardVO selectOneEvent(int no) {
		return eventDAO.selectOne(no);
	}
	
	
	//Event 湲��벐湲�
	@Override
	public void insertEvent(EventBoardVO eventVO) {
		eventDAO.insert(eventVO);
	}
	
	@Override
	public void modifyEvent(EventBoardVO eventVO) {
		eventDAO.update(eventVO);
	}
	
	@Override
	public void removeEvent(int no) {
		eventDAO.delete(no);
	}


	
	
	
}
