package kr.co.bit.order.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bit.order.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "/menu/insertOrder" , method=RequestMethod.POST ) 
	@ResponseBody
	public String insertOrder(@RequestBody @RequestParam(value = "orderArray", defaultValue="")String orderArray, HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
			System.out.println(orderArray.toString());
		
		return null;
	}

}
