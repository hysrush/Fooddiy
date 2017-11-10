package kr.co.bit.event.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.event.vo.EventBoardVO;

@Repository
public class EvnetDAOImpl implements EventDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.event.dao.EventDAO.";
	
	// 이벤트 전체보기 
	@Override
	public List<EventBoardVO> selectAll(){
		
		List<EventBoardVO> list = sqlSession.selectList(url + "selectAllEvent");
		return list;
	}
	
	// 이벤트 클릭시 디테일
	@Override
	public EventBoardVO selectOne(int no) { 
		return sqlSession.selectOne(url + "selectByNo" , no);
	}
	
	@Override
	public void insert(EventBoardVO event) { 
		sqlSession.insert(url + "insertEvent" , event);
	}
	
	@Override
	public void update(EventBoardVO event) {
		
	}
	
	@Override
	public void delete(int no) {
		
		
	}
	
	
	

}
