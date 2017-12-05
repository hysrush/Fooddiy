package kr.co.bit.event.service;

import java.util.List;

import kr.co.bit.event.vo.CityVO;
import kr.co.bit.event.vo.EventBoardVO;
import kr.co.bit.event.vo.PagingVO;
import kr.co.bit.event.vo.StoreVO;

public interface EventService {

	
	List<EventBoardVO> selectAllEvent();
	List<EventBoardVO> selectEndEvent(PagingVO paging);
	List<EventBoardVO> selectPaging(PagingVO paging);
	int selectTotalPaging();
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
