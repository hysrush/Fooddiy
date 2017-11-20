package kr.co.bit.community.control;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.community.service.ClaimService;
import kr.co.bit.community.vo.ClaimBoardVO;

@RequestMapping("/community")
@Controller
public class ClaimController {
	
	@Autowired
	private ClaimService claimService;
	
	// <Claim 컨트롤러>
	// Claim 전체보기
	@RequestMapping("/claim.do")
	public ModelAndView listAll() {
		
		List<ClaimBoardVO> claimList = claimService.selectAllClaim();
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("community/claimList");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("claimList", claimList);
		
		return mav;
	}
	
	// Claim 새 글쓰기폼
	@RequestMapping(value="/claimWrite.do", method=RequestMethod.GET)
	public String writeForm(Model model) {
		
		// Form에서 가져온 Data를 ClaimBoardVO 객체 형태로 저장
		ClaimBoardVO claimVO = new ClaimBoardVO();
		// 공유영역에 등록
		model.addAttribute("claimVO", claimVO);
		
		return "community/claimWrite";
	}
	
	// Claim 새 글쓰기
	@RequestMapping(value="/claimWrite.do", method=RequestMethod.POST)
	public String write(@Valid ClaimBoardVO claimVO, BindingResult result) {
		
		if (result.hasErrors()) {
			// 에러일때 true => writeForm으로
			return "community/claimWrite";
		}
		// Claim 새 글 등록
		claimService.insertClaim(claimVO);
		
		return "redirect:/community/claim.do";
	}
	
	// Claim 글 상세내용 조회 & 게시글 조회수 증가 처리
	// ex) community/claimDetail.do?no=15
	@RequestMapping(value="/claimDetail.do", method=RequestMethod.GET)
	public ModelAndView detail(@RequestParam("no") int no, HttpSession session) {
		
		// 조회수 증가
		claimService.updateViewcntClaim(no, session);
		
		ClaimBoardVO claimVO = claimService.selectOneClaim(no);
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("community/claimDetail");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("claimVO", claimVO);
		
		return mav;
	}
}
