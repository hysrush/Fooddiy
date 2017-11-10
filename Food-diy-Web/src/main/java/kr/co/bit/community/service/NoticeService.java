package kr.co.bit.community.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.co.bit.community.vo.NoticeBoardVO;


public interface NoticeService {
	
	// Notice Service
	List<NoticeBoardVO> selectAllNotice();
	NoticeBoardVO selectOneNotice(int no);
	void insertNotice(NoticeBoardVO noticeVO);
	void modifyNotice(NoticeBoardVO noticeVO);
	void removeNotice(int no);
	void updateViewcntNotice(int no, HttpSession session);
}
