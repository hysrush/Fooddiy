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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.event.vo.StoreVO;
import kr.co.bit.menu.service.CartService;
import kr.co.bit.menu.service.Select_Ing_Service;
import kr.co.bit.menu.vo.CartVO;
import kr.co.bit.menu.vo.IngredientsVO;
import kr.co.bit.user.vo.UserVO;

@RequestMapping("/menu")
@SessionAttributes({"cartVO", "cartList", "storeVO"})
@Controller
public class Select_Ing_Controller {

	@Autowired
	private Select_Ing_Service ing_Service;

	@Autowired
	private CartService cart_Service;

	@RequestMapping(value = "/select_ingredients.do", method = RequestMethod.POST)
	public ModelAndView Session(HttpSession session, String storeName, String storeAddr, String storePhone,
			String name, String price, String size, String pic ) {
		
		ModelAndView mav = new ModelAndView();
		
		if(storeName != null && storeAddr != null &&  storePhone != null) {
			StoreVO storeVO = new StoreVO();
			storeVO.setStoreName(storeName);
			storeVO.setStoreAddr(storeAddr);
			storeVO.setStorePhone(storePhone);
			
			mav.addObject("storeVO", storeVO);
		}
		
		if(name != null  && price != null && size != null && pic != null) {
			UserVO user = (UserVO)session.getAttribute("loginVO");		
			String id = user.getId();
			
			CartVO cartVO = new CartVO();
			cartVO.setName(name);
			cartVO.setPrice(price);
			cartVO.setSize(size);
			cartVO.setPic(pic);
			cartVO.setId(id);
			
			mav.addObject("cartVO", cartVO);
			
			System.out.println(cartVO);
		}
		
		
		
		List<IngredientsVO> ingList = ing_Service.selectAllIng();
			
		mav.setViewName("menu/select_ingredients");
		mav.addObject("ingList", ingList);

		return mav;
	}
	
	@RequestMapping(value = "/cart.do", method = RequestMethod.POST)
	public ModelAndView Add_cart(@RequestParam("bread") String bread, @RequestParam("cheese") String cheese,
			@RequestParam("topping") String topping, @RequestParam("vegetable") String vegetable,
			@RequestParam("sauce") String sauce, HttpSession session) {

		ModelAndView mav = new ModelAndView();

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
		mav.addObject("cartList", cartList);
			
		mav.setViewName("menu/cart");

		return mav;
	}
	
	@RequestMapping(value = "/cart.do", method = RequestMethod.GET)
	public String Cart() {
		return "menu/cart";
	}
	
	@RequestMapping(value="/deleteCart", method = RequestMethod.POST )
	public void DeleteCart(HttpServletRequest request, HttpServletResponse response, @RequestParam(value ="no")Integer no, HttpSession session) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		
		response.setContentType("text/html;charset=UTF-8");
		
		UserVO userVO = (UserVO)session.getAttribute("loginVO");
		CartVO cartVO = new CartVO();
		int number = no;
		System.out.println(userVO);
		System.out.println(no);
		cartVO.setNo(number);
		cartVO.setId(userVO.getId());
		cart_Service.deleteCart(cartVO);
		
		List<CartVO> cartList = cart_Service.selectAllCart(cartVO);
		mav.addObject("cartList", cartList);
		System.out.println("삭제됨");
	}
	
	
	@RequestMapping(value="/productQtyUpdate", method = RequestMethod.POST )
	public void ProductQtyUpdate(HttpServletRequest request, HttpServletResponse response, @RequestParam(value ="no")Integer no,
			@RequestParam(value="totalQty") Integer totalQty, HttpSession session) throws Exception {
		
		response.setContentType("text/html;charset=UTF-8");

		ModelAndView mav = new ModelAndView();
		
		System.out.println(no);
		System.out.println(totalQty);
		
		UserVO userVO = (UserVO)session.getAttribute("loginVO");
		CartVO cartVO = new CartVO();
		int number = no;
		
		cartVO.setNo(number);
		cartVO.setId(userVO.getId( ));
		cartVO.setQty(totalQty);
		
		cart_Service.updateProductQty(cartVO);
		List<CartVO> cartList = cart_Service.selectAllCart(cartVO);
		mav.addObject("cartList", cartList);
		System.out.println("수량 변경");
	}
}
