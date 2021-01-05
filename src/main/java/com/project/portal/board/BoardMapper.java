package com.project.portal.board;

import java.util.List;

public interface BoardMapper {
	
	public List<BoardVO> getList() throws Exception;
	
	public BoardVO getOne(BoardVO boardVO) throws Exception;
	
	public int setInsert(BoardVO boardVO) throws Exception;
	
	public int setUpdate(BoardVO boardVO) throws Exception;
	
	public int setDelete(BoardVO boardVO) throws Exception;

}
