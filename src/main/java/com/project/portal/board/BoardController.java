package com.project.portal.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.portal.board.notice.NoticeService;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("board/boardList")
	public List<BoardVO> boardList() throws Exception{
		System.out.println("Board List");
		List<BoardVO> ar = noticeService.getList();
		return ar;
	}

}
