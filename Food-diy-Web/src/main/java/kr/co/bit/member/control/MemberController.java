package kr.co.bit.member.control;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.bit.member.service.MemberService;
import kr.co.bit.menu.vo.MenuVO;
import kr.co.bit.user.vo.UserVO;

@Controller
@SessionAttributes("/member")
@RequestMapping("/member")
public class MemberController {
		
	@Autowired
	private MemberService memberService;
	
	    //회원정보
	 @RequestMapping("/memberDetail.do")
		public String memberDetail(Model model,HttpSession httpsession) {
		 
			return "member/memberDetail";
		}
	 //회원정보수정
	  @RequestMapping("/memberUpdate.do")
	    public String memberUpdate(@ModelAttribute UserVO vo){
		  MemberService.memberUpdate(vo);
	        return "redirect:member/memberUpdate";
	    }
	  
	  
	  //최근 주문 내역
		@RequestMapping(value="/Latest-Order.do")
		public String cart(Model model) {
			if (!model.containsAttribute("Latest-Order")) {
				model.addAttribute("Latest-Order", new ArrayList<MenuVO>());
			}
			return "member/Latest-Order";
		}
		
		//최근 주문 내역
		@RequestMapping(value="add", method = RequestMethod.POST)
		public String add(@ModelAttribute MenuVO menuVO,
				          @ModelAttribute("Latest-Order") List<MenuVO> LatestOrder) {
			LatestOrder.add(menuVO);
			return "redirect:/";
		}
}
		
		
/*
		public ModelAndView list(@RequestParam(defaultValue="titl") String serchOption, )
		
		
	}

	  
	  */
	
	 

		