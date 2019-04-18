package com.team150.Review.Service;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team150.Review.Model.CommentVO;
import com.team150.Review.Model.ReviewDAO;
import com.team150.Review.Model.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Inject
	private ReviewDAO dao;

	// 리뷰 등록 (실행)
	@Transactional
	public void reviewRegister(ReviewVO reviewVO, HttpServletRequest request) throws Exception {

		String imgName = "";
		String uploadUri = "/uploadFile/reviewPhoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadUri);

		if (!reviewVO.getPhotoFile().isEmpty()) {

			imgName = reviewVO.getReemail() + "_" + reviewVO.getPhotoFile().getOriginalFilename();

			reviewVO.getPhotoFile().transferTo(new File(dir, imgName));

			reviewVO.setRephoto(imgName);
		}

		int result = dao.reviewCreate(reviewVO);

		if (result == 0) {
			System.out.println("Join Fail!!");
		} else {
			System.out.println("Join Success!!");
		}
	}

	@Override
	// 리뷰 조회 (페이지)
	public List<ReviewVO> reviewSelecter() {
		return dao.reviewListAll();
	}
	
	@Override
	// 리뷰 상세, 수정 (페이지)
	public ReviewVO reviewInfoer(int reseq) {
		return dao.reviewSelectOne(reseq);
	}
	
	@Override
	// 리뷰 수정 (실행)
	public int reviewUpdater(ReviewVO reviewVO, HttpServletRequest request) throws Exception {

		String imgName = "";
		String uploadUri = "/uploadFile/reviewPhoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadUri);

		if (!reviewVO.getPhotoFile().isEmpty()) {

			imgName = reviewVO.getReemail() + "_" + reviewVO.getPhotoFile().getOriginalFilename();

			reviewVO.getPhotoFile().transferTo(new File(dir, imgName));

			reviewVO.setRephoto(imgName);
		}
		return dao.reviewUpdate(reviewVO);
	}
	
	@Override
	// 리뷰 삭제 (실행)
	public int reviewDeleter(int reseq) {
		return dao.reviewDelete(reseq);
	}

//	----------------------------------------------------------------------------

//	관리자

	// 답글 등록 (실행)
	public void commentRegister(CommentVO commentVO) {

		int result = dao.commentCreate(commentVO);

		if (result == 0) {
			System.out.println("Join Fail!!");
		} else {
			System.out.println("Join Success!!");
		}
	}

	// 답글 조회 (실행)
	public List<CommentVO> commentSelecter() {
		return dao.listAllComment();
	}

	// 답글 수정 (페이지)
	public CommentVO commentInfoer(int coseq) {
		return dao.commentSelectOne(coseq);
	}

	// 답글 수정 (실행)
	public int commentUpdater(CommentVO commentVO) {
		return dao.commentUpdate(commentVO);
	}

	// 답글 삭제 (실행)
	public int commentDeleter(int coseq) {
		return dao.commentDelete(coseq);
	}

	// 답글 + 댓글 삭제 (실행)
	public int allDeleter(int reseq) {
		return dao.allDelete(reseq);
	}
}
