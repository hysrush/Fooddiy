package kr.co.bit.community.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.co.bit.community.vo.ClaimBoardVO;

public interface ClaimService {
	
	// Claim Service
	List<ClaimBoardVO> selectAllClaim();
	ClaimBoardVO selectOneClaim(int no);
	void insertClaim(ClaimBoardVO claimVO);
	void modifyClaim(ClaimBoardVO claimVO);
	void removeClaim(int no);
	void updateViewcntClaim(int no, HttpSession session);
}