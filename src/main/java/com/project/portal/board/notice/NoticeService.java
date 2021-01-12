package com.project.portal.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.portal.board.BoardService;
import com.project.portal.board.BoardVO;
import com.project.portal.util.Pager;

@Service
public class NoticeService implements BoardService{
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		
		pager.makeRow();
		long totalCount = noticeMapper.getCount(pager);
		pager.makePage(totalCount);
		
		return noticeMapper.getList(pager);
	}

	@Override
	public int setUpdate(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.setUpdate(boardVO);
	}

	@Override
	public int setDelete(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.setDelete(boardVO);
	}

	@Override
	public BoardVO getOne(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.getOne(boardVO);
	}

	public int setInsert(NoticeVO noticeVO) throws Exception {
		// TODO Auto-generated method stub
		
		int result = noticeMapper.setInsert(noticeVO);
		System.out.println("Num : "+noticeVO.getNum());
		
		return result;
	}


	
}
