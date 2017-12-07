package kr.co.bit.member.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.menu.vo.CartVO;
import kr.co.bit.user.vo.UserVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<UserVO> selectAll() {
		List<UserVO> list = sqlSession.selectList("kr.co.bit.member.dao.selectAllMember");
		return list;
	}

	public UserVO selectOne(int no) {
		return sqlSession.selectOne("kr.co.bit.member.dao.selectByNo", no);

	}

	public void insert(UserVO member) {
		sqlSession.insert("kr.co.bit.member.dao.insertBoard", member);

	}

	public void update(UserVO vo) {

		sqlSession.update("kr.co.bit.member.dao.memberUpdate", vo);

	}

	@Override
	public void delete(String id) {

		sqlSession.delete("kr.co.bit.member.dao.memberDelete", id);
	}

	public void updateStore(UserVO userVO) {
		sqlSession.update("kr.co.bit.member.dao.updateStore", userVO);
	}

	@Override
	public void setmyMenu(CartVO member) {
		sqlSession.insert("kr.co.bit.member.dao.setmyMenu", member);
	}

	@Override
	public List<CartVO> getmyMenu(String id) {
		return sqlSession.selectList("kr.co.bit.member.dao.getmyMenu", id);
	}

	@Override
	public List<CartVO> delmyMenu(List<String> noList) {

		List<CartVO> cart = new ArrayList<>();
		
		for(int i=0; i<noList.size(); i++) {
			
			sqlSession.delete("kr.co.bit.member.dao.delmyMenu", Integer.parseInt(noList.get(i)));
			
		}
		
		return null;
	}

}
