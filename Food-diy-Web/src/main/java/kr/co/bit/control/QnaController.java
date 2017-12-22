package kr.co.bit.control;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.service.QnaService;
import kr.co.bit.vo.QnaBoardVO;

@RequestMapping("/community/qna")
@Controller
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	// <QnA 컨트롤러>
	// QnA 전체보기
	@RequestMapping("/qna.do")
	public ModelAndView	listAll() {
		
		List<QnaBoardVO> qnaList = qnaService.selectAllQnA();
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("community/qna/qnaList");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("qnaList", qnaList);
		
		// 줄바꿈 
		mav.addObject("br", "<br/>");
		mav.addObject("cn", "\n");
		
		return mav;
	}

}
