package kr.co.bit.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.vo.SnsRepVO;

@Repository
public class RepDAOImpl implements RepDAO {

	@Autowired
	private SqlSession sqlSession;
	private String url = "kr.co.bit.dao.RepDAO.";
	
	@Override
	public List<SnsRepVO> list(int no) {
		
		List<SnsRepVO> list = sqlSession.selectList(url+ "selectReply", no);
		return list;
	}

	@Override
	public void insert(SnsRepVO vo) {
		sqlSession.insert(url+ "insertReply",vo);
		
	}

	@Override
	public void update(SnsRepVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int repNo) {
		// TODO Auto-generated method stub
		
	}

}
