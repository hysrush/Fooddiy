package kr.co.bit.sign.controller;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.bit.sign.service.SignService;
import kr.co.bit.sign.vo.PhoneCertVO;
import kr.co.bit.user.vo.UserVO;

/**
 * 
 * 로그인, 로그아웃 회원가입 API로그인 처리
 * 
 */
@SessionAttributes("loginVO")
@RequestMapping("/sign")
@Controller
public class SignController {

	@Autowired
	private SignService signServiceImp;
	/**
	 * 
	 *  1. 회원
	 * 	 (1) 가입
	 * 
	 */
	
	// - 휴대전화 인증할 것인지 확인
	@RequestMapping(value = "/signUp.do", method = RequestMethod.GET)
	public String phoneCert() {
		
		return "sign/phoneCert";
		
	}
	
	// - 인증 확인 - 이메일로 할까 생각 중
	@RequestMapping(value = "/phoneCertForm.do", method = RequestMethod.POST)
	public String phoneCertForm(UserVO phoneCert, Model model) {
		
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
		cert.setRoot("일반");
		
		// 전달
		model.addAttribute("phoneCert", cert);
		
		return "sign/signUp";
	}

	// - 회원 등록
	@RequestMapping(value = "/signUp.do", method = RequestMethod.POST)
	public String signUp(PhoneCertVO phoneCert, Model model) {
		
		UserVO userVO = new UserVO();
		
		userVO.setId(phoneCert.getId());
		userVO.setPw(phoneCert.getPw());
		userVO.setName(phoneCert.getName());
		userVO.setBirth(phoneCert.getBirthYear() + phoneCert.getBirthMonth() + phoneCert.getBirthDay());
		userVO.setPhone(phoneCert.getPhone1() + "-" + phoneCert.getPhone2() + "-" + phoneCert.getPhone3());
		userVO.setEmail(phoneCert.getEmail() + phoneCert.getEmailD());
		userVO.setSex(phoneCert.getSex());
		userVO.setRoot(phoneCert.getRoot());
		userVO.setType("U");
		
		signServiceImp.signUp(userVO);
		
		// 회원가입 후 자동 로그인
		UserVO login = new UserVO();
		login.setId(userVO.getId());
		login.setPw(userVO.getPw());
		
		userVO = signServiceImp.login(login);
		
		model.addAttribute("loginVO", userVO);
		model.addAttribute("msg", "가입 성공~!");
		
		return "sign/sign";
	}

	// - id 중복 체크
	@RequestMapping("/checkId")
	public @ResponseBody int checkId(String id, Model model) {
		
		return signServiceImp.checkId(id);
	}

	/**
	 * 
	 *  (2) 로그인
	 * 
	 * */
	
	// 로그인 화면
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String signInForm() {

		
		return "sign/login";
	}

	// => 로그인 실패시 다시 로그인
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String signIn(UserVO login, Model model) {

		UserVO signIn = signServiceImp.login(login);

		if (signIn == null) {
			String msg = "아이디 또는 비밀번호를 확인해 주세요.";
			model.addAttribute("msg", msg);
			
			return "sign/login";
		}

		model.addAttribute("loginVO", signIn);
		
		return "sign/sign";
	}

	// - 로그아웃
	@RequestMapping("/logout.do")
	public String logout(SessionStatus sessionStatus) {

		sessionStatus.setComplete();

		return "sign/logout";
	}
	
	// - id 찾기 - alert창
	@RequestMapping("/lostId")
	public String lostId(PhoneCertVO lost, Model model) {
		
		UserVO lostVO = signServiceImp.lostId(lost);
		
		if(lostVO == null) {
			model.addAttribute("msg", "입력하신 정보에 해당하는 가입 이력이 없습니다. "
					+ "회원가입 후 이용해 주세요.");
			return "sign/login";
		
		}
		// 아이디 일부 **처리
		model.addAttribute("msg", "고객님의 아이디는 <"+lostVO.getId()+"> 입니다.");
		/*model.addAttribute("lostId", lostVO.getId());*/
		
		return "sign/login";
	}
	
	// - pw 찾기 - 이메일로 전송
	@RequestMapping("/lostPw")
	public String lostPw(PhoneCertVO lost, Model model) {
		
		UserVO lostVO = signServiceImp.lostPw(lost);
		
		if( lostVO == null) {
			model.addAttribute("msg", "고객님이 입력하신 ID에 관한 정보가 없습니다. 확인 후 다시 이용해 주세요.");
			return "sign/login";
		}
		
		model.addAttribute("msg", "고객님의 이메일로 비밀번호가 전송되었습니다.");
		
		return "sign/login";
	}


	/**
	 * 
	 * 	(2)-1 API 로그인
	 * 
	 */

	// kakao api 로그인
	@RequestMapping(value = "/kakoLogin.do", method = RequestMethod.POST)
	public String kakaoLogin(UserVO login, Model model) {

		UserVO userVO = new UserVO();

		userVO = signServiceImp.login(login);

		// 가입한 적 있는지 확인
		if (userVO == null) {

			PhoneCertVO kakaoVO = new PhoneCertVO();
			kakaoVO.setId(login.getId());
			kakaoVO.setPw(login.getPw());

			model.addAttribute("kakaoVO", kakaoVO);
			return "sign/kakaoSignUp";
		}

		model.addAttribute("userVO", userVO);

		return "sign/sign";

	}
	
	// 카카오톡 가입
	@RequestMapping(value = "/kakaoSignUp.do", method = RequestMethod.POST)
	public String kakaoSignUp(PhoneCertVO kakaoVO, Model model, HttpSession session) {
		
		// 회원 가입
		UserVO kakao = new UserVO();
		
		kakao.setId(kakaoVO.getId());
		kakao.setPw(kakaoVO.getPw());
		kakao.setName(kakaoVO.getName());
		kakao.setPhone(kakaoVO.getPhone1() + "-" + kakaoVO.getPhone2() + "-" + kakaoVO.getPhone3());
		kakao.setEmail(kakaoVO.getEmail() + kakaoVO.getEmailD());
		kakao.setBirth(kakaoVO.getBirthYear() + "/" + kakaoVO.getBirthMonth() + "/" + kakaoVO.getBirthDay());
		kakao.setSex(kakaoVO.getSex());
		kakao.setRoot("카카오톡");
		
		signServiceImp.signUp(kakao);
		
		// 회원가입 후 로그인
		UserVO login = new UserVO();
		login.setId(kakaoVO.getId());
		login.setPw(kakaoVO.getPw());
		
		kakao = signServiceImp.login(login);
		
		model.addAttribute("loginVO", kakao);
		
		return "sign/sign";
	}

	// 네이버 로그인
	@RequestMapping(value = "/naverLoign.do", method = RequestMethod.GET)
	public String naverLogin(Model model) {

		model.addAttribute("api", new PhoneCertVO());

		return "sign/naverSignUp";

	}
	
	/**
	 * 
	 *  2. 비회원
	 * 	 - 인증
	 * 	 - 가입
	 * */
	
	// 이메일 인증 코드 발송
	@RequestMapping("/nonemail")
	public @ResponseBody List<Object> nonMemberCheck(UserVO nonMember, Model model) {
		
		List<Object> list = new ArrayList<>();
		String key = signServiceImp.sender(nonMember);
		
		list.add(key);
		list.add(nonMember);
		
		return list;
	}

	// 이메일 인증 후 session 객체에만 등록
	@RequestMapping(value="/nonemailCheck")
	public String nonMemberSign(UserVO nonMember, Model model, HttpSession session) {
		
		UserVO user = signServiceImp.nonSignUp(nonMember);
		
		session.setAttribute("nonMember", user);
		model.addAttribute("msg", "완료~");
		
		return "/sign/sign";
	}
	
	
	@RequestMapping("/nonlogout")
	public String nonLogout(String id, HttpSession session) {
		
		session.invalidate();
		
		return "sign/logout";
		
	}
	
	/**
	 * 
	 *  3. 비회원
	 * 	 - 주문조회
	 * */
	
	@RequestMapping("/orderCheck")
	public String orderCheck() {
		
		return null;
	}
	
	
}
