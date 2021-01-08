package com.project.portal.board.notice;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.test.context.SpringBootTest;

import com.project.portal.board.BoardVO;
import com.project.portal.board.notice.NoticeMapper;
import com.project.portal.board.notice.NoticeVO;

@SpringBootTest
class NoticeMapperTest {
	
	@Autowired
	private NoticeMapper noticeMapper;

	
	//@Test
	void getOneTest() throws Exception{
		
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setNum(4);
		
		BoardVO boardVO = noticeMapper.getOne(noticeVO);
		
		assertNotNull(boardVO);
		
	}
	
	@Test
	void setInsertTest() throws Exception{
			
			for(int i=0; i<60; i++) {
				NoticeVO noticeVO = new NoticeVO();
				noticeVO.setCategory("일반");
				noticeVO.setDepartment("학생지원팀");
				noticeVO.setCampus("성남");
				noticeVO.setTitle("공지사항"+i);
				noticeVO.setContents("2021학년도 1학기 공고"+i);
				
				int result = noticeMapper.setInsert(noticeVO);
				
				if(i%10==0) {
					Thread.sleep(1000);
				}
				
			}
			
			System.out.println("Finish");
		}

}
