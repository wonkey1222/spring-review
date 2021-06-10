package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.ReviewDTO;
import com.itbank.service.ReviewService;

@Controller
public class MainController {	// 2021.06.10
	
	@Autowired private ReviewService rs;

	@GetMapping("/write")
	public void write() {}
	
	@PostMapping("/write")
	public String write(ReviewDTO dto) {
		dto.getFiles().forEach(f -> System.out.println(f.getOriginalFilename()));
		
		int idx = rs.insertReview(dto);
		return "redirect:/";
	}
	
	@GetMapping("/list")
	public void list(Model model) {
		List<ReviewDTO> list = rs.selectList();
		model.addAttribute("list", list);
	}
	
	@GetMapping("/read/{idx}")
	public ModelAndView read(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("read");
		List<ReviewDTO> list = rs.selectOne(idx);
		mav.addObject("list", list);
		return mav;
	}
	
}
