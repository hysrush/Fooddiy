package kr.co.bit.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.vo.PagingVO;
import kr.co.bit.vo.SnsBoardVO;

@Repository
public class SnsDAOImpl implements SnsDAO {

	
	@Autowired 
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.dao.SnsDAO.";
	
	
	@Override
	public List<SnsBoardVO> selectSns(PagingVO paging) {
		
		List<SnsBoardVO> list = sqlSession.selectList(url + "selectSns",paging);
		
		for(int i=0; i<list.size(); i++) {
			int replyNo = sqlSession.selectOne(url + "selectReplyNo", list.get(i).getNo());
			list.get(i).setReplyNo(replyNo);
		}
		return list;
	}

	@Override
	public int selectTotalPaging() {
		int total = sqlSession.selectOne(url+"selectTotalPaging");
		return total;
	}

	@Override
	public void insert(SnsBoardVO snsVO) {
		sqlSession.insert(url+ "insertSNS", snsVO);
		
	}

	@Override
	public SnsBoardVO selectOne(int no) { 
		
		SnsBoardVO snsDetail = sqlSession.selectOne(url + "selectByNo" , no);
		return snsDetail;
	}
	
	// SNS좋아요 증가
		@Override
		public void addLikeSns(int no) {
			sqlSession.update(url + "updateLikeSns", no);
		}

		@Override
		public List<SnsBoardVO> selectHit() {
			List<SnsBoardVO> list = sqlSession.selectList(url + "selectHitSns");
			return list;
		}
		@Override
		public List<SnsBoardVO> selectHit(String name) {
			List<SnsBoardVO> list = sqlSession.selectList(url + "selectTypeHitSns", name);
			return list;
		}

		@Override
		public void update(SnsBoardVO snsVO) {
			sqlSession.update(url + "updateSns", snsVO);
			
		}

		@Override
		public void delete(int no) {
			sqlSession.delete(url + "deleteSns", no);
			
		}
	
	
	
	
}
