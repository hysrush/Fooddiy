package kr.co.bit.event.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.event.vo.CityVO;
import kr.co.bit.event.vo.EventBoardVO;
import kr.co.bit.event.vo.PagingVO;
import kr.co.bit.event.vo.StoreVO;

@Repository
public class EventDAOImpl implements EventDAO {
	
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
	public List<EventBoardVO> selectPaging(PagingVO paging){
		List<EventBoardVO> list = sqlSession.selectList(url + "selectPaging", paging);
		return list;
		
	}
	@Override 
	public int selectTotalPaging() {
		
		int Total =  sqlSession.selectOne(url + "selectTotalPaging");
		
		return Total;
	}
	
	
	@Override
	public List<EventBoardVO> selectEndEvent(PagingVO paging) {
		List<EventBoardVO> list = sqlSession.selectList(url +"selectEndEvent", paging);
		return list;
	}
	
	public List<EventBoardVO> selectEventBystoreName(String store){
		
		List<EventBoardVO> list = sqlSession.selectList(url + "selectEventBystoreName", store);
		return list;
	}
	
	// �씠踰ㅽ듃 �겢由��떆 �뵒�뀒�씪
	@Override
	public EventBoardVO selectOne(int no) { 
		
		EventBoardVO eventDetail = sqlSession.selectOne(url + "selectByNo" , no);
		return eventDetail;
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

	@Override
	public String locationName(String gugun) {
		String locationName = sqlSession.selectOne(url + "locationName", gugun);
		return locationName;
	}

	@Override
	public List<StoreVO> searchStoreName(String search) {
		List<StoreVO> storenameList = sqlSession.selectList(url + "searchStoreName", search);
		
		return storenameList;
	}

}
