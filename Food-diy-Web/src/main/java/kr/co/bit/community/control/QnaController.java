package kr.co.bit.community.control;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.community.service.QnaService;
import kr.co.bit.community.vo.QnaBoardVO;

@RequestMapping("/notice")
@Controller
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	// <QnA 컨트롤러>
	@RequestMapping("/qna.do")
	public ModelAndView	listAll() {
		
		List<QnaBoardVO> qnaList = qnaService.selectAllQnA();
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("notice/qna");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("qnaList", qnaList);
		
		return mav;
	}
	
	@RequestMapping(value="/qnaWrite.do", method=RequestMethod.GET)
	public String writeForm(Model model) {
		
		// Form에서 가져온 Data를 QnaBoardVO 객체 형태로 저장
		QnaBoardVO qnaVO = new QnaBoardVO();
		// 공유영역에 등록
		model.addAttribute("qnaVO", qnaVO);
		
		return "notice/qnaWrite";
	}
	
	@RequestMapping(value="/qnaWrite.do", method=RequestMethod.POST)
	public String write(@Valid QnaBoardVO qnaVO, BindingResult result) {
		
		if (result.hasErrors()) {
			// 에러일때 true => writeForm으로
			return "notice/qnaWrite";
		}
		// QnA 새 글 등록
		qnaService.insertQnA(qnaVO);
		
		return "redirect:/notice/qna.do";
	}

}
