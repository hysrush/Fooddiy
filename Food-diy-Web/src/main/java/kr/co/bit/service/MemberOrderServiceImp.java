package kr.co.bit.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.MemberOrderDAO;
import kr.co.bit.vo.MemberOrderVO;
import kr.co.bit.vo.OrderVO;


@Service
public class MemberOrderServiceImp  implements MemberOrderService{
	
	@Autowired
	private MemberOrderDAO dao;
	
	@Override
	public List<MemberOrderVO> selectFavoriteMenu(String id) {
		List<MemberOrderVO> allFavoriteMenu = dao.selectFavoriteMenu(id);
		return allFavoriteMenu;
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
	
	@Override
	public void addFavoriteMenu(Map<String, String> info) {
		dao.addFavoriteMenu(info);
	}
	
}
