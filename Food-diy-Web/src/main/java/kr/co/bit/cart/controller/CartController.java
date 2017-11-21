package kr.co.bit.cart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.menu.vo.CartVO;

@RequestMapping("/menu")
@Controller
public class CartController {

	
	@Autowired
	private CartVO cartVO;
	
	@RequestMapping("/cart.do")
	public ModelAndView cartList() {
		
		
		return null;
	}
}
