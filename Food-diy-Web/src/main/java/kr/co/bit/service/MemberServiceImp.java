package kr.co.bit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.MemberDAO;
import kr.co.bit.vo.CartVO;
import kr.co.bit.vo.ClaimBoardVO;
import kr.co.bit.vo.UserVO;


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

	@Override
	public List<CartVO> delmyMenu(List<String> noList) {
		return memberDAO.delmyMenu(noList);
	}
	@Override
	public List<ClaimBoardVO> delmyQnA(List<String> noList) {
		return memberDAO.delmyQnA(noList);
	}

	@Override
	public CartVO getmyMenuDetail(int no) {
		return memberDAO.getmyMenuDetail(no);
	}

	// 사용자 스탬프 조회
	public int selectStamp(String id) {
		return memberDAO.selectStamp(id);
	}

	
}
