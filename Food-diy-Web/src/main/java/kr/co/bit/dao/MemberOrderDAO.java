package kr.co.bit.dao;

import java.util.List;
import java.util.Map;

import kr.co.bit.vo.MemberOrderVO;
import kr.co.bit.vo.OrderVO;


public interface MemberOrderDAO {
	public List<MemberOrderVO> selectFavoriteMenu(String id);
	public MemberOrderVO selectByNo(int no);
	public void cancelOrder(int no);
	//스탬프
	void updateCoupon(String id);
	public void addFavoriteMenu(Map<String, String> info);
}
