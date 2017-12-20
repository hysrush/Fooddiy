package kr.co.bit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.RepDAO;
import kr.co.bit.vo.PagingVO;
import kr.co.bit.vo.SnsRepVO;
@Service
public class RepServiceImpl implements RepService{

	@Autowired
	private RepDAO repDAO;
	
	
	@Override
	public List<SnsRepVO> list(PagingVO paging) {
		
		List<SnsRepVO> list = repDAO.list(paging);
		
		
		return list;
	}

	@Override
	public void insertRep(SnsRepVO snsRepVO) {
		repDAO.insertRep(snsRepVO);
		
	}

	@Override
	public void update(SnsRepVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteRep(int no) {
		repDAO.deleteRep(no);
		
	}

}
