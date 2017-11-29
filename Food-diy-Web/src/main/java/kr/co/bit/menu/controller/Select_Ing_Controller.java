package kr.co.bit.menu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.event.vo.StoreVO;
import kr.co.bit.menu.service.CartService;
import kr.co.bit.menu.service.Select_Ing_Service;
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

	@RequestMapping(value = "/select_ingredients.do", method = RequestMethod.POST)
	public ModelAndView Session(HttpSession session,String storeName, String storeAddr, String storePhone) {

		StoreVO storeVO = new StoreVO();
		storeVO.setStoreName(storeName);
		storeVO.setStoreAddr(storeAddr);
		storeVO.setStorePhone(storePhone);
		
		
		UserVO userVO = (UserVO)session.getAttribute("loginVO");
		userVO.setStore(storeName);
		
		
		session.setAttribute("storeVO", storeVO);
		
		System.out.println(storeName);
		System.out.println(storeAddr);
		System.out.println(storePhone);
		
		
		List<IngredientsVO> ingList = ing_Service.selectAllIng();
			
		ModelAndView mav = new ModelAndView();
		mav.setViewName("menu/select_ingredients");
		mav.addObject("ingList", ingList);

		return mav;
	}
	
	@RequestMapping(value = "/cart.do", method = RequestMethod.POST)
	public ModelAndView Add_cart(@RequestParam("bread") String bread, @RequestParam("cheese") String cheese,
			@RequestParam("topping") String topping, @RequestParam("vegetable") String vegetable,
			@RequestParam("sauce") String sauce, HttpSession session) {

		CartVO cartVO = (CartVO)session.getAttribute("cartVO");

		cartVO.setBread(bread);
		cartVO.setCheese(cheese);

		String [] toppings = topping.split("\\|\\|");
		
		Integer price = new Integer(cartVO.getPrice());
		for(int  i = 0; i < toppings.length; ++i) {
			
			String subPrice = toppings[i].split("\\s")[1];
			subPrice = subPrice.replace(",", "");
			subPrice = subPrice.replace("+", "");
			
			price += new Integer(subPrice);
		}
		topping = topping.replaceAll("\\|\\|", ", ");
		
		cartVO.setTotal_price(price.toString());;
		cartVO.setTopping(topping);
		cartVO.setVegetable(vegetable);
		cartVO.setSauce(sauce);

		System.out.println(cartVO);

		// 장바구니에 추가
		cart_Service.insertCart(cartVO);

		
		
		// 모든 잘바구니 불러오기
		List<CartVO> cartList = cart_Service.selectAllCart(cartVO);

		session.setAttribute("cartList", cartList);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("menu/cart");

		return mav;
	}
	
	@RequestMapping(value = "/cart.do", method = RequestMethod.GET)
	public String Cart() {
		return "menu/cart";
	}
	
	@RequestMapping(value="/deleteCart", method = RequestMethod.POST )
	public void Delete_cart(HttpServletRequest request, HttpServletResponse response, @RequestParam(value ="no")Integer no, HttpSession session) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		
		UserVO userVO = (UserVO)session.getAttribute("loginVO");
		CartVO cartVO = new CartVO();
		int number = no;
		System.out.println(userVO);
		System.out.println(no);
		cartVO.setNo(number);
		cartVO.setId(userVO.getId());
		cart_Service.deleteCart(cartVO);
		System.out.println("삭제됨");
	}
}
