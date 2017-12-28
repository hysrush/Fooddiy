package kr.co.bit.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.vo.MemberOrderVO;
import kr.co.bit.vo.OrderVO;
import kr.co.bit.vo.UserStamp;


@Repository
public class MemberOrderDAOImp  implements MemberOrderDAO{

	
	@Autowired
	private SqlSessionTemplate session;
	private String url = "kr.co.bit.member.dao.";
	
	// 최근 주문 내역 목록
	public List<MemberOrderVO> selectFavoriteMenu(String id) {
		
		List<MemberOrderVO> allFavoriteMenu = session.selectList(url + "selectAllOrder", id);
		
		return allFavoriteMenu;
	}
	
	public MemberOrderVO selectByNo(int no) {
		MemberOrderVO orderList = session.selectOne(url + "selectByNo", no);
		return  orderList;
	}
	
	
	@Override
	public void cancelOrder(int no) {
		session.update(url + "cancelOrder", no);
	}

	// 스탬프
	@Override
	public void updateCoupon(String id) {
		
		// 사용자의 주문 전 스탬프 확인
		int stemp = session.selectOne(url+"selectById", id);
		
		UserStamp p = new UserStamp();
		
		p.setId(id);
		p.setStamp(++stemp);
		
		session.update(url+"updateCoupon", p);
		
	}
	
	@Override
	public void addFavoriteMenu(Map<String, String> info) {
		session.insert(url + "addMyMenu", info);
	}
	
}
