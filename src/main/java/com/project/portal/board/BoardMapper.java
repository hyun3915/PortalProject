package com.project.portal.board;

import java.util.List;

import com.project.portal.board.file.FileVO;
import com.project.portal.util.Pager;

public interface BoardMapper {
	
	public List<BoardVO> getList(Pager pager) throws Exception;
	
	public long getCount(Pager pager) throws Exception;
	
	public BoardVO getOne(BoardVO boardVO) throws Exception;
	
	public int setInsert(BoardVO boardVO) throws Exception;
	
	public int setUpdate(BoardVO boardVO) throws Exception;
	
	public int setDelete(BoardVO boardVO) throws Exception;
	
	public int setInsertFile(FileVO fileVO) throws Exception;
	
	public FileVO getFile(FileVO fileVO) throws Exception;

}
