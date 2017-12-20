package kr.co.bit.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.vo.MemberOrderVO;


@Repository
public class MemberOrderDAOImp  implements MemberOrderDAO{

	
	@Autowired
	private SqlSessionTemplate session;
	private String url = "kr.co.bit.member.dao.";
	
	// 최근 주문 내역 목록
	public List<MemberOrderVO> selectAll(String id) {
		
		List<MemberOrderVO> allOrderList = session.selectList(url + "selectAllOrder", id);
		
		for(int i=0; i<allOrderList.size(); i++) {
			System.out.println(allOrderList.get(i).getMenu());
			String[] name = allOrderList.get(i).getMenu().split("\\*\\/");
			
			
			System.out.println("name " + i + " : " + name[1]);
			System.out.println(name[1].split("\\*")[0]);
			allOrderList.get(i).setPic(name[1].split("\\*")[0]);
		}
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
