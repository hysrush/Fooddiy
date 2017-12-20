package kr.co.bit.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.service.FileService;
import kr.co.bit.service.NoticeService;
import kr.co.bit.vo.FileVO;
import kr.co.bit.vo.NoticeBoardVO;

@RequestMapping("/community/subway")
@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	@Autowired
	private FileService fileService;
	
	// <Notice 컨트롤러>
	// 공지사항 전체보기
	@RequestMapping("/notice.do")
	public ModelAndView	listNotice(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		
		List<NoticeBoardVO> noticeList = noticeService.selectType("A");
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("community/subway/noticeList");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("noticeList", noticeList);
		
		return mav;
	}
	// 보도자료 전체보기
	@RequestMapping("/news.do")
	public ModelAndView listNews() {
		
		ModelAndView mav = new ModelAndView();
		
		List<NoticeBoardVO> newsList = noticeService.selectType("B");
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("community/subway/newsList");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("newsList", newsList);
		
		return mav;
	}
	// Notice 글 상세내용 조회 & 게시글 조회수 증가 처리
	// ex) community/subway/noticeDetail.do?no=15
	@RequestMapping(value="/noticeDetail.do", method=RequestMethod.GET)
	public ModelAndView detail(@RequestParam("no") int no, HttpSession session) {

		// 조회수 증가
		noticeService.updateViewcntNotice(no, session);
		
		NoticeBoardVO noticeVO = noticeService.selectOneNotice(no);
		FileVO fileVO = fileService.selectOneFile(no);
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("community/subway/noticeDetail");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("noticeVO", noticeVO);
		mav.addObject("fileVO", fileVO);
		// 줄바꿈 
		mav.addObject("br", "<br/>");
		mav.addObject("cn", "\n");
		
		return mav;
	}
}