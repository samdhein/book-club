package com.samhein.loginreg.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.samhein.loginreg.models.Book;
import com.samhein.loginreg.repositories.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository bookRepo;
	
	// get all
	public List<Book> allBooks(){
		return bookRepo.findAll();
	}
	
	// get one
	public Book oneBook(Long bookId) {
		Optional<Book> optionalBook = bookRepo.findById(bookId);
		if(optionalBook.isPresent()) {
			return optionalBook.get();
		} else {
			return null;
		}
	}
	
	// create
	public Book saveBook(Book book) {
		return bookRepo.save(book);
	}
	
	// update
	public Book updateBook(Book book) {
		return bookRepo.save(book);
	}
	
	// delete
	public void deleteBook(Long bookId) {
		bookRepo.deleteById(bookId);
	}
}
