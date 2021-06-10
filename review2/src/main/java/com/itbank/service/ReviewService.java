package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.model.ReviewDAO;
import com.itbank.model.ReviewDTO;

@Service
public class ReviewService {

	@Autowired
	private ReviewDAO dao;
	private final String uploadPath = "D:\\upload";
	
	public ReviewService() {
		File dir = new File(uploadPath);
		if(dir.exists() == false)
			dir.mkdirs();
	}

	public int insertReview(ReviewDTO dto) {
		
		List<MultipartFile> files = dto.getFiles();
		String today = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		
		int row = dao.insertReview(dto);
		int idx = dao.selectMaxIdx();
		
		for(MultipartFile f : files) {
			String fileName = today + "-" + f.getOriginalFilename();
			File dest = new File(uploadPath, fileName);
			try {
				f.transferTo(dest);
			} catch (IllegalStateException | IOException e) {}
			row += dao.insertReviewImg(idx, fileName);
			
		}
		return idx;
	}

	public List<ReviewDTO> selectList() {
		return dao.selectList();
	}

	public List<ReviewDTO> selectOne(int idx) {
		return dao.selectOne(idx);
	}
	
	
}
