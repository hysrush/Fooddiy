package kr.co.bit.event.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.event.service.EventService;
import kr.co.bit.event.vo.QnABoardVO;

@RequestMapping("/event")
@Controller
public class EventController {

	@Autowired
	private EventService eventService;
	
	
	@RequestMapping("EventPage.do")
	public ModelAndView list() {
		List<QnABoardVO> eventList = eventService.selectAllEvent();
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("event/EventPage.jsp");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("eventList", eventList);
		
		return mav;
		
	}
	
	
	
	
	
	
	
}
