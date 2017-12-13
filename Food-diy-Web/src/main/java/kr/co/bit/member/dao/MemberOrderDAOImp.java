package kr.co.bit.member.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.member.vo.MemberOrderVO;


@Repository
public class MemberOrderDAOImp  implements MemberOrderDAO{

	
	@Autowired
	private SqlSessionTemplate session;
	private String url = "kr.co.bit.member.dao.";
	
	// 최근 주문 내역 목록
	public List<MemberOrderVO> selectAll(String id) {
		
		List<MemberOrderVO> allOrderList = session.selectList(url + "selectAllOrder", id);
		
		return allOrderList;
	}
	
	public MemberOrderVO selectByNo(int no) {
		MemberOrderVO orderList = session.selectOne(url + "selectByNo", no);
		return  orderList;
	}
	
	
	@Override
	public void cancelOrder(int no) {
		session.update(url + "cancelOrder", no);
	}

	
}
