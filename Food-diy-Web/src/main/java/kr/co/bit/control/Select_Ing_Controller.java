package kr.co.bit.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.menu.service.CartService;
import kr.co.bit.menu.service.CartStoreService;
import kr.co.bit.menu.service.Select_Ing_Service;
import kr.co.bit.user.vo.UserVO;
import kr.co.bit.vo.CartStoreVO;
import kr.co.bit.vo.CartVO;
import kr.co.bit.vo.IngredientsVO;

@RequestMapping("/menu")
@Controller
public class Select_Ing_Controller {

	@Autowired
	private Select_Ing_Service ing_Service;

	@Autowired
	private CartService cart_Service;

	@Autowired
	private CartStoreService cartStore_Service;

	@RequestMapping(value = "/select_ingredients.do", method = RequestMethod.POST)
	public ModelAndView selectIngreidents(HttpSession session, String storeName, String storeAddr, String storePhone,
			 CartVO cartVO, Model model) {

		UserVO userVO = (UserVO) session.getAttribute("loginVO");
		String id = userVO.getId();
		userVO.setStore(storeName);

		// 기존에 session 등록된 선택된 지점을 불러온다.
		CartStoreVO cartStoreVO = (CartStoreVO) session.getAttribute("cartStoreVO");
		CartVO sessionCartVO = (CartVO)session.getAttribute("sessionCartVO");
		
		// session에 등록된 지점이 없는 경우 cartStore에 지점 정보를 저장 후 세션에 등록
		if (cartStoreVO == null) {
			
			cartStoreVO = new CartStoreVO();
			cartStoreVO.setId(id);
			cartStoreVO.setStoreName(storeName);
			
			String addr = storeAddr.replaceAll(",", " ");
			
			cartStoreVO.setStoreAddr(addr);
			cartStoreVO.setStorePhone(storePhone);
			cartStore_Service.insertCartStore(cartStoreVO);

			session.setAttribute("cartStoreVO", cartStoreVO);
		} 
		
		if(sessionCartVO != null) {
			cartVO = sessionCartVO;
			session.setAttribute("sessionCartVO", null);
		}
			 
			
		System.out.println("select Ingredients : " + cartVO);
		
		// select_ingredient.jsp에 보여줄 재료정보를 불러온다.
		List<IngredientsVO> ingList = ing_Service.selectAllIng();

		ModelAndView mav = new ModelAndView();
		mav.setViewName("menu/select_ingredients");
		mav.addObject("ingList", ingList);
		model.addAttribute("cartVO", cartVO);

		return mav;
	}

	@RequestMapping(value = "/cart.do", method = RequestMethod.POST)
	public String Add_cart(@ModelAttribute @Valid CartVO cartVO, HttpSession session,
			String storeName, String storeAddr, String storePhone) {

		
		CartStoreVO cartStoreVO = (CartStoreVO) session.getAttribute("cartStoreVO");
		CartVO sessionCartVO = (CartVO)session.getAttribute("sessionCartVO");
		
		if(sessionCartVO != null) {
			cartVO = sessionCartVO;
			String id = cartVO.getId();
			cartStoreVO = new CartStoreVO();
			
			cartStoreVO.setId(id);
			cartStoreVO.setStoreName(storeName);
			
			String addr = storeAddr.replaceAll(",", " ");
			
			cartStoreVO.setStoreAddr(addr);
			cartStoreVO.setStorePhone(storePhone);
			cartStore_Service.insertCartStore(cartStoreVO);

			session.setAttribute("cartStoreVO", cartStoreVO);
			session.setAttribute("sessionCartVO", null);
		}
		
		String type = cartVO.getType();
		
		if (type.equals("S") || type.equals("N") || type.equals("D")) {

			String price = cartVO.getPrice();
			cartVO.setTotal_price(price);
			cartVO.setBread(" ");
			cartVO.setCheese(" ");
			cartVO.setTopping(" ");
			cartVO.setVegetable(" ");
			cartVO.setSauce(" ");
			cartVO.setRequirement(" ");
			cartVO.setSize(" ");

			System.out.println(cartVO);
			cart_Service.insertCart(cartVO);

			// 모든 잘바구니 불러오기
			List<CartVO> cartList = cart_Service.selectAllCart(cartVO);

			session.setAttribute("cartList", cartList);

			// 장바구니에 넣어주고 carVO를 비워준다.
			session.setAttribute("cartVO", null);

			return "/menu/cart";
		} else if (cartVO != null) {

			String[] toppings;
			String topping = cartVO.getTopping();
			Integer price = new Integer(cartVO.getPrice());

			if (!topping.equals("")) {
				toppings = topping.split("\\|\\|");
				for (int i = 0; i < toppings.length; ++i) {

					String subPrice = toppings[i].split("\\s")[1];
					subPrice = subPrice.replace(",", "");
					subPrice = subPrice.replace("+", "");

					price += new Integer(subPrice);
				}
				topping = topping.replaceAll("\\|\\|", ", ");

				cartVO.setTopping(topping);
			}

			cartVO.setTotal_price(price.toString());

			// 장바구니에 추가
			cart_Service.insertCart(cartVO);

			// 모든 잘바구니 불러오기
			List<CartVO> cartList = cart_Service.selectAllCart(cartVO);

			session.setAttribute("cartList", cartList);

			// 장바구니에 넣어주고 carVO를 비워준다.
			session.setAttribute("cartVO", null);
			return "/menu/cart";
		}
		/*
		 * else if ( cartVO != null ) { cartVO.setBread(bread);
		 * cartVO.setCheese(cheese);
		 * 
		 * String[] toppings; Integer price = new Integer(cartVO.getPrice());
		 * 
		 * if(topping != null) { toppings = topping.split("\\|\\|"); for (int i
		 * = 0; i < toppings.length; ++i) {
		 * 
		 * String subPrice = toppings[i].split("\\s")[1]; subPrice =
		 * subPrice.replace(",", ""); subPrice = subPrice.replace("+", "");
		 * 
		 * price += new Integer(subPrice); } topping =
		 * topping.replaceAll("\\|\\|", ", ");
		 * 
		 * }
		 * 
		 * 
		 * 
		 * cartVO.setTotal_price(price.toString()); cartVO.setTopping(topping);
		 * cartVO.setVegetable(vegetable); cartVO.setSauce(sauce);
		 * cartVO.setRequirement(requirement); System.out.println(cartVO);
		 * 
		 * // 장바구니에 추가 cart_Service.insertCart(cartVO);
		 * 
		 * // 모든 잘바구니 불러오기 List<CartVO> cartList =
		 * cart_Service.selectAllCart(cartVO);
		 * 
		 * session.setAttribute("cartList", cartList);
		 * 
		 * //장바구니에 넣어주고 carVO를 비워준다. session.setAttribute("cartVO", null);
		 * return "/menu/cart"; }
		 */

		return "/menu/cart";

	}

	@RequestMapping(value = "/cart.do", method = RequestMethod.GET)
	public String Cart(HttpSession session, String storeName, String storeAddr, String storePhone) {
		CartStoreVO cartStoreVO = (CartStoreVO) session.getAttribute("cartStoreVO");

		// 지점변경
		if (storeName != null && storeAddr != null && storePhone != null) {

			cartStoreVO.setStoreName(storeName);
			
			String addr = storeAddr.replaceAll(",", " ");
			
			cartStoreVO.setStoreAddr(addr);
			cartStoreVO.setStorePhone(storePhone);
			cartStore_Service.updateCartStore(cartStoreVO);

			session.setAttribute("cartStoreVO", cartStoreVO);
		}

		return "menu/cart";
	}

	// 장바구니에 등록된 메뉴삭제
	@RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
	public void DeleteCart(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "no") Integer no, HttpSession session) throws Exception {

		response.setContentType("text/html;charset=UTF-8");
		
		UserVO userVO = (UserVO) session.getAttribute("loginVO");
		CartVO cartVO = new CartVO();
		int number = no;

		cartVO.setNo(number);
		cartVO.setId(userVO.getId());

		// 장바구니에서 해당 메뉴 삭제
		cart_Service.deleteCartByNo(cartVO);

		// 삭제후 새로운 장바구니리스트를 세션에 등록
		List<CartVO> cartList = cart_Service.selectAllCart(cartVO);

		// 장바구니가 하나도 없는 경우 선택한 지점삭제 및 null로 초기화
		if (cartList.size() == 0) {
			cartStore_Service.deleteCartStore(userVO.getId());
			session.setAttribute("cartStoreVO", null);
		}

		session.setAttribute("cartList", cartList);
	}

	// 장바구니에 등록된 메뉴의 수량 변경
	@RequestMapping(value = "/productQtyUpdate", method = RequestMethod.POST)
	public void ProductQtyUpdate(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "no") Integer no, @RequestParam(value = "totalQty") Integer totalQty,
			HttpSession session) throws Exception {

		response.setContentType("text/html;charset=UTF-8");

		System.out.println("증감 : " +no);
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
}
