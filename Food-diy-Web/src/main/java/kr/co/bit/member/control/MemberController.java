package kr.co.bit.member.control;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.member.service.MemberService;
import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.member.vo.QnABoardVO;


@Controller
@RequestMapping("/member")
public class MemberController {
		
	    
	 @RequestMapping(value="/memberDetail")
		public String memberDetail(Model model,HttpSession httpsession) {
			return "memberDetail";
		}
	 
	  @RequestMapping("member/memberUpdate.do")
	    public String memberUpdate(@ModelAttribute MemberVO vo){
		   MemberVO.memberUpdate(vo);
	        return "redirect:/member/memberUpdate.do";
	    }
	  
	  
	  
		@Autowired
		private MemberService memberService;
		
		@RequestMapping("/myQnA.do")
		public ModelAndView list() {
			List<QnABoardVO> memberList = memberService.selectAllQnA();
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("member/myQnA.jsp");
			mav.addObject("memberList", memberList);
			
			return mav;
			
		}
	}
	 

		