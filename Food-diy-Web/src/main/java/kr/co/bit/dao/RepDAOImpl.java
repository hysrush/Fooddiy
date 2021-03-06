package kr.co.bit.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.vo.PagingVO;
import kr.co.bit.vo.SnsRepVO;

@Repository
public class RepDAOImpl implements RepDAO {

	@Autowired
	private SqlSession sqlSession;
	private String url = "kr.co.bit.dao.RepDAO.";
	
	@Override
	public List<SnsRepVO> list(PagingVO paging) {
		
		List<SnsRepVO> list = sqlSession.selectList(url+ "selectReply",paging);
		return list;
	}

	@Override
	public void insertRep(SnsRepVO snsRepVO) {
		sqlSession.insert(url+ "insertReply",snsRepVO);
		
	}

	@Override
	public void update(SnsRepVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteRep(int no) {
		sqlSession.delete(url + "deleteReply" , no);
		
	}

}
