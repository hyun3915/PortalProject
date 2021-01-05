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
	
	public BoardVO getOne(BoardVO boardVO) throws Exception{
		return noticeMapper.getOne(boardVO);
	}

	@Override
	public int setInsert(BoardVO boardVO) throws Exception {
		
		int result = noticeMapper.setInsert(boardVO);
		System.out.println("Num : "+boardVO.getNum());
		
		return result;
	}
	
}
