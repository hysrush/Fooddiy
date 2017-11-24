package kr.co.bit.event.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.event.vo.CityVO;
import kr.co.bit.event.vo.EventBoardVO;
import kr.co.bit.event.vo.StoreVO;
import kr.co.bit.event.vo.locationVO;

@Repository
public class EvnetDAOImpl implements EventDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.event.dao.EventDAO.";
	
	// �씠踰ㅽ듃 �쟾泥대낫湲� 
	@Override
	public List<EventBoardVO> selectAll(){
		
		List<EventBoardVO> list = sqlSession.selectList(url + "selectAllEvent");
		return list;
	}
	
	@Override
	public List<EventBoardVO> selectEndEvent() {
		List<EventBoardVO> list = sqlSession.selectList(url +"selectEndEvent");
		return list;
	}
	
	public List<EventBoardVO> selectEventBystoreName(String store){
		
		List<EventBoardVO> list = sqlSession.selectList(url + "selectEventBystoreName", store);
		return list;
	}
	
	// �씠踰ㅽ듃 �겢由��떆 �뵒�뀒�씪
	@Override
	public EventBoardVO selectOne(int no) { 
		return sqlSession.selectOne(url + "selectByNo" , no);
	}
	@Override
	public List<StoreVO> selectStoreList(String gugun){
		
		System.out.println("dao - gugun : " + gugun);
		List<StoreVO> list = sqlSession.selectList(url + "selectStore", gugun);
		
		return list;
	}
	
	@Override
	public void insert(EventBoardVO eventVO) { 
		sqlSession.insert(url + "insertEvent" , eventVO);
	}
	
	@Override
	public void update(EventBoardVO eventVO) {
		
	}
	
	@Override
	public void delete(int no) {
		
		
	}

	@Override
	public List<CityVO> selectCity() {
		
		List<CityVO> list = sqlSession.selectList(url + "selectCity");
		
		return list;
	}

	@Override
	public List selectLocation(String sido) {
		System.out.println(sido);
		List list = sqlSession.selectList(url + "selectLocation",sido);
		
		return list;
	}

}
