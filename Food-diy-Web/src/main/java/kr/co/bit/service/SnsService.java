package kr.co.bit.service;

import java.util.List;

import kr.co.bit.event.vo.PagingVO;
import kr.co.bit.vo.SnsBoardVO;

public interface SnsService {

	List<SnsBoardVO> selectSns(PagingVO paging);
	int selectTotalPaging();
	
	void insert(SnsBoardVO snsVO);
	 SnsBoardVO selectOne(int no);
	 void addLikeSns(int no);
	
}
