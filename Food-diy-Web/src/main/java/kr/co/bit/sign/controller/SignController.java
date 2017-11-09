package kr.co.bit.sign.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.bit.member.vo.MemberVO;
import kr.co.bit.sign.service.SignService;
import kr.co.bit.sign.vo.LoginVO;
import kr.co.bit.sign.vo.PhoneCertVO;

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
	
		model.addAttribute("login", new LoginVO());
		return "sign/login";
	}
	
	// 로그인
	// => 로그인 실패시 다시 로그인
	@RequestMapping(value="/login.do", method=RequestMethod.POST )
	public String signIn(LoginVO login, Model model) {
		
		MemberVO signIn = signServiceImp.login(login);
		
		if(signIn == null) {
			
			String msg = "아이디 또는 비밀번호를 확인해 주세요.";
			model.addAttribute("msg", msg);
			
			return "sign/login";
		}
		
		model.addAttribute("userVO", signIn);
		
		return "sign/sign";
	}
	@RequestMapping("/logout.do")
	public String logout(SessionStatus sessionStatus) {
		
		sessionStatus.setComplete();
		
		return "sign/logout";
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
	public String phoneCert(Model model) {
		
		model.addAttribute("phoneCert", new MemberVO()); // 회원 정보(이름, 번호)를 담을 VO 준비
		
		return "sign/phoneCertForm";
		
	}
	// 3. 인증 확인
	@RequestMapping(value="/phoneCertForm.do", method=RequestMethod.POST)
	public String phoneCertForm(MemberVO phoneCert, Model model) {
		
		// 휴대전화 인증할 때 받은 회원 정보 저장
		PhoneCertVO cert = new PhoneCertVO();
		
		cert.setName(phoneCert.getName());
		
		String[] phone = phoneCert.getPhone().split("-");
		String[] birth = phoneCert.getBirth().split("/");
		
		cert.setPhone1(phone[0]);
		cert.setPhone2(phone[1]);
		cert.setPhone3(phone[2]);
		
		cert.setBirthYear(birth[0]);
		cert.setBirthMonth(birth[1]);
		cert.setBirthDay(birth[2]);
		
		cert.setSex(phoneCert.getSex());
		
		// 전달
		model.addAttribute("phoneCert", cert);
		
		return "sign/signUp";
	}
	// 4. 회원 가입
	@RequestMapping(value="/signUp.do", method=RequestMethod.POST)
	public String signUp(PhoneCertVO phoneCert, Model model) {
		
		MemberVO memberVO = new MemberVO();
		
		memberVO.setId(phoneCert.getId());
		memberVO.setPw(phoneCert.getPw());
		memberVO.setName(phoneCert.getName());
		memberVO.setBirth(phoneCert.getBirthYear()+phoneCert.getBirthMonth()+phoneCert.getBirthDay());
		memberVO.setPhone(phoneCert.getPhone1() + "-" + phoneCert.getPhone2() + "-" + phoneCert.getPhone3());
		memberVO.setEmail(phoneCert.getEmail() + phoneCert.getEmailD());
		memberVO.setSex(phoneCert.getSex());
		
		signServiceImp.signUp(memberVO);
		
		// 회원가입 후 자동 로그인
		LoginVO login = new LoginVO();
		login.setId(memberVO.getId());
		login.setPw(memberVO.getPw());
		
		memberVO = signServiceImp.login(login);
		
		model.addAttribute("userVO", memberVO);
		
		return "sign/sign";
	}
	
	// id 중복 체크
	@RequestMapping("/checkId")
	public @ResponseBody int checkId(String id, Model model) {
		
		return signServiceImp.checkId(id);
	}
	
	
}
