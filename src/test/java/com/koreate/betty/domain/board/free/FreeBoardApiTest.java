package com.koreate.betty.domain.board.free;

import java.util.List;

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
import com.koreate.betty.domain.board.dto.form.FreeBoardForm;
import com.koreate.betty.domain.board.service.FreeBoardService;
import com.koreate.betty.domain.board.vo.FreeBoard;
import com.koreate.betty.global.config.AppConfig;
import com.koreate.betty.global.config.RootConfig;
import com.koreate.betty.global.config.WebConfig;

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
	
	FreeBoardForm form1;
	FreeBoardForm form2;
	FreeBoardForm form3;
	FreeBoardForm ex;

	FreeBoardForm formR1;
	FreeBoardForm formR2;
	FreeBoardForm formR3;

	FreeBoardForm formU1;
	FreeBoardForm formU2;
	FreeBoardForm formU3;
	
	@Before
	public void init_data() {
		
		mvc = MockMvcBuilders.webAppContextSetup(wc).build();
		
		form1 = new FreeBoardForm();
		form1.setMemberId("id001");
		form1.setTag("??????");
		form1.setTitle("?????? 001");
		form1.setContent("?????? 001");
		
		form2 = new FreeBoardForm();
		form2.setMemberId("id002");
		form2.setTag("??????");
		form2.setTitle("?????? 002");
		form2.setContent("?????? 002");
		
		form3 = new FreeBoardForm();
		form3.setMemberId("id003");
		form3.setTag("??????");
		form3.setTitle("?????? 003");
		form3.setContent("?????? 003");
		
		ex = new FreeBoardForm();
		ex.setMemberId("none");
		ex.setTag("tag");
		ex.setTitle("title");
		ex.setContent("content");
		
		formR1 = new FreeBoardForm();
		formR1.setBno(6);
		formR2 = new FreeBoardForm();
		formR2.setBno(7);
		formR3 = new FreeBoardForm();
		formR3.setBno(8);

		formU1 = new FreeBoardForm();
		formU1.setBno(3);
		formU1.setTag("??????");
		formU1.setTitle("??????");
		formU1.setContent("??????");

		formU2 = new FreeBoardForm();
		formU2.setBno(4);
		formU2.setTag("??????");
		formU2.setTitle("??????");
		formU2.setContent("??????");

		formU3 = new FreeBoardForm();
		formU3.setBno(5);
		formU3.setTag("?????????");
		formU3.setTitle("???????????????");
		formU3.setContent("??????????????????");
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
		dto.setTitle("??????");
		dto.setTag("0123456789 0123456789 0123456789");
		dto.setContent("????????????");
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
	
		//@Test
		public void removeTest() {
			int first = freeBoardService.remove(1);
			int second = freeBoardService.remove(2);
			int third = freeBoardService.remove(3);
			log.info("first={}, second={}, third={}",first,second,third);
		}

			//@Test
			public void updateTest() {
				int first = freeBoardService.update(formU1);
				int second = freeBoardService.update(formU2);
				int third = freeBoardService.update(formU3);
				log.info("first={}, second={}, third={}",first,second,third);
			}

		//@Test
		/*
		public void listTest() {
			List<FreeBoard> list = freeBoardService.freeList(ex);
			log.info("list : "+ list.size());
			FreeBoard board = list.get(1);
			log.info(board.getTitle());
		}
		*/
}
