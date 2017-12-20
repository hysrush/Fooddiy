package kr.co.bit.control;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bit.menu.service.CartService;
import kr.co.bit.menu.service.CartStoreService;
import kr.co.bit.service.OrderService;
import kr.co.bit.vo.OrderVO;
import kr.co.bit.vo.UserVO;

@RequestMapping("/order")
@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private CartService cart_Service;
	@Autowired
	private CartStoreService cartStore_Service;
	
	@RequestMapping(value = "/insertOrder" , method=RequestMethod.POST ) 
	@ResponseBody
	public void insertOrder(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "order") String order, HttpSession session) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		
		
		UserVO userVO = (UserVO)session.getAttribute("loginVO");
		String id = userVO.getId();
		String type = userVO.getType();
		
		String orders [] = order.split("--");
		//지점, 아이디, 총 결제 가격
		String info [] = orders[0].split("\\*");
		
		OrderVO orderVO = new OrderVO();
		orderVO.setStoreName(info[0]);
		
		if(type.equals("N")) {
			orderVO.setId("비회원");
		}else {
			orderVO.setId(info[1]);	
		}
		orderVO.setOrder_price(info[2]);;
		orderVO.setFinal_price(info[3]);
		orderVO.setMenu(orders[1]);
		orderVO.setEatType("포장");
		System.out.println(orderVO);
		
		orderService.insertOrder(orderVO);
		
		cartStore_Service.deleteCartStore(id);
		cart_Service.deleteCartById(id);;
		
		session.setAttribute("cartList", null);
		session.setAttribute("cartStoreVO", null);
	}
	
	
	@RequestMapping(value= "/orderedPage.do")
	public String orderedPage(HttpSession session) {
		
		
		
		return "menu/orderedPage";
	}
	

}
