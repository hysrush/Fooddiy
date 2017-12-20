package kr.co.bit.dao;

import java.util.List;

import kr.co.bit.vo.MemberOrderVO;


public interface MemberOrderDAO {
	public List<MemberOrderVO> selectAll(String id);
	public MemberOrderVO selectByNo(int no);
	public void cancelOrder(int no);
}