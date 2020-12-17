package com.project.portal.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
}
