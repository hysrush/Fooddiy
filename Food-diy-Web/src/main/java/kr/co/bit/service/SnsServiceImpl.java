package kr.co.bit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.SnsDAO;
import kr.co.bit.event.vo.PagingVO;
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

}