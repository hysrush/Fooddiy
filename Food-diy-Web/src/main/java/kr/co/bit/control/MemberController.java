package kr.co.bit.control;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.service.CartService;
import kr.co.bit.service.ClaimService;
import kr.co.bit.service.FileService;
import kr.co.bit.service.MemberOrderService;
import kr.co.bit.service.MemberService;
import kr.co.bit.service.OrderService;
import kr.co.bit.service.SignService;
import kr.co.bit.vo.CartVO;
import kr.co.bit.vo.ClaimBoardVO;
import kr.co.bit.vo.DetailOrderVO;
import kr.co.bit.vo.FileVO;
import kr.co.bit.vo.MemberOrderVO;
import kr.co.bit.vo.UserVO;

@Controller
/* @SessionAttributes("/member") */
@SessionAttributes("loginVO")
@RequestMapping("/member")

public class MemberController {

	private static final int Latest = 0;
	private static final int Order = 0;
	@Autowired
	private MemberService memberService;
	@Autowired
	private SignService signService;
	@Autowired
	private CartService cart_Service;
	@Autowired
	private MemberOrderService service;
	@Autowired
	private OrderService orderService;
	
	// ---------------------------------------------------------------------------------------------------
	// 회원정보 페이지 보여 주는 거
	@RequestMapping("/memberDetail.do")
	public String memberDetail() {

		return "member/memberDetail";
	}

	// 회원수정 비밀번호 확인
	@RequestMapping(value = "/pwcheck.do", method = RequestMethod.POST)
	public String pwcheck(UserVO login, Model model) {

//		System.out.println(login.toString());
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
	public String memberUpdate(Model model) {

		model.addAttribute("loginVO", new UserVO());
		return "member/memberUpdate";
	}

	// 회원이 수정한 정보 db에 저장
	@RequestMapping(value = "/memberUpdate.do", method = RequestMethod.POST)
	public String memberUpdateForm(UserVO member, BindingResult result,
			@RequestParam(value = "file", required=false) MultipartFile file, Model model) throws Exception {

		if(file.isEmpty()) {
			
			member.setFile(member.getOriFile());
			memberService.getMemberUpdate(member);
			UserVO userVO = signService.login(member);

			model.addAttribute("loginVO", userVO);
			
			return "member/memberDetail";
			
		}
		
		// 1. fileName 설정 + eventVO에 fileName 저장
		String fileName = "C:\\Users\\bit-user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\" + file.getOriginalFilename();
		String afileName = "C:\\Users\\bit-user\\git\\Fooddiy-manager\\Food-manager-Web\\src\\main\\webapp\\upload\\" + file.getOriginalFilename();
		String saveFileName = file.getOriginalFilename();

		member.setFile(saveFileName);

		/*System.out.println(saveFileName);
		System.out.println("들어가나");*/

		// 2. 경로에 이미지파일 저장
		byte[] bytes;
		bytes = file.getBytes();
		BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File(fileName)));
		buffStream.write(bytes);
		buffStream.close();
		
		// 관리자 업로드 저장
		byte[] abytes;
		abytes = file.getBytes();
		BufferedOutputStream abuffStream = new BufferedOutputStream(new FileOutputStream(new File(afileName)));
		abuffStream.write(abytes);
		abuffStream.close();
		
		
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
		memberService.memberDelte(id);

		return "member/memberDelclear";

	}
	
	//나만의 메뉴 넣기	
	@RequestMapping(value = "/Latest-Order", method = RequestMethod.POST)
	public @ResponseBody String myMenu(CartVO member, Model model) throws Exception {

		memberService.setmyMenu(member);
		
		return "나만의 메뉴로 저~장 ☆";

	}
	
	//나만의 메뉴 select
	@RequestMapping(value = "/myMenu.do" )
	public String myMenuSelect(HttpSession session, Model model) throws Exception {

		UserVO loginVO = (UserVO)session.getAttribute("loginVO");
		String id = loginVO.getId();
		
		List<MemberOrderVO> orderList = memberService.getmyMenu(id);
		
		for (int i = 0; i < orderList.size(); ++i) {
			List<DetailOrderVO> list = new LinkedList<DetailOrderVO>();
			String menu = orderList.get(i).getMenu();
			String[] menus = menu.split("\\|\\|");

			for (int j = 0; j < menus.length; ++j) {
				DetailOrderVO vo = new DetailOrderVO();
				String[] oneMenu = menus[j].split("\\*");

				vo.setName(oneMenu[0]);
				vo.setBread(oneMenu[1]);
				vo.setCheese(oneMenu[2]);
				vo.setTopping(oneMenu[3]);
				vo.setVegetable(oneMenu[4]);
				vo.setSauce(oneMenu[5]);
				vo.setRequirement(oneMenu[6]);
				vo.setPic(oneMenu[7]);
				vo.setSize(oneMenu[8]);
				vo.setQty(new Integer(oneMenu[9]));
				vo.setPrice(oneMenu[10]);
				vo.setTotal_price(oneMenu[11]);
				list.add(vo);
			}
			orderList.get(i).setDetailOrderList(list);
		}
		
		model.addAttribute("orderList", orderList);
		
		return "member/myMenu";

	}
	
	//나만의 메뉴 디테일
	@RequestMapping(value ="/myMenuDetail.do")
	public ModelAndView myMenu(int no, ModelAndView mav) throws Exception {
		
		MemberOrderVO orderList = service.selectByNo(no);
		
		String menu = orderList.getMenu();
		String [] menus = menu.split("\\|\\|");
		
		
		List<DetailOrderVO> list = new LinkedList<DetailOrderVO>();
		for(int i = 0 ; i < menus.length; ++i) {
			DetailOrderVO vo = new DetailOrderVO();
			String [] oneMenu = menus[i].split("\\*");
			
			vo.setName(oneMenu[0]);
			vo.setBread(oneMenu[1]);
			vo.setCheese(oneMenu[2]);
			vo.setTopping(oneMenu[3]);
			vo.setVegetable(oneMenu[4]);
			vo.setSauce(oneMenu[5]);
			vo.setRequirement(oneMenu[6]);
			vo.setPic(oneMenu[7]);
			vo.setSize(oneMenu[8]);
			vo.setQty(new Integer(oneMenu[9]));
			vo.setPrice(oneMenu[10]);
			vo.setTotal_price(oneMenu[11]);
			
			list.add(vo);
		}
		
		orderList.setDetailOrderList(list);
		
		mav.addObject("orderList", orderList);
		mav.setViewName("member/myMenuDetail");
		return mav;
	}

	
	//나만의 메뉴 삭제
	@RequestMapping(value = "/myMenuDel.do")
	
		public String myMenuDel(@RequestParam List<String> noList, Model model) throws Exception {
		
		List<CartVO> cart = memberService.delmyMenu(noList);
		model.addAttribute("cartList", cart); 
		
		return "member/myMenu";

	}

	//주문내역 
	@RequestMapping(value = "/Latest-Order.do", method = RequestMethod.GET)
	public ModelAndView latestOrderList(HttpSession session, ModelAndView mav) {
		
		UserVO loginVO = (UserVO)session.getAttribute("loginVO");
		String id = loginVO.getId();
		
		List<MemberOrderVO>  favoriteMenuList = service.selectFavoriteMenu(id);
		for (int i = 0; i < favoriteMenuList.size(); ++i) {
			List<DetailOrderVO> list = new LinkedList<DetailOrderVO>();
			String menu = favoriteMenuList.get(i).getMenu();
			String[] menus = menu.split("\\|\\|");

			for (int j = 0; j < menus.length; ++j) {
				DetailOrderVO vo = new DetailOrderVO();
				String[] oneMenu = menus[j].split("\\*");

				vo.setName(oneMenu[0]);
				vo.setBread(oneMenu[1]);
				vo.setCheese(oneMenu[2]);
				vo.setTopping(oneMenu[3]);
				vo.setVegetable(oneMenu[4]);
				vo.setSauce(oneMenu[5]);
				vo.setRequirement(oneMenu[6]);
				vo.setPic(oneMenu[7]);
				vo.setSize(oneMenu[8]);
				vo.setQty(new Integer(oneMenu[9]));
				vo.setPrice(oneMenu[10]);
				vo.setTotal_price(oneMenu[11]);
				list.add(vo);
			}
			favoriteMenuList.get(i).setDetailOrderList(list);
		}
		
		
		mav.setViewName("member/Latest-Order");
		mav.addObject("orderList", favoriteMenuList);
		return mav;
	}
	
	//줄겨찾기 추가
	@RequestMapping(value="/Favorite-menu", method = RequestMethod.POST)
	public void addFavoriteMenu(HttpServletRequest request, HttpServletResponse response, HttpSession session, String no) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		
		System.out.println(no);
		System.out.println(no);
		System.out.println(no);
		UserVO loginVO = (UserVO)session.getAttribute("loginVO");
		String id = loginVO.getId();
		
		Map<String, String> info = new HashMap<>();
		info.put("id", id);
		info.put("no", no);
		
		service.addFavoriteMenu(info);
		
	}
	
	
	// 주문 내역 상세 보기
	@RequestMapping(value = "/Latest-OrderDetail.do",method = RequestMethod.GET) 
	public ModelAndView orderDetail(ModelAndView mav, @RequestParam("no") int no) {
		
		MemberOrderVO orderList = service.selectByNo(no);
		
		String menu = orderList.getMenu();
		String [] menus = menu.split("\\|\\|");
		
		
		List<DetailOrderVO> list = new LinkedList<DetailOrderVO>();
		for(int i = 0 ; i < menus.length; ++i) {
			DetailOrderVO vo = new DetailOrderVO();
			String [] oneMenu = menus[i].split("\\*");
			
			vo.setName(oneMenu[0]);
			vo.setBread(oneMenu[1]);
			vo.setCheese(oneMenu[2]);
			vo.setTopping(oneMenu[3]);
			vo.setVegetable(oneMenu[4]);
			vo.setSauce(oneMenu[5]);
			vo.setRequirement(oneMenu[6]);
			vo.setPic(oneMenu[7]);
			vo.setSize(oneMenu[8]);
			vo.setQty(new Integer(oneMenu[9]));
			vo.setPrice(oneMenu[10]);
			vo.setTotal_price(oneMenu[11]);
			
			list.add(vo);
		}
		
		orderList.setDetailOrderList(list);
		
		mav.addObject("orderList", orderList);
		mav.setViewName("member/Latest-OrderDetail");
		
		return mav;
	}
	
	// 주문취소
	@RequestMapping(value = "/orderCancel.do", method = RequestMethod.GET)
	public String cancelOrder(@RequestParam("no") String no, @RequestParam("url") String url, HttpServletRequest request,
			HttpServletResponse response, HttpSession session){

		UserVO loginVO = (UserVO)session.getAttribute("loginVO");
		String id = loginVO.getId();
		
		Map<String, String> info = new HashMap<>();
		info.put("no", no);
		info.put("id", id);
		
		
		orderService.cancelOrder(info);

		return "redirect:/member/" + url + ".do?";

	}
	
//	-------------------------------------------
	
	
	
/*//	나만의 메뉴 디테일
	@RequestMapping(value = "/mymenuDetail.do") 
	public ModelAndView myMenuDetail(ModelAndView mav, @RequestParam("no") int no) {
		
		MemberOrderVO orderVO = service.selectByNo(no);
		
		String menu = orderVO.getMenu();
		String [] menus = menu.split("\\|\\|");
		
		
		List<DetailOrderVO> list = new LinkedList<DetailOrderVO>();
		for(int i = 0 ; i < menus.length; ++i) {
			DetailOrderVO vo = new DetailOrderVO();
			String [] oneMenu = menus[i].split("\\*");
			
			vo.setName(oneMenu[0]);
			vo.setBread(oneMenu[1]);
			vo.setCheese(oneMenu[2]);
			vo.setTopping(oneMenu[3]);
			vo.setVegetable(oneMenu[4]);
			vo.setSauce(oneMenu[5]);
			vo.setRequirement(oneMenu[6]);
			vo.setPic(oneMenu[7]);
			vo.setSize(oneMenu[8]);
			vo.setQty(new Integer(oneMenu[9]));
			vo.setPrice(oneMenu[10]);
			vo.setTotal_price(oneMenu[11]);
			
			list.add(vo);
		}
		
		orderVO.setDetailOrderList(list);
		
		mav.addObject("memberorderVO", orderVO);
		mav.setViewName("member/todayOrderDetail");
		
		return mav;
	}*/


/*	
	// 최근 주문 내역 삭제
	@RequestMapping(value="/deleteCart", method=RequestMethod.POST)
	public String cartDelete(CartVO vo, Model model) throws Exception{
		
		List<CartVO> cart = cart_Service.cartDelete(vo);
		model.addAttribute("cartList", cart);
		
		return "member/Latest-Order";
	}
*/
	@RequestMapping(value = "/productQtyUpdate", method = RequestMethod.POST)
	public void ProductQtyUpdate(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "no") Integer no, @RequestParam(value = "totalQty") Integer totalQty,
			HttpSession session) throws Exception {

		response.setContentType("text/html;charset=UTF-8");

		System.out.println(no);
		System.out.println(totalQty);

		UserVO userVO = (UserVO) session.getAttribute("loginVO");
		CartVO cartVO = new CartVO();
		int number = no;

		cartVO.setNo(number);
		cartVO.setId(userVO.getId());
		cartVO.setQty(totalQty);

		cart_Service.updateProductQty(cartVO);
		List<CartVO> cartList = cart_Service.selectAllCart(cartVO);
		for (int i = 0; i < cartList.size(); ++i) {

			System.out.println(cartList.get(i));
		}
		session.setAttribute("cartList", cartList);
		System.out.println("수량 변경");
	}
	
	// 쿠폰 보여 주기
	@RequestMapping("/myStamp.do")
	public String selectStamp(String id, Model model) {
		System.out.println(id);
		int no = memberService.selectStamp(id);
		
		model.addAttribute("stamp", no);
		System.out.println(no);
		return "member/myStampDetail";
	}
}		