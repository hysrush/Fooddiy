package kr.co.bit.member.service;

import java.util.List;

import kr.co.bit.member.vo.MemberOrderVO;
import kr.co.bit.vo.OrderVO;


public interface MemberOrderService {
	public List<MemberOrderVO> selectAll(String id);
	public MemberOrderVO selectByNo(int no);
	public void cancelOrder(int no);
}
