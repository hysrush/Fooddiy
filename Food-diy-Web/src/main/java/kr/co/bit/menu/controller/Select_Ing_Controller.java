package kr.co.bit.menu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.menu.service.CartService;
import kr.co.bit.menu.service.CartStoreService;
import kr.co.bit.menu.service.Select_Ing_Service;
import kr.co.bit.menu.vo.CartStoreVO;
import kr.co.bit.menu.vo.CartVO;
import kr.co.bit.menu.vo.IngredientsVO;
import kr.co.bit.user.vo.UserVO;

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
	public ModelAndView Session(HttpSession session, String storeName, String storeAddr, String storePhone, CartVO cartVO, Model model){

		UserVO userVO = (UserVO) session.getAttribute("loginVO");
		String id = userVO.getId();
		userVO.setStore(storeName);
		
		//기존에 session 등록된 선택된 지점을 불러온다.
		CartStoreVO cartStoreVO = (CartStoreVO) session.getAttribute("cartStoreVO");

		
		//session에 등록된 지점이 없는 경우 cartStore에 지점 정보를 저장 후 세션에 등록
		if (cartStoreVO == null) {
			cartStoreVO = new CartStoreVO();
			cartStoreVO.setId(id);
			cartStoreVO.setStoreName(storeName);
			cartStoreVO.setStoreAddr(storeAddr);
			cartStoreVO.setStorePhone(storePhone);
			cartStore_Service.insertCartStore(cartStoreVO);

			session.setAttribute("cartStoreVO", cartStoreVO);
		}

		
		cartVO.setId(id);
		System.out.println(cartVO);
		/*System.out.println("size : " + size);
		//메뉴선택에서 -> 재료선택으로 바로 이동했을 경우(지점을 선택했을 경우 바로 이동한다.)
		if (name != null && price != null && size != null && pic != null && type != null)  {
			CartVO cartVO = new CartVO();
			cartVO.setName(name);
			cartVO.setPrice(price);
			cartVO.setSize(size);
			cartVO.setType(type);
			cartVO.setPic(pic);
			cartVO.setId(id);

			session.setAttribute("cartVO", cartVO);
		}*/

		//select_ingredient.jsp에 보여줄 재료정보를 불러온다.
		List<IngredientsVO> ingList = ing_Service.selectAllIng();

		ModelAndView mav = new ModelAndView();
		mav.setViewName("menu/select_ingredients");
		mav.addObject("ingList", ingList);
		model.addAttribute("cartVO", cartVO);

		return mav;
	}

	@RequestMapping(value = "/cart.do", method = RequestMethod.POST)
	public String Add_cart(@Valid CartVO cartVO, HttpSession session) {
		String type = cartVO.getType();
		
		
		System.out.println(cartVO);
		System.out.println("type  :  " + type);
		
		//
		if(type.equals('S')|| type.equals('N') || type.equals('D')) {
			return "/menu/cart";
		}else if(cartVO != null) {
			
			String[] toppings;
			String topping = cartVO.getTopping();
			Integer price = new Integer(cartVO.getPrice());
			
			if (topping != null) {
				toppings = topping.split("\\|\\|");
				for (int i = 0; i < toppings.length; ++i) {

					String subPrice = toppings[i].split("\\s")[1];
					subPrice = subPrice.replace(",", "");
					subPrice = subPrice.replace("+", "");

					price += new Integer(subPrice);
				}
				topping = topping.replaceAll("\\|\\|", ", ");

			}

			cartVO.setTotal_price(price.toString());
			cartVO.setTopping(topping);

			// 장바구니에 추가
			cart_Service.insertCart(cartVO);

			// 모든 잘바구니 불러오기
			List<CartVO> cartList = cart_Service.selectAllCart(cartVO);

			session.setAttribute("cartList", cartList);

			// 장바구니에 넣어주고 carVO를 비워준다.
			session.setAttribute("cartVO", null);
			return "/menu/cart";
		}
/*		else if ( cartVO != null ) {
			cartVO.setBread(bread);
			cartVO.setCheese(cheese);
			
			String[] toppings;
			Integer price = new Integer(cartVO.getPrice());
			
			if(topping != null) {
				toppings = topping.split("\\|\\|");
				for (int i = 0; i < toppings.length; ++i) {
					
					String subPrice = toppings[i].split("\\s")[1];
					subPrice = subPrice.replace(",", "");
					subPrice = subPrice.replace("+", "");
					
					price += new Integer(subPrice);
				}
				topping = topping.replaceAll("\\|\\|", ", ");
				
			}

			

			cartVO.setTotal_price(price.toString());
			cartVO.setTopping(topping);
			cartVO.setVegetable(vegetable);
			cartVO.setSauce(sauce);
			cartVO.setRequirement(requirement);	
			System.out.println(cartVO);

			// 장바구니에 추가
			cart_Service.insertCart(cartVO);
			
			// 모든 잘바구니 불러오기
			List<CartVO> cartList = cart_Service.selectAllCart(cartVO);

			session.setAttribute("cartList", cartList);
			
			//장바구니에 넣어주고 carVO를 비워준다.
			session.setAttribute("cartVO", null);
			return "/menu/cart";
		}*/
		
			return "/menu/cart";
		
	}
	
	@RequestMapping(value = "/cart.do", method = RequestMethod.GET)
	public String Cart(HttpSession session,  String storeName, String storeAddr, String storePhone) {
		CartStoreVO cartStoreVO = (CartStoreVO)session.getAttribute("cartStoreVO");
		
		
		//지점변경 
		if(storeName != null  && storeAddr != null && storePhone != null) {
			
			cartStoreVO.setStoreName(storeName);
			cartStoreVO.setStoreAddr(storeAddr);
			cartStoreVO.setStorePhone(storePhone);
			cartStore_Service.updateCartStore(cartStoreVO);
			
			session.setAttribute("cartStoreVO", cartStoreVO);
		}

		return "menu/cart";
	}
		

	//장바구니에 등록된 메뉴삭제
	@RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
	public void DeleteCart(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "no") Integer no, HttpSession session) throws Exception {

		response.setContentType("text/html;charset=UTF-8");

		UserVO userVO = (UserVO) session.getAttribute("loginVO");
		CartVO cartVO = new CartVO();
		int number = no;

		cartVO.setNo(number);
		cartVO.setId(userVO.getId());
		
		//장바구니에서 해당 메뉴 삭제
		cart_Service.deleteCart(cartVO);

		//삭제후 새로운 장바구니리스트를 세션에 등록
		List<CartVO> cartList = cart_Service.selectAllCart(cartVO);

		//장바구니가 하나도 없는 경우 선택한 지점삭제 및 null로 초기화
		if (cartList.size() == 0) {
			cartStore_Service.deleteCartStore(userVO.getId());
			session.setAttribute("cartStoreVO", null);
		}
		
		session.setAttribute("cartList", cartList);
	}
	
	
	//장바구니에 등록된 메뉴의 수량 변경
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
}
