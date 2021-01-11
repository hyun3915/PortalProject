package com.project.portal.board.notice;

import org.apache.ibatis.annotations.Mapper;

import com.project.portal.board.BoardMapper;
import com.project.portal.board.BoardVO;

@Mapper
public interface NoticeMapper extends BoardMapper{
	
	public int setInsert(NoticeVO noticeVO) throws Exception;

}
