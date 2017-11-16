package kr.co.bit.member.control;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.member.service.MemberService;
import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.menu.vo.MenuVO;

@Controller
@SessionAttributes("/member")
@RequestMapping({"/order, /member"})
public class MemberController {
		
	    //회원정보
	 @RequestMapping(value="/memberDetail")
		public String memberDetail(Model model,HttpSession httpsession) {
			return "memberDetail";
		}
	 //회원정보수정
	  @RequestMapping("member/memberUpdate.do")
	    public String memberUpdate(@ModelAttribute MemberVO vo){
		  MemberService.memberUpdate(vo);
	        return "redirect:/member/memberUpdate.do";
	    }
	  
	  
	  //최근 주문 내역
		@RequestMapping(method = RequestMethod.GET)
		public String getCart(Model model) {
			if (!model.containsAttribute("Latest-Order")) {
				model.addAttribute("Latest-Order", new ArrayList<MenuVO>());
			}
			return "member";
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
	
	 

		