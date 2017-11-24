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
	private Select_Ing_Service ingService;
	
	@Autowired
	private CartService cartService;
	
	
	@RequestMapping(value="/select_ingredients.do", method=RequestMethod.POST)
	public ModelAndView Session(HttpSession session, String name, String price, String size) {
		
		UserVO user = (UserVO)session.getAttribute("loginVO");		
		String id = null;
		if(user == null) {
			System.out.println("session은 널이다");
		}else {
			id = user.getId();
		}
		System.out.println(id);
		
		List<IngredientsVO> ingList = ingService.selectAllIng();
		// Form에서 가져온 Data를 CartVO 객체형태로 저장
		CartVO cartVO = new CartVO();
		
		cartVO.setName(name);
		cartVO.setPrice(price);
		cartVO.setSize(size);
		cartVO.setId(id);
				
		session.setAttribute("cartVO", cartVO);		
		
		
		ModelAndView  mav = new ModelAndView();
		mav.setViewName("menu/select_ingredients");
		mav.addObject("ingList", ingList);
		
		for(int i = 0; i < ingList.size(); ++i) {
	         System.out.println(i + "번 "  + ingList.get(i));
		}
		
		return mav;				
	}
	
	
	
	
	
	@RequestMapping(value ="/select_ingredients.do", method = RequestMethod.GET)
	public ModelAndView Ing_listAll() {
		
		List<IngredientsVO> ingList = ingService.selectAllIng();
		
		ModelAndView  mav = new ModelAndView();
		mav.setViewName("menu/select_ingredients");
		mav.addObject("ingList", ingList);
		
		for(int i = 0; i < ingList.size(); ++i) {
			System.out.println(i + "번 "  + ingList.get(i));
		}
		
		return mav;
	}
	
	@RequestMapping(value ="/cart.do", method = RequestMethod.POST)
	public ModelAndView Add_cart(HttpSession session,@RequestParam("bread") String bread, @RequestParam("cheese") String cheese, @RequestParam("topping") String topping, 
			@RequestParam("vegetable") String vegetable, @RequestParam("sauce") String sauce) {
		
		CartVO cart = (CartVO)session.getAttribute("cartVO");
		System.out.println(cart.getId());
		System.out.println(cart.getName());
		System.out.println(cart.getSize());
		System.out.println(cart.getPrice());
		System.out.println(bread);
		System.out.println(cheese);
		System.out.println(topping);
		System.out.println(vegetable);
		System.out.println(sauce);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("menu/cart");
		
		return mav;
	}
}
