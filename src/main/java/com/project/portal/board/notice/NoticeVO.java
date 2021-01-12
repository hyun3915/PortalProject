package com.project.portal.board.notice;

import java.util.List;

import com.project.portal.board.BoardVO;
import com.project.portal.board.file.FileVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class NoticeVO extends BoardVO{
	
	private String category;
	private String department;
	private String campus;

}
