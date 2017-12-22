package kr.co.bit.service;

import java.util.List;

import kr.co.bit.vo.PagingVO;
import kr.co.bit.vo.SnsBoardVO;

public interface SnsService {

	List<SnsBoardVO> selectSns(PagingVO paging);
	List<SnsBoardVO> selectHit();
	List<SnsBoardVO> selectHit(String name);
	int selectTotalPaging();
	void update(SnsBoardVO snsVO);
	void delete(int no);
	
	void insert(SnsBoardVO snsVO);
	 SnsBoardVO selectOne(int no);
	 void addLikeSns(int no);
	
}
