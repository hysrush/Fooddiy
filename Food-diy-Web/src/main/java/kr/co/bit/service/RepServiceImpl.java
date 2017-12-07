package kr.co.bit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.RepDAO;
import kr.co.bit.vo.SnsRepVO;
@Service
public class RepServiceImpl implements RepService{

	@Autowired
	private RepDAO repDAO;
	
	
	@Override
	public List<SnsRepVO> list(int no) {
		
		List<SnsRepVO> list = repDAO.list(no);
		
		
		return list;
	}

	@Override
	public void insert(SnsRepVO vo) {
		repDAO.insert(vo);
		
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