package kr.co.bit.dao;

import java.util.List;

import kr.co.bit.vo.NoticeBoardVO;


public interface NoticeDAO {

	// Notice DAO
	List<NoticeBoardVO> selectAll(String type, String searchOption, String keyword) throws Exception;
	int searchCnt(String type, String searchOption, String keyword) throws Exception;
	List<NoticeBoardVO> selectType(String type);
	NoticeBoardVO selectOne(int no);
	void insert(NoticeBoardVO noticeVO);
	void update(NoticeBoardVO noticeVO);
	void delete(int no);
	void deleteSome(List<Integer> list);
	void addViewcnt(int no);
}
