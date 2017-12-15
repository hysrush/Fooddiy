package kr.co.bit.dao;

import java.util.List;

import kr.co.bit.event.vo.PagingVO;
import kr.co.bit.vo.SnsBoardVO;

public interface SnsDAO {

	
	List<SnsBoardVO> selectSns(PagingVO paging);
	List<SnsBoardVO> selectHit();
	int selectTotalPaging();
	
	void insert(SnsBoardVO snsVO);
	SnsBoardVO selectOne(int no);
	void addLikeSns(int no);
	
}
