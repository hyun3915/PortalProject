package com.project.portal.board;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.portal.board.file.FileVO;
import com.project.portal.board.notice.NoticeVO;
import com.project.portal.util.Pager;

@Service
public interface BoardService {
	
	public List<BoardVO> getList(Pager pager) throws Exception;
	
	public BoardVO getOne(BoardVO boardVO) throws Exception;
	
	public int setInsert(BoardVO boardVO, MultipartFile [] files) throws Exception;
	
	public int setUpdate(BoardVO boardVO) throws Exception;
	
	public int setDelete(BoardVO boardVO) throws Exception;
	
	public FileVO getFile(FileVO fileVO) throws Exception;

}
