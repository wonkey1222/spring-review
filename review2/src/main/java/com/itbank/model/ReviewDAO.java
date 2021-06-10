package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface ReviewDAO {

	@Insert("insert into review (title, content) values (#{title}, #{content})")
	int insertReview(ReviewDTO dto);

	@Select("select max(idx) from review")
	int selectMaxIdx();
	
	@Insert("insert into review_img (ridx, fileName) values (#{ridx}, #{fileName})")
	int insertReviewImg(@Param("ridx")int idx, @Param("fileName")String fileName);

	@Select("select * from review order by idx desc")
	List<ReviewDTO> selectList();

	List<ReviewDTO> selectOne(int idx);
	
	
	
}
