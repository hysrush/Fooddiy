package kr.co.bit.service;

import java.util.List;
import java.util.Map;

import kr.co.bit.vo.MemberOrderVO;
import kr.co.bit.vo.OrderVO;


public interface MemberOrderService {
	public List<MemberOrderVO> selectFavoriteMenu(String id);
	public MemberOrderVO selectByNo(int no);
	public void cancelOrder(int no);
	public void addFavoriteMenu(Map<String, String> info);
}
