package kr.co.bit.service;

import java.util.List;

import kr.co.bit.vo.CityVO;
import kr.co.bit.vo.StoreVO;
import kr.co.bit.vo.locationVO;

public interface StoreService {

	List<StoreVO> selectStoreAll();
	List<StoreVO> selectStoreList(String gugun);
	List<locationVO> selectLocation(String sido);
	List<StoreVO> selectStoreAddr(String store);
	List<CityVO> selectCity();
	
	
	
}
