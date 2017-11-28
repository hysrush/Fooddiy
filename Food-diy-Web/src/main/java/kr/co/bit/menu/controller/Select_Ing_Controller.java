package kr.co.bit.menu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView Session(HttpSession session, String name, String price, String size, String pic) {

		UserVO user = (UserVO) session.getAttribute("loginVO");
		String id = null;
		if (user == null) {
			System.out.println("session은 널이다");
		} else {
			id = user.getId();
		}
		System.out.println(id);

		List<IngredientsVO> ingList = ing_Service.selectAllIng();

		// Form에서 가져온 Data를 CartVO 객체형태로 저장
		CartVO cartVO = new CartVO();

		cartVO.setName(name);
		cartVO.setPrice(price);
		cartVO.setSize(size);
		cartVO.setId(id);
		cartVO.setPic(pic);
		
		session.setAttribute("cartVO", cartVO);

		

		ModelAndView mav = new ModelAndView();
		mav.setViewName("menu/select_ingredients");
		mav.addObject("ingList", ingList);

		return mav;
	}

	@RequestMapping(value = "/select_ingredients.do", method = RequestMethod.GET)
	public ModelAndView Ing_listAll() {

		List<IngredientsVO> ingList = ing_Service.selectAllIng();

		ModelAndView mav = new ModelAndView();
		mav.setViewName("menu/select_ingredients");
		mav.addObject("ingList", ingList);

		for (int i = 0; i < ingList.size(); ++i) {
			System.out.println(i + "번 " + ingList.get(i));
		}

		return mav;
	}

	@RequestMapping(value = "/cart.do", method = RequestMethod.POST)
	public ModelAndView Add_cart(@RequestParam("bread") String bread, @RequestParam("cheese") String cheese,
			@RequestParam("topping") String topping, @RequestParam("vegetable") String vegetable,
			@RequestParam("sauce") String sauce, HttpSession session) {

		CartVO cartVO = (CartVO)session.getAttribute("cartVO");

		cartVO.setBread(bread);
		cartVO.setCheese(cheese);
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
	
	@RequestMapping(value="/deleteCart.do", method = RequestMethod.POST)
	public void Delete_cart(@RequestParam(value = "no") Integer no, HttpSession session) {
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
