package kr.co.bit.member.control;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.community.service.ClaimService;
import kr.co.bit.community.vo.ClaimBoardVO;
import kr.co.bit.member.service.MemberService;
import kr.co.bit.menu.vo.MenuVO;
import kr.co.bit.sign.service.SignService;
import kr.co.bit.user.vo.UserVO;

@Controller
/* @SessionAttributes("/member") */
@SessionAttributes("loginVO")
@RequestMapping("/member")

public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private SignService signService;
	@Autowired
	private ClaimService claimService;
	
	
	
	
	@RequestMapping("/myMenu.do")
	public String myMenu() {

		return "member/myMenu";

	}

	/*
	 * @RequestMapping("/memberDelcheck.do") public String memberDelcheck(){
	 * 
	 * return "member/memberDelcheck";
	 * 
	 * }
	 * 
	 * @RequestMapping("/memberDelclear.do") public String memberDelclear(){
	 * 
	 * return "member/memberDelclear";
	 * 
	 * }
	 * 
	 */
	// ---------------------------------------------------------------------------------------------------
	// 회원정보 페이지 보여 주는 거
	@RequestMapping("/memberDetail.do")
	public String memberDetail() {

		return "member/memberDetail";
	}

	// 회원수정 비밀번호 확인
	@RequestMapping(value = "/pwcheck.do", method = RequestMethod.POST)
	public String pwcheck(UserVO login, Model model) {

		System.out.println(login.toString());
		UserVO signIn = signService.login(login);

		if (signIn == null) {

			String msg = "비밀번호를 확인해 주세요.";
			model.addAttribute("msg", msg);

			return "member/memberDetail";
		}

		return "member/memberUpdate";
	}

	// 회원 탈퇴 비밀번호 확인
	@RequestMapping(value = "/delCheck.do", method = RequestMethod.POST)
	public String delCheck(UserVO login, Model model) {

		System.out.println(login.toString());
		UserVO signIn = signService.login(login);

		if (signIn == null) {

			String msg = "비밀번호를 확인해 주세요.";
			model.addAttribute("msg", msg);

			return "member/memberDetail";
		}

		return "member/memberDelcheck";
	}

	// 회원정보수정 페이지 보여 주는 거
	@RequestMapping(value = "/memberUpdate.do", method = RequestMethod.GET)
	public String memberUpdate() {

		return "member/memberUpdate";
	}

	// 회원이 수정한 정보 db에 저장
	@RequestMapping(value = "/memberUpdate.do", method = RequestMethod.POST)
	public String memberUpdateForm(UserVO member, Model model) {

		System.out.println(member.toString());
		memberService.getMemberUpdate(member);
		UserVO userVO = signService.login(member);

		model.addAttribute("loginVO", userVO);

		return "member/memberDetail";

	}

	// 회원탈퇴 비밀번호 확인창
	@RequestMapping(value = "/memberDel")
	public String memberDel() {

		return "member/memberDel";
	}

	// 회원탈퇴
	@RequestMapping(value = "/memberDelCheck.do")
	public String memberPwCheck(String id, SessionStatus session) throws Exception {

		session.setComplete();
		System.out.println(id);
		memberService.memberDelte(id);

		return "member/memberDelclear";

	}

	// 최근 주문 내역
	@RequestMapping(value = "/Latest-Order.do")
	public String cart(Model model) {
		if (!model.containsAttribute("Latest-Order")) {
			model.addAttribute("Latest-Order", new ArrayList<MenuVO>());
		}
		return "member/Latest-Order";
	}

	// 최근 주문 내역
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String add(@ModelAttribute MenuVO menuVO, @ModelAttribute("Latest-Order") List<MenuVO> LatestOrder) {
		LatestOrder.add(menuVO);
		return "redirect:/";
	}
	
	// <Claim 컨트롤러>
	// Claim 전체보기
	@RequestMapping("/myQnA.do")
	public ModelAndView listAll(String id) {
		
		List<ClaimBoardVO> claimList = claimService.selectClaim(id);
		System.out.println(claimList);
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("member/myQnA");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("claimList", claimList);
		

		return mav;
	}
	
	
	
	
	
}		