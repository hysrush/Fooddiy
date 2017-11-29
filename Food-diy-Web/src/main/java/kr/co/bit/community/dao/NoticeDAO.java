package kr.co.bit.community.dao;

import java.util.List;

import kr.co.bit.community.vo.NoticeBoardVO;


public interface NoticeDAO {

	// Notice DAO
	List<NoticeBoardVO> selectAll();
	List<NoticeBoardVO> selectType(String type);
	NoticeBoardVO selectOne(int no);
	void insert(NoticeBoardVO noticeVO);
	void update(NoticeBoardVO noticeVO);
	void delete(int no);
	void addViewcnt(int no);
}
