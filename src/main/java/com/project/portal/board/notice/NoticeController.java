package com.project.portal.board.notice;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.portal.board.BoardVO;
import com.project.portal.board.file.FileVO;
import com.project.portal.util.Pager;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {
	
	@Value("${board.notice.filePath}")
	private String filePath;
	
	@ModelAttribute(name="board")
	public String getBoard() {
		return "notice";
	}
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("noticeFileDown")
	public ModelAndView getNoticeFileDown(FileVO fileVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		fileVO =  noticeService.getFile(fileVO);
		
		System.out.println(fileVO.getFileName());
		
		mv.addObject("fileVO", fileVO);
		mv.addObject("filePath", filePath);
		mv.setViewName("fileDown");
		
		return mv;
	}
	
	@GetMapping("noticeList")
	public String getList(Model model, Pager pager) throws Exception{
		List<BoardVO> ar = noticeService.getList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
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
	public ModelAndView setInsert(@Valid NoticeVO noticeVO, MultipartFile [] files) throws Exception{
		System.out.println("--- Notice Write ---");
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setInsert2(noticeVO, files);
		
		String message = "작성 실패했습니다!";
		if(result>0) {
			message = "작성되었습니다!";
		}
		
		mv.addObject("msg",message);
		mv.addObject("path", "./noticeList");
		mv.setViewName("common/result");
		
		return mv;
	}
	
	@GetMapping("noticeUpdate")
	public ModelAndView setUpdate(NoticeVO noticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		noticeVO = (NoticeVO)noticeService.getOne(noticeVO);
		
		mv.addObject("vo",noticeVO);
		mv.setViewName("board/boardUpdate");
		return mv;
	}
	
	@PostMapping("noticeUpdate")
	public ModelAndView setUpdate2(NoticeVO noticeVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setUpdate(noticeVO);
		
		String message = "수정이 실패했습니다!";
	      if(result>0) {
	         message = "수정 완료되었습니다!";
	      }
  
	    mv.addObject("msg", message);
	    mv.addObject("path", "./noticeList");
	    mv.setViewName("common/result");
	    
		return mv;
	}
	
	@GetMapping("noticeDelete")
	public ModelAndView setDelete(BoardVO boardVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setDelete(boardVO);
		
		String message = "삭제가 실패했습니다!";
	      if(result>0) {
	         message = "삭제되었습니다!";
	      }
	    
	    mv.addObject("msg", message);
	    mv.addObject("vo", boardVO);
	    mv.setViewName("common/result");  
	    mv.addObject("path", "./noticeList");
	    
	    return mv;
	}
	
}
