package com.project.portal.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

import com.project.portal.board.BoardVO;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {
	
	@ModelAttribute(name="board")
	public String getBoard() {
		return "notice";
	}
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("noticeList")
	public String getList(Model model) throws Exception{
		List<BoardVO> ar = noticeService.getList();
		model.addAttribute("list", ar);
		return "board/boardList";
	}
	
	@GetMapping("noticeSelect")
	public ModelAndView getOne(BoardVO boardVO) throws Exception{
		boardVO = noticeService.getOne(boardVO);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", boardVO);
		mv.setViewName("board/boardSelect");
		
		return mv;
	}
	
	@GetMapping("noticeWrite")
	public ModelAndView setInsert() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("board","notice");
		mv.setViewName("board/boardWrite");
		return mv;
	}
	
	@PostMapping("noticeWrite")
	public ModelAndView setInsert(NoticeVO noticeVO) throws Exception{
		System.out.println("--- Notice Write ---");
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setInsert(noticeVO);
		
		String message = "Write Fail!";
		if(result>0) {
			message = "Write Success!";
		}
		
		mv.addObject("msg",message);
		mv.addObject("path", "./noticeList");
		mv.setViewName("common/result");
		
		return mv;
	}
	
}
