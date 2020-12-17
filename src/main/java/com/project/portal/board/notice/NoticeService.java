package com.project.portal.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.portal.board.BoardService;
import com.project.portal.board.BoardVO;

@Service
public class NoticeService implements BoardService{
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public List<BoardVO> getList() throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getList();
	}
	
}
