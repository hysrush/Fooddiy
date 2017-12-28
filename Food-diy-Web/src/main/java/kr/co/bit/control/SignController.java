package kr.co.bit.control;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.bit.service.CartService;
import kr.co.bit.service.CartStoreService;
import kr.co.bit.service.SignService;
import kr.co.bit.vo.CartStoreVO;
import kr.co.bit.vo.CartVO;
import kr.co.bit.vo.OrderVO;
import kr.co.bit.vo.PhoneCertVO;
import kr.co.bit.vo.UserVO;

/**
 * 
 * 로그인, 로그아웃 회원가입 API로그인 처리
 * 
 */
@SessionAttributes({"loginVO", "cartVO", "storeVO", "cartList", "cartStoreVO"})
@RequestMapping({"/sign"})
@Controller
public class SignController {

	@Autowired
	private SignService signServiceImp;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private CartStoreService cartStoreService;
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
	
	// - 인증 확인 
	@RequestMapping(value = "/phoneCertForm.do", method = RequestMethod.POST)
	public String phoneCertForm(UserVO phoneCert, Model model) {
		
		/*System.out.println(phoneCert.toString());*/
		// 회원 가입했는지 확인(번호랑 이름)
		int num = signServiceImp.checkMember(phoneCert);
		if(num == 1) {
			model.addAttribute("msg", "이미 가입한 기록이 있습니다.");
			return "sign/login";
		}
		
		
		phoneCert.setRoot("일반");
		
		// 전달
		model.addAttribute("phoneCert", phoneCert);
		
		return "sign/signUp";
	}

	// - 회원 등록
	@RequestMapping(value = "/signUp.do", method = RequestMethod.POST)
	public String signUp(UserVO phoneCert, Model model, RedirectAttributes redirect) {
		
		phoneCert.setType("U");
		phoneCert.setFile("null");
		
		/*System.out.println(phoneCert.toString());*/
		signServiceImp.signUp(phoneCert);
		
		// 회원가입 후 자동 로그인
		phoneCert = signServiceImp.login(phoneCert);
		
		model.addAttribute("loginVO", phoneCert);
		
		redirect.addFlashAttribute("msg", "[ "+phoneCert.getId()+" ] 님 회원가입에 성공!");
		
		return "redirect:/main/Start";
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
	public String signIn(UserVO login, Model model, HttpSession session, RedirectAttributes redirect) {
		
		System.out.println(login.toString());
		UserVO signIn = signServiceImp.login(login);
		
		// 아이디랑 비밀번호가 맞는지 확인
		if (signIn == null) {
			String msg = "아이디 또는 비밀번호를 확인해 주세요.";
			model.addAttribute("msg", msg);
			
			return "sign/login";
		}
		
		String id = signIn.getId();
		
		//장바구니
        CartVO cartVO = new CartVO();
        cartVO.setId(id);
		
        List<CartVO> cartList = cartService.selectAllCart(cartVO);
        CartStoreVO cartStoreVO = cartStoreService.selectOneCartStore(id);
        
        if(cartStoreVO != null) {
        	model.addAttribute("cartStoreVO", cartStoreVO);
        }
        
		model.addAttribute("cartList", cartList);
		model.addAttribute("loginVO", signIn);
		
		redirect.addFlashAttribute("msg", "[ "+signIn.getId()+" ] 님 로그인 성공!");
		
		return "redirect:/main/Start";
	}

	// - 로그아웃
	@RequestMapping("/logout")
	public String logout(SessionStatus sessionStatus, Model model, HttpSession session/*, RedirectAttributes redirect*/) {
		
		sessionStatus.setComplete();
		/*System.out.println(session.getAttribute("cartList"));*/
		
		/*redirect.addFlashAttribute("msg", "로그아웃");*/
		
		return "redirect:/main/Start";
	}
	
	
	// - id 찾기 - alert창
	@RequestMapping("/lostId")
	public String lostId(UserVO lost, Model model) {
		
		UserVO lostVO = signServiceImp.lostId(lost);
		
		if(lostVO == null) {
			model.addAttribute("msg", "입력하신 정보에 해당하는 가입 이력이 없습니다. 회원가입 후 이용해 주세요.");
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
	public String kakaoLogin(UserVO login, Model model, RedirectAttributes redirect) {

		UserVO userVO = signServiceImp.login(login);
		// 가입한 적 있는지 확인
		if (userVO == null) {

			PhoneCertVO kakaoVO = new PhoneCertVO();
			kakaoVO.setId(login.getId());
			kakaoVO.setPw(login.getPw());

			model.addAttribute("kakaoVO", kakaoVO);
			return "sign/kakaoSignUp";
		}
		String id = userVO.getId();
		
		//장바구니
        CartVO cartVO = new CartVO();
        cartVO.setId(id);
		
        List<CartVO> cartList = cartService.selectAllCart(cartVO);
        CartStoreVO cartStoreVO = cartStoreService.selectOneCartStore(id);
        
        if(cartStoreVO != null) {
        	model.addAttribute("cartStoreVO", cartStoreVO);
        }
        
		model.addAttribute("cartList", cartList);
		model.addAttribute("loginVO", userVO);
		
		redirect.addFlashAttribute("msg", "[ "+userVO.getName()+" ] 님 로그인 성공");
		
		return "redirect:/main/Start";

	}
	
	// 카카오톡 가입
	@RequestMapping(value = "/kakaoSignUp.do", method = RequestMethod.POST)
	public String kakaoSignUp(PhoneCertVO kakaoVO, Model model, HttpSession session, RedirectAttributes redirect) {
		
		// 회원 가입
		UserVO kakao = new UserVO();
		
		kakao.setId(kakaoVO.getId());
		kakao.setPw(kakaoVO.getPw());
		kakao.setName(kakaoVO.getName());
		kakao.setPhone(kakaoVO.getPhone1() + "-" + kakaoVO.getPhone2() + "-" + kakaoVO.getPhone3());
		kakao.setEmail(kakaoVO.getEmail() + kakaoVO.getEmailD());
		kakao.setBirth(kakaoVO.getBirthYear() + "/" + kakaoVO.getBirthMonth() + "/" + kakaoVO.getBirthDay());
		kakao.setSex(kakaoVO.getSex());
		kakao.setType("U");
		kakao.setFile("null");
		kakao.setRoot("카카오톡");
		
		signServiceImp.signUp(kakao);
		
		// 회원가입 후 로그인
		UserVO login = new UserVO();
		login.setId(kakaoVO.getId());
		login.setPw(kakaoVO.getPw());
		
		kakao = signServiceImp.login(login);
		
		model.addAttribute("loginVO", kakao);
		
		redirect.addFlashAttribute("msg", "[ "+kakao.getName()+" ] 님 카카오 로그인 성공!");
		
		return "redirect:/main/Start";
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
	public String nonMemberSign(UserVO nonMember, Model model, HttpSession session, RedirectAttributes redirect) {
		
		UserVO user = signServiceImp.nonSignUp(nonMember);
		
		session.setAttribute("loginVO", user);
		
		redirect.addFlashAttribute("msg", "[ "+user.getName()+" ] 님 로그인 성공!");
		
		return "redirect:/main/Start";
	}
	
	// session저장만 할 것임
	@RequestMapping("/nonlogout")
	public String nonLogout(String id, HttpSession session) {
		
		session.invalidate();
		
		return "main/index";
		
	}
	
	/**
	 * 
	 *  3. 비회원
	 * 	 - 주문조회
	 * */
	
	// 주문조회 페이지로 이동
	@RequestMapping({"/orderCheck"})
	public String orderCheck() {
		
		return "sign/nonMenu";
	}
	
	@RequestMapping("/orderCheckForm")
	public @ResponseBody int orderCheckForm(String num, Model model) {
		
		int code = signServiceImp.orderCheck(num);

		return code;
	}
	
	@RequestMapping("/{no}/nonMenuDetail")
	public String orderMenuDetail(@PathVariable String no, Model model) {
		
		OrderVO order = signServiceImp.orderDetail(no);
		CartVO menu = new CartVO();
		
		String[] m1 = order.getMenu().split("\\|\\|");
		
		for(int i=0; i<m1.length; i++) {
			System.out.println(m1[i]);
			String[] m2 = m1[i].split("\\*\\*\\/");
			// 메뉴 디테일
			String[] m3 = m2[0].split("\\*");
			menu.setName(m3[0]);
			menu.setBread(m3[1]);
			menu.setCheese(m3[2]);
			menu.setTopping(m3[3]);
			menu.setVegetable(m3[4]);
			menu.setSauce(m3[5]);
			
			// 사진
			System.out.println(m2[1]);
			String[] m4 = m2[1].split("\\*");
			menu.setPic(m4[0]);
			menu.setSize(m4[1]);
			menu.setQty(Integer.parseInt(m4[2]));
			menu.setPrice(m4[3]);
			menu.setTotal_price(m4[4]);
		}
		
		Map<String, Object> orderMap = new HashMap<>();
		
		orderMap.put("order", order);
		orderMap.put("menu", menu);
		
		model.addAttribute("orderMenu", orderMap);
		
		return "sign/nonMenuDetail";
	}
	
}
