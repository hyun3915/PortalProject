package com.project.portal.board;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface BoardService {
	
	public List<BoardVO> getList() throws Exception;

}
