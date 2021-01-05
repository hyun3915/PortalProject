package com.project.portal.board;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.portal.board.notice.NoticeVO;

@Service
public interface BoardService {
	
	public List<BoardVO> getList() throws Exception;
	
	public BoardVO getOne(BoardVO boardVO) throws Exception;
	
	public int setInsert(BoardVO boardVO) throws Exception;
	
	public int setUpdate(BoardVO boardVO) throws Exception;
	
	public int setDelete(BoardVO boardVO) throws Exception;

}
