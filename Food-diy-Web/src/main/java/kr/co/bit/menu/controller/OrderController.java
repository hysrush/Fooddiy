package kr.co.bit.menu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {
	
	
	@RequestMapping(value = "/order.do", method = RequestMethod.POST)
	public ModelAndView order() {
		return null;
	}
}
