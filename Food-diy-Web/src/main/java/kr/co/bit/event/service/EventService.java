package kr.co.bit.event.service;

import java.util.List;

import kr.co.bit.event.vo.CityVO;
import kr.co.bit.event.vo.EventBoardVO;
import kr.co.bit.event.vo.StoreVO;
import kr.co.bit.event.vo.locationVO;

public interface EventService {

	
	List<EventBoardVO> selectAllEvent();
	List<EventBoardVO> selectEndEvent();
	List<EventBoardVO> selectEventBystoreName(String store);
	List<StoreVO> selectStoreList(String gugun);
	List<StoreVO> searchStoreName(String search);
	List<CityVO> selectCity();
	List selectLocation(String sido);
	EventBoardVO selectOneEvent(int no);
	void insertEvent(EventBoardVO eventVO);
	void modifyEvent(EventBoardVO eventVO);
	void removeEvent(int no); 
	
	String locationName(String gugun);
	
}
