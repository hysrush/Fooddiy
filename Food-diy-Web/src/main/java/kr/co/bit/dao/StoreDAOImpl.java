package kr.co.bit.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.vo.CityVO;
import kr.co.bit.vo.StoreVO;
import kr.co.bit.vo.locationVO;

@Repository
public class StoreDAOImpl implements StoreDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.dao.StoreDAO.";
	
	
	@Override
	public List<StoreVO> selectStoreAll(){
		
		List<StoreVO> list = sqlSession.selectList(url + "selectStoreAll");
		
		return list;
	}
	
	@Override
	public List<StoreVO> selectStoreList(String gugun) {
		
		List<StoreVO> list = sqlSession.selectList(url + "selectStore",gugun);
		
		return list;
	}
	
	@Override
	public List<StoreVO> selectStoreAddr(String store){
		List<StoreVO> list = sqlSession.selectList(url + "selectStoreAddr",store);
		
		return list;
	}
	

	@Override
	public List<CityVO> selectCity() {
			List<CityVO> list = sqlSession.selectList(url+"selectCity");

		return list;
	}

	@Override
	public List<locationVO> selectLocation(String sido) {
		
		List<locationVO> list = sqlSession.selectList(url +"selectLocation", sido);
		return list;
	}

}
