package kr.co.bit.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.member.dao.MemberDAO;
import kr.co.bit.member.vo.MemberVO;


@Service
public class MemberServiceImp  implements MemberService  {

	@Autowired
	private MemberDAO memberDAO;

	
	public List<MemberVO> selectAllmember() {
		List<MemberVO> list = memberDAO.selectAll();
		return list;
	}

	public MemberVO selectOneMember(int no) {
		return memberDAO.selectOne(no);
	}

	public void insertMember(MemberVO member) {
		memberDAO.insert(member);
		
	}

	public void modifyMember(MemberVO member) {
		memberDAO.update(member);
		
	}

	public void removeMember(int no) {
		memberDAO.delete(no);
		
	}
	  public void memberUpdate(MemberVO vo) {
	        memberDAO.update(vo);
	    }

	
	


}
