package kr.co.bit.service;

import java.util.List;

import kr.co.bit.event.vo.CityVO;
import kr.co.bit.event.vo.StoreVO;

public interface StoreService {

	List<StoreVO> selectStoreList(String gugun);
	List<CityVO> selectCity();
	List selectLocation(String sido);
	
	
	
}