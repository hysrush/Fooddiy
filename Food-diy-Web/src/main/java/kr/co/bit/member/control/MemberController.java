package kr.co.bit.member.control;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/member")
public class MemberController {
		
	    
	 @RequestMapping(value="/memberDetail")
		public String memberDetail(Model model,HttpSession httpsession) {
			return "memberDetail";
		}


	}
	 

		