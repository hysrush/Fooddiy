package kr.co.bit.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.member.dao.MemberDAO;
import kr.co.bit.menu.vo.CartVO;
import kr.co.bit.user.vo.UserVO;


@Service
public class MemberServiceImp  implements MemberService  {

	@Autowired
	private MemberDAO memberDAO;

	
	public List<UserVO> selectAllmember() {
		List<UserVO> list = memberDAO.selectAll();
		return list;
	}

	public UserVO selectOneMember(int no) {
		return memberDAO.selectOne(no);
	}

	public void insertMember(UserVO member) {
		memberDAO.insert(member);
		
	}

	public void modifyMember(UserVO member) {
		memberDAO.update(member);
		
	}
	
	@Override
	public void getMemberUpdate(UserVO member) {

		memberDAO.update(member);
	}
	
	@Override
	public void memberDelte(String id) {
		
		memberDAO.delete(id);
	}

	@Override
	public void setmyMenu(CartVO member) {
		memberDAO.setmyMenu(member);
		
	
	}

	@Override
	public List<CartVO> getmyMenu(String id) {
		return memberDAO.getmyMenu(id);
	}

	
}
