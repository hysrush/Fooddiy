package kr.co.bit.dao;

import java.util.List;

import kr.co.bit.event.vo.PagingVO;
import kr.co.bit.vo.SnsBoardVO;

public interface SnsDAO {

	
	List<SnsBoardVO> selectSns(PagingVO paging);
	List<SnsBoardVO> selectHit();
	int selectTotalPaging();
	
	void delete(int no);
	void update(SnsBoardVO snsVO);
	void insert(SnsBoardVO snsVO);
	SnsBoardVO selectOne(int no);
	void addLikeSns(int no);
	
}
