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
	// 이벤트 전체보기 
	public List<EventBoardVO> selectAll(){
		
		List<EventBoardVO> list = sqlSession.selectList("kr.co.bit.event.dao.EventDAO.selectAllEvent");
		return list;
	}
	// 이벤트 클릭시 디테일
	public EventBoardVO selectOne(int no) { 
		return sqlSession.selectOne("kr.co.bit.event.dao.EventDAO.selectByNo",no);
	}
	
	public void insert(EventBoardVO event) { 
		sqlSession.insert("kr.co.bit.event.dao.EventDAO.insertEvent",event);
	}
	
	public void update(EventBoardVO event) {
		
	}
	public void delete(int no) {
		
		
	}
	
	
	

}
