package kr.co.bit.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	/*@RequestMapping("/notice.do")
	public ModelAndView	listNotice() {
		
		List<NoticeBoardVO> noticeList = noticeService.selectType("A");
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("community/subway/noticeList");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("noticeList", noticeList);
		
		return mav;
	}*/
	// 공지사항 전체보기
	@RequestMapping("/notice.do")
	public ModelAndView	listNotice(@RequestParam(defaultValue="notice_title") String searchOption,
            @RequestParam(defaultValue="") String keyword) throws Exception {
		
		List<NoticeBoardVO> noticeList = noticeService.selectAllNotice("A", searchOption, keyword);
		// 레코드의 갯수
		int count = noticeService.countNotice("A", searchOption, keyword);

		// 데이터를 맵에 저장
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("count", count); // 레코드의 갯수
	    map.put("searchOption", searchOption); // 검색옵션
	    map.put("keyword", keyword); // 검색키워드
	    
	    ModelAndView mav = new ModelAndView();
	    mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
	    //setViewName : 어떤 페이지를 보여줄것인가
	    mav.setViewName("community/subway/noticeList");
	    //addObject : key 와 value 를 담아 보내는 메서드 
	    mav.addObject("noticeList", noticeList);
		
		return mav;
	}
	// 보도자료 전체보기
	@RequestMapping("/news.do")
	public ModelAndView listNews(@RequestParam(defaultValue="notice_title") String searchOption,
            @RequestParam(defaultValue="") String keyword) throws Exception {
		
		List<NoticeBoardVO> newsList = noticeService.selectAllNotice("B", searchOption, keyword);
		// 레코드의 갯수
		int count = noticeService.countNotice("B", searchOption, keyword);

		// 데이터를 맵에 저장
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("count", count); // 레코드의 갯수
	    map.put("searchOption", searchOption); // 검색옵션
	    map.put("keyword", keyword); // 검색키워드
	    
	    ModelAndView mav = new ModelAndView();
	    mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
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

		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("community/subway/noticeDetail");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("noticeVO", noticeVO);

		// file 존재하면,
		if (noticeVO.getFileOX().equals("O")) {
			// Mybatis에 매개변수 2개를 보내기 위해 map 생성
			Map<String, Object> fileMap = new HashMap<>();
			fileMap.put("boardNo", no);
			fileMap.put("name", "noticeFile");
			// 해당 번호에 맞는 fileVO 읽어오기
			List<FileVO> fileList = fileService.selectFileList(fileMap);
			mav.addObject("fileList",fileList);
		}

		// 줄바꿈 
		mav.addObject("br", "<br/>");
		mav.addObject("cn", "\n");
		
		return mav;
	}
	// file 다운로드
	@RequestMapping(value="/downloadFile.do", method=RequestMethod.GET)
	public void download(@RequestParam(value="no") int no, HttpServletResponse response) {
		try {
			fileService.downloadFile(response, no);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
