package kr.co.bit.service;

import java.util.List;

import kr.co.bit.vo.CityVO;
import kr.co.bit.vo.StoreVO;

public interface StoreService {

	List<StoreVO> selectStoreAll();
	List<StoreVO> selectStoreList(String gugun);
	List selectLocation(String sido);
	List<StoreVO> selectStoreAddr(String store);
	List<CityVO> selectCity();
	
	
	
}
