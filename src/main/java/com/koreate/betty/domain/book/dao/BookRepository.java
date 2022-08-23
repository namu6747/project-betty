package com.koreate.betty.domain.book.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;

import com.koreate.betty.domain.book.provider.BookProvider;
import com.koreate.betty.domain.book.vo.Book;

@Mapper
public interface BookRepository {
	
	@UpdateProvider(type=BookProvider.class, method="update")
	public int update(@Param("targetCode") String targetCode, @Param("book") Book book);

	@SelectProvider(type=BookProvider.class, method="jBooksList")
	public List<Book> jBooksList();

	@SelectProvider(type=BookProvider.class, method="jBooksSearch")
	public List<Book> jBooksSearch();
	
}