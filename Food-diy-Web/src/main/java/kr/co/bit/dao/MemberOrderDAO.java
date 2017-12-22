package kr.co.bit.dao;

import java.util.List;

import kr.co.bit.vo.MemberOrderVO;
import kr.co.bit.vo.UserVO;


public interface MemberOrderDAO {
	public List<MemberOrderVO> selectAll(String id);
	public MemberOrderVO selectByNo(int no);
	public void cancelOrder(int no);
	//스탬프
	void updateCoupon(String id);
}
