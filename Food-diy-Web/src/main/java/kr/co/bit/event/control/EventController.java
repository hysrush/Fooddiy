package kr.co.bit.event.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.event.service.EventService;
import kr.co.bit.event.vo.EventBoardVO;

@RequestMapping("/event")
@Controller
public class EventController {

	@Autowired
	private EventService eventService;
	
	
	@RequestMapping("/EventPage.do")
	public ModelAndView list() {
		List<EventBoardVO> eventList = eventService.selectAllEvent();
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("event/EventPage");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("eventList", eventList);
		
		return mav;
		
	}
	
	
	/*@RequestMapping(value="/eventWrite.do", method=RequestMethod.GET)
	public String writeForm(HttpServletRequest request
            , HttpServletResponse response
            , Model model
            , @RequestParam(value="imgFile") MultipartFile[] files) throws Exception {
		
				///file 변환 
			String fileName = null;
			String msg = "";
        
	        if (files != null && files.length >0) {
	            for(int i =0 ;i< files.length; i++){
	                try {
	                    if (true == files[i].isEmpty()) {
	                        continue;
	                    }
	                       
	                    fileName = files[i].getOriginalFilename();

	                    byte[] bytes = files[i].getBytes();
	                    BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File("./image/" + fileName)));
	                    buffStream.write(bytes);
	                    buffStream.close();
	                    
	                } catch (Exception e) {
	                    return "You failed to upload " + fileName + ": " + e.getMessage() +"<br/>";
	                }
	            }
	        } else {
	            return "Unable to upload. File is empty.";
	        }
	        
        
		
		// Form에서 가져온 Data를 QnaBoardVO 객체 형태로 저장
				EventBoardVO eventVO = new EventBoardVO();
				// 공유영역에 등록
				model.addAttribute("eventVO", eventVO);
				
				return "event/EventWriteForm";
		
	}	
	

	@RequestMapping(value="/eventWrite.do", method=RequestMethod.POST)
	public String write(@Valid EventBoardVO eventVO, BindingResult result) {
		
		// 에러일때 true => writeForm으로
		if (result.hasErrors()) {
			
			return "event/EventWriteForm";
		}
		
		
		//새글등록
		eventService.insertEvent(eventVO);
		
		return "redirect:/event/EventPage.do";
		
	}*/
	

	
	
}
