package kr.co.bit.community.dao;

import java.util.List;

import kr.co.bit.community.vo.ClaimBoardVO;


public interface ClaimDAO {
	
	// Claim DAO
	List<ClaimBoardVO> selectAll();
	ClaimBoardVO selectOne(int no);
	void insert(ClaimBoardVO claimVO);
	void update(ClaimBoardVO claimVO);
	void delete(int no);
	void addViewcnt(int no);
}
