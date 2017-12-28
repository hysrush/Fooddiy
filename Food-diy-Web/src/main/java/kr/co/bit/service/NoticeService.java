package kr.co.bit.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.co.bit.vo.NoticeBoardVO;


public interface NoticeService {
	
	// Notice Service
	List<NoticeBoardVO> selectAllNotice(String type, String searchOption, String keyword) throws Exception;
	int countNotice(String searchOption, String keyword) throws Exception;
	List<NoticeBoardVO> selectType(String type);
	NoticeBoardVO selectOneNotice(int no);
	void insertNotice(NoticeBoardVO noticeVO);
	void modifyNotice(NoticeBoardVO noticeVO);
	void removeNotice(int no);
	void removeNoticeSome(List<Integer> list);
	void updateViewcntNotice(int no, HttpSession session);
}
