package kr.co.bit.dao;

import java.util.List;

import kr.co.bit.vo.CityVO;
import kr.co.bit.vo.StoreVO;
import kr.co.bit.vo.locationVO;

public interface StoreDAO {

	List<StoreVO> selectStoreAll();
	List<StoreVO> selectStoreList(String gugun);
	List<StoreVO> selectStoreAddr(String store);
	List<CityVO> selectCity();
	List<locationVO> selectLocation(String sido);
	
	
}
