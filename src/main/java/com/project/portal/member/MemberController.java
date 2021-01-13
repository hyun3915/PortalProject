package com.project.portal.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("memberLogin")
	public void getMemberLogin() throws Exception{
	}
	
	@PostMapping("memberLogin")
	public ModelAndView getMemberLogin(MemberVO memberVO, HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		memberVO = memberService.getMemberLogin(memberVO);
		
		if(memberVO != null) {
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:../");
		}else {
			String message = "로그인에 실패했습니다.";
			mv.addObject("msg", message);
			mv.addObject("path","./memberLogin");
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	
	@GetMapping("memberLogout")
	public String getMemberLogout(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:../";
	}
	
	@GetMapping("memberPage")
	public void getMemberPage() throws Exception{
		
	}
	
	@GetMapping("memberUpdate")
	public ModelAndView setMemberUpdate() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberUpdate");
		return mv;
	}
	
	@PostMapping("memberUpdate")
	public ModelAndView setMemberUpdate(MemberVO memberVO, HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		memberVO.setId(vo.getId());
		
		int result = memberService.setMemberUpdate(memberVO);
		
		if(result>0) {
			vo.setPhone(memberVO.getPhone());
			vo.setEmail(memberVO.getEmail());
			vo.setAddr1(memberVO.getAddr1());
			vo.setAddr2(memberVO.getAddr2());
			vo.setAddr3(memberVO.getAddr3());
			vo.setPw(memberVO.getPw());
			session.setAttribute("member", vo);
			String message = "수정되었습니다!";
			mv.addObject("msg", message);
			mv.setViewName("common/result");  
		}
		mv.addObject("path", "./memberPage");
		return mv;
	}
	
	@GetMapping("memberDelete")
	public ModelAndView setMemberDelete(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		int result = memberService.setMemberDelete(memberVO);
		session.invalidate();
		String message = "삭제 실패했습니다!";
	      if(result>0) {
	         message = "삭제되었습니다!";
	      }
	    mv.addObject("msg", message);
	    mv.setViewName("common/result");  
	    mv.addObject("path", "./memberLogin");
		return mv;
	}

}
