package kr.co.bit.event.dao;

import java.util.List;

import kr.co.bit.event.vo.CityVO;
import kr.co.bit.event.vo.EventBoardVO;
import kr.co.bit.event.vo.StoreVO;
import kr.co.bit.event.vo.locationVO;

public interface EventDAO {
	
	List<EventBoardVO> selectAll();
	List<EventBoardVO> selectEndEvent();
	List<EventBoardVO> selectEventBystoreName(String store);
	
	List<StoreVO> selectStoreList(String gugun);
	List<CityVO> selectCity();
	List selectLocation(String sido);
	EventBoardVO selectOne(int no);
	void insert(EventBoardVO eventVO);
	void update(EventBoardVO eventVO);
	void delete(int no);
	

}
