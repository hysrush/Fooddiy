package kr.co.bit.event.control;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.event.service.EventService;
import kr.co.bit.event.vo.EventBoardVO;

@RequestMapping("/event")
@Controller
public class EventController {

	@Autowired
	private EventService eventService;
	
	
	@RequestMapping("/eventPage.do")
	public ModelAndView list() {
		List<EventBoardVO> eventList = eventService.selectAllEvent();
		
		ModelAndView mav = new ModelAndView();
		//setViewName : �뼱�뼡 �럹�씠吏�瑜� 蹂댁뿬以꾧쾬�씤媛�
		mav.setViewName("event/EventPage");
		//addObject : key �� value 瑜� �떞�븘 蹂대궡�뒗 硫붿꽌�뱶 
		mav.addObject("eventList", eventList);
		
		return mav;
		
	}
	
	// 새글등록 폼 
		@RequestMapping(value="/eventWrite.do", method=RequestMethod.GET)
		public String writeForm(HttpServletRequest request
	            , HttpServletResponse response
	            , Model model) {
			// Form�뿉�꽌 媛��졇�삩 Data瑜� QnaBoardVO 媛앹껜 �삎�깭濡� ���옣
					EventBoardVO eventVO = new EventBoardVO();
					// 怨듭쑀�쁺�뿭�뿉 �벑濡�
					model.addAttribute("eventVO", eventVO);
					
					return "event/EventWriteForm";
			
		}	
		
		// 새글 등록 
		@RequestMapping(value="/eventWrite.do", method=RequestMethod.POST)
		public String write(@Valid EventBoardVO eventVO
						  , @RequestParam(value="imgFile") MultipartFile file
						  , BindingResult result) {
			
			try {
				// 1. 파라미터 확인 * VO 객체 등록 
				eventVO = new EventBoardVO();
			
			    String fileName = "./image/" + file.getOriginalFilename();
			    eventVO.setImgFileName(fileName);
	            
			    
			    // 2. 이미지 파일 저장 
			    byte[] bytes = file.getBytes();
	            BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File("./image/" + fileName)));
	            buffStream.write(bytes);
	            buffStream.close();
	            
	            // 3. Vo 객체 INSERT 
	            eventService.insertEvent(eventVO);
	            
	            // 4. 이동
	            return "redirect:/event/EventPage.do";
	            
	            
	        } catch (Exception e) {
	        	return "redirect:/event/error.do";
	        }
	        
			
			
			
			
			
			
			
			// �뿉�윭�씪�븣 true => writeForm�쑝濡�
//			if (result.hasErrors()) {
//				
//				return "event/EventWriteForm";
//			}
			
			
			//�깉湲��벑濡�
//			eventService.insertEvent(eventVO);
			
		}
	
	
}
