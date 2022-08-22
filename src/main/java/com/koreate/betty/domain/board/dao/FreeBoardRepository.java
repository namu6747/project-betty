package com.koreate.betty.domain.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;

import com.koreate.betty.domain.board.provider.FreeBoardProvider;
import com.koreate.betty.domain.board.vo.FreeBoard;

@Mapper
public interface FreeBoardRepository {
	
	// 게시글 등록
	@InsertProvider(type=FreeBoardProvider.class, method="save")
	@Options(useGeneratedKeys = true , keyProperty = "bno")
	public void save(FreeBoard board);
	
	// 게시글 삭제
	@UpdateProvider(type=FreeBoardProvider.class, method="freeRemove")
	public void freeRemove(FreeBoard board);
	
	// 게시글 수정
	@UpdateProvider(type=FreeBoardProvider.class, method="freeUpdate")
	public void freeUpdate(FreeBoard board);
	
	// 게시글 전체 목록
	@SelectProvider(type=FreeBoardProvider.class, method="freeList")
	public List<FreeBoard> listAll();
	
}
