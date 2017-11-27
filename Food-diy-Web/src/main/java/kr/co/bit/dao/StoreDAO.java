package kr.co.bit.dao;

import java.util.List;

import kr.co.bit.event.vo.CityVO;
import kr.co.bit.event.vo.StoreVO;

public interface StoreDAO {

	List<StoreVO> selectStoreAll();
	List<StoreVO> selectStoreList(String gugun);
	List<StoreVO> selectStoreAddr(String store);
	List<CityVO> selectCity();
	List selectLocation(String sido);
	
	
}
