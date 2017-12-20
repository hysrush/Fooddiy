package kr.co.bit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.MemberOrderDAO;
import kr.co.bit.vo.MemberOrderVO;


@Service
public class MemberOrderServiceImp  implements MemberOrderService{
	
	@Autowired
	private MemberOrderDAO dao;
	
	
	@Override
	public List<MemberOrderVO> selectAll(String id) {
		List<MemberOrderVO> allOrderList = dao.selectAll(id);
		return allOrderList;
	}

	
	@Override
	public MemberOrderVO selectByNo(int no) {
		
		MemberOrderVO orderVO = dao.selectByNo(no);
		return orderVO;
	}
	
	@Override
	public void cancelOrder(int no) {
		dao.cancelOrder(no);
	}
	
}
