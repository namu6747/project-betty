package com.koreate.betty.domain.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreate.betty.domain.board.dao.FreeBoardRepository;
import com.koreate.betty.domain.board.dto.form.FreeBoardForm;
import com.koreate.betty.domain.board.vo.FreeBoard;

@Service
public class FreeBoardService {
	
	@Autowired
	FreeBoardRepository freeBoardRepository;
	
	// 게시글 등록
	public int write(FreeBoardForm form) {
		FreeBoard board = form.createFreeBoard();
		freeBoardRepository.save(board);
		return board.getBno();
	}
	
	// 게시글 삭제
	public int remove(FreeBoardForm form) {
		FreeBoard board = form.createFreeBoard();
		freeBoardRepository.freeRemove(board);
		return board.getBno();
	}
	
	// 게시글 수정
	public int update(FreeBoardForm form) {
		FreeBoard board = form.createFreeBoard();
		freeBoardRepository.freeUpdate(board);
		return board.getBno();
	}
	
	// 게시글 전체 목록
	public List<FreeBoard> freeList(FreeBoardForm form) {
		FreeBoard board = form.createFreeBoard();
		return freeBoardRepository.listAll(board);
	}
	
	// 조회수 증가
	public int updateCnt(int bno) {
		return freeBoardRepository.updateCnt(bno);
	}
	
	
	
}
