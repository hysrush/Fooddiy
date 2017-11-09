package kr.co.bit.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.event.dao.EventDAO;
import kr.co.bit.event.vo.QnABoardVO;

@Service
public class EventServiceImpl implements EventService{

	@Autowired
	private EventDAO eventDAO;
	
	public List<QnABoardVO> selectAllEvent(){
		
		List<QnABoardVO> list = eventDAO.selectAll();
		return list;
		
	}
	
	public QnABoardVO selectOneEvent(int no) {
		return eventDAO.selectOne(no);
	}
	
	public void insertEvent(QnABoardVO event) {
		eventDAO.insert(event);
	}
	
	public void modifyEvent(QnABoardVO event) {
		eventDAO.update(event);
	}
	
	public void removeEvent(int no) {
		eventDAO.delete(no);
	}
	
	
	
}
