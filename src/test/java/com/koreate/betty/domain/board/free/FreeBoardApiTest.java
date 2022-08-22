package com.koreate.betty.domain.board.free;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.koreate.betty.domain.board.dto.FreeBoardDto;
import com.koreate.betty.domain.board.dto.form.FreeBoardWriteForm;
import com.koreate.betty.domain.board.service.FreeBoardService;
import com.koreate.betty.global.config.AppConfig;
import com.koreate.betty.global.config.RootConfig;
import com.koreate.betty.global.config.WebConfig;

import junit.framework.Assert;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebAppConfiguration
@ContextConfiguration(classes = { WebConfig.class, AppConfig.class, RootConfig.class })
@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
public class FreeBoardApiTest {

	@Autowired private WebApplicationContext wc;
	
	private MockMvc mvc;
	
	private ObjectMapper objectMapper = new ObjectMapper();
	
	@Autowired private FreeBoardService freeBoardService;
	
	FreeBoardWriteForm form1;
	FreeBoardWriteForm form2;
	FreeBoardWriteForm form3;
	FreeBoardWriteForm ex;
	
	@Before
	public void init_data() {
		
		mvc = MockMvcBuilders.webAppContextSetup(wc).build();
		
		form1 = new FreeBoardWriteForm();
		form1.setMemberId("id001");
		form1.setTag("자유");
		form1.setTitle("제목 001");
		form1.setContent("내용 001");
		
		form2 = new FreeBoardWriteForm();
		form2.setMemberId("id002");
		form2.setTag("질문");
		form2.setTitle("제목 002");
		form2.setContent("내용 002");
		
		form3 = new FreeBoardWriteForm();
		form3.setMemberId("id003");
		form3.setTag("일상");
		form3.setTitle("제목 003");
		form3.setContent("내용 003");
		
		ex = new FreeBoardWriteForm();
		ex.setMemberId("none");
		ex.setTag("tag");
		ex.setTitle("title");
		ex.setContent("content");
	}
	
	// @Test success
	public void ObjectMapperTest() throws Exception {
		
		String formToJson = objectMapper.writeValueAsString(form1);
		log.info("json = {}",formToJson);

	}
	
	@Test
	public void NORMAL_MOCKMVC_AND_FREEBOARD_WRITE() throws Exception {
		FreeBoardDto dto = new FreeBoardDto();
		dto.setMemberId("id001");
		dto.setTitle("제목");
		dto.setTag("0123456789 0123456789 0123456789");
		dto.setContent("정상동작");
		String dtoToJson = objectMapper.writeValueAsString(dto);
		
		log.info("============================================");
		log.info("json = {}",dtoToJson);
		log.info("============================================");
		
		MvcResult result = mvc.perform(MockMvcRequestBuilders.post("/boards/free/new")
								.contentType(MediaType.APPLICATION_JSON)
								.content(dtoToJson))
								.andReturn();
		String messageBody = result.getResponse().getContentAsString();
		log.info("MockMvc response HTTP Message Body = {}", messageBody);
		
	}
}
