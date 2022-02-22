package com.samhein.loginreg.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.samhein.loginreg.models.Book;
import com.samhein.loginreg.services.BookService;
import com.samhein.loginreg.services.UserService;

@Controller
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private UserService userService;
	
	// dashboard
	@GetMapping("/dashboard")
	public String dashboard(HttpSession session, Model model) {
		if(session.getAttribute("userId")==null) {
			return "redirect:/";
		} else {
			Long userId = (Long) session.getAttribute("userId");
			model.addAttribute("allBooks", bookService.allBooks());
			model.addAttribute("user", userService.findOne(userId));
			return "dashboard.jsp";
		}
	}
	
	// create (render form and process)
	@GetMapping("/books/new")
	public String createBookForm(@ModelAttribute("book")Book book, HttpSession session) {
		if(session.getAttribute("userId")==null) {
			return "redirect:/";
		} else {
			return "createBook.jsp";
		}
	}
	@PostMapping("/books/new")
	public String createBookProcess(@Valid @ModelAttribute("book")Book book, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "createBook.jsp";
		} else {
			bookService.saveBook(book);
			return "redirect:/dashboard";
		}
	}
	
	// get one
	@GetMapping("/books/{bookId}")
	public String showOneBook(@PathVariable("bookId")Long bookId, Model model, HttpSession session) {
		if(session.getAttribute("userId")==null) {
			return "redirect:/";
		} else {
		Book book = bookService.oneBook(bookId);
		model.addAttribute("book", book);
		return "showOneBook.jsp";
		}
	}
	// edit
	
	// delete
	
}
