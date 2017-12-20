package kr.co.bit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.StoreDAO;
import kr.co.bit.vo.CityVO;
import kr.co.bit.vo.StoreVO;

@Service
public class StoreServiceImpl implements StoreService{

	@Autowired
	private StoreDAO storeDAO;
	
	
	@Override
	public List<StoreVO> selectStoreAll(){
		List<StoreVO> list = storeDAO.selectStoreAll();
		
		return list;
		
	}
	
	
	@Override
	public List<StoreVO> selectStoreList(String gugun) {
		List<StoreVO> list = storeDAO.selectStoreList(gugun);
		return list;
	}
	@Override
	public List<StoreVO> selectStoreAddr(String store){
		List<StoreVO> list = storeDAO.selectStoreAddr(store);
		return list;
		
	}
	

	@Override
	public List<CityVO> selectCity() {
		List<CityVO> list = storeDAO.selectCity();
		return list;
	}

	@Override
	public List selectLocation(String sido) {
		List list = storeDAO.selectLocation(sido);
		
		return list;
	}

	
	
	
	
	
}
