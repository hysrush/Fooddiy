package kr.co.bit.event.control;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
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
	
	//진행중인 이벤트 , 종료된 이벤트 보기 
	@RequestMapping("/eventPage.do")
	public ModelAndView list() {
		List<EventBoardVO> eventList = eventService.selectAllEvent();
		List<EventBoardVO> eventEndList = eventService.selectEndEvent();
		
		
		ModelAndView mav = new ModelAndView();
		//setViewName : �뼱�뼡 �럹�씠吏�瑜� 蹂댁뿬以꾧쾬�씤媛�
		mav.setViewName("event/EventPage");
		//addObject : key �� value 瑜� �떞�븘 蹂대궡�뒗 硫붿꽌�뱶 
		
		mav.addObject("eventList", eventList);
		mav.addObject("eventEndList", eventEndList);
		
		
		return mav;
		
	}
	

	// 새글등록 폼으로 보내기 
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
		
		// 새글 등록 하기
		@RequestMapping(value="/eventWrite.do", method=RequestMethod.POST)
		public String write(@Valid EventBoardVO eventVO
							, BindingResult result
							, @RequestParam(value="imgFileName") MultipartFile file
		)throws Exception {
			
				System.out.println("시작");
				
				//1. fileName 설정 + eventVO에 fileName 저장
				String fileName = "C:\\Users\\bit-user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\" + file.getOriginalFilename();
				String saveFileName = file.getOriginalFilename();
				
				eventVO.setImgFileName(saveFileName);
				
				System.out.println(fileName);
				System.out.println(saveFileName);
				System.out.println("들어가나");
			
				
				//2. 경로에 이미지파일 저장
					byte[] bytes;
					bytes = file.getBytes();
					BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File(fileName)));
					buffStream.write(bytes);
					buffStream.close();
						
					System.out.println("들어가나 2");
				
				
				//eventVO에 저장 
				eventService.insertEvent(eventVO);
				
				return "redirect:/event/eventPage.do";
				
		
			    
			    
	            
					
				
	
		}
}	
