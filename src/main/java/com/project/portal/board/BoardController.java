package com.project.portal.board;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.portal.board.notice.NoticeService;
import com.project.portal.util.Pager;

@Controller
@RequestMapping("/board/**")
public class BoardController {
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("board/boardList")
	public List<BoardVO> boardList(Pager pager) throws Exception{
		System.out.println("Board List");
		List<BoardVO> ar = noticeService.getList(pager);
		return ar;
	}
	
	@GetMapping("boardSelect")
	public BoardVO boardSelect(BoardVO boardVO) throws Exception{
		boardVO = noticeService.getOne(boardVO);
		return boardVO;
	}

}
