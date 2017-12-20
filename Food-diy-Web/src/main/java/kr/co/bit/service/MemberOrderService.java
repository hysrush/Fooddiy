package kr.co.bit.service;

import java.util.List;

import kr.co.bit.vo.MemberOrderVO;
import kr.co.bit.vo.OrderVO;


public interface MemberOrderService {
	public List<MemberOrderVO> selectAll(String id);
	public MemberOrderVO selectByNo(int no);
	public void cancelOrder(int no);
}
