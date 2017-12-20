package kr.co.bit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.SnsDAO;
import kr.co.bit.vo.PagingVO;
import kr.co.bit.vo.SnsBoardVO;

@Service
public class SnsServiceImpl implements SnsService {

	@Autowired
	private SnsDAO snsDAO;
	
	
	@Override
	public List<SnsBoardVO> selectSns(PagingVO paging) {
		
		List<SnsBoardVO> list = snsDAO.selectSns(paging);
		
		return list;
	}

	@Override
	public int selectTotalPaging() {
		int total = snsDAO.selectTotalPaging();
		return total;
	}

	@Override
	public void insert(SnsBoardVO snsVO) {
		snsDAO.insert(snsVO);
		
	}

	@Override
	public SnsBoardVO selectOne(int no) {
	
		return snsDAO.selectOne(no);
	}

	@Override
	public void addLikeSns(int no) {
		snsDAO.addLikeSns(no);
		
	}

	@Override
	public List<SnsBoardVO> selectHit() {
		List<SnsBoardVO> list = snsDAO.selectHit();
		return list;
	}

	@Override
	public void update(SnsBoardVO snsVO) {
		snsDAO.update(snsVO);
		
	}

	@Override
	public void delete(int no) {
		snsDAO.delete(no);
		
	}

}
