package kr.co.bit.sign.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.sign.service.SignService;
import kr.co.bit.sign.vo.LoginVO;

/**
 * 
 * 로그인, 로그아웃
 * 회원가입
 * API로그인 처리
 * 
 * */
@SessionAttributes("userVO")
@RequestMapping("/sign")
@Controller
public class SignController {

	@Autowired
	private SignService signServiceImp;
	
	
	/**
	 * 로그인
	 * */
	
	// 로그인 화면 이동
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String signInForm(Model model) {
	
	//	model.addAttribute("user", new LoginVO());
		return "sign/login";
	}
	
	// 로그인
	// => 실패시 다시 로그인
	@RequestMapping(value="/login.do", method=RequestMethod.POST )
	public String signIn(LoginVO login, Model model) {
		
		LoginVO signIn = signServiceImp.login(login);
		
		if(signIn == null) {
			
			String msg = "아이디 또는 비밀번호를 확인해 주세요.";
			model.addAttribute("msg", msg);
			
			return "sign/login";
		}
		model.addAttribute("userVO", signIn);
		
		return "index";
	}
	
	/**
	 * 회원가입
	 * 
	 * */
	
	// 1. 휴대전화 인증할 것인지 확인
	@RequestMapping(value="/signUp.do", method=RequestMethod.GET)
	public String phoneCertForm() {
		
		return "sign/phoneCert";
		
	}
	// 2. 휴대전화 인증화면으로 이동
	@RequestMapping(value="/phoneCertForm.do", method=RequestMethod.GET)
	public String phoneCer1t(Model model) {
		
		model.addAttribute("phoneCert", new MemberVO()); // 회원 정보(이름, 번호)를 담을 VO 준비
		
		return "sign/phoneCertForm";
		
	}
	// 3. 인증 확인
	@RequestMapping(value="/phoneCertForm.do", method=RequestMethod.POST)
	public String phoneCert(MemberVO phoneCert, Model model) {
		
		model.addAttribute("phoneCert", phoneCert); // 회원 인증할 때 받은 정보
		model.addAttribute("msg", "인증되었습니다.");
		
		return "sign/signUp";
	}
	// 4. 회원 가입
	@RequestMapping(value="/signUp.do", method=RequestMethod.POST)
	public String signUp(MemberVO memberVO, Model model) {
		
		signServiceImp.signUp(memberVO);
		
		// 회원가입 후 자동 로그인
		LoginVO login = new LoginVO();
		
		login.setId(memberVO.getId());
		login.setPw(memberVO.getPw());
		
		model.addAttribute("userVO", login);
		
		return "index";
	}
	
	
	
}
