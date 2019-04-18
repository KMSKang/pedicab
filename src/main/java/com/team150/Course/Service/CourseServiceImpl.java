package com.team150.Course.Service;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team150.Course.Model.CourseDAO;
import com.team150.Course.Model.CourseVO;
import com.team150.Course.Model.FavoriteVO;
import com.team150.Review.Model.CommentVO;
import com.team150.Review.Model.ReviewVO;

@Service
public class CourseServiceImpl implements CourseService {

	@Inject
	private CourseDAO dao;

	@Override
	@Transactional
	public void regist(CourseVO vo, HttpServletRequest request) throws Exception {
		String imgName = "";
		String uploadURI = "/uploadFile/coursePhoto/";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);

		System.out.println(dir);

		if (!vo.getImgfile().isEmpty()) {
			imgName = vo.getCname();
			vo.getImgfile().transferTo(new File(dir, imgName));
			vo.setCimg(imgName);
		}
		int result = dao.create(vo);

		if (result == 0) {
			System.out.println("create fail");
		} else {
			System.out.println("create success");
		}

	}

	@Override
	public CourseVO read(int cseq) throws Exception {
		return dao.read(cseq);
	}

	@Override
	public void modify(CourseVO vo) throws Exception {
		dao.modify(vo);

	}

	@Override
	public void remove(int cseq) throws Exception {
		dao.remove(cseq);

	}

	@Override
	public List<CourseVO> listAll() throws Exception {
		return dao.listAll();
	}

//	---------------------------------------------------------------------------

	// 즐겨찾기 등록 (실행)
	public int favoriteRegister(FavoriteVO favoriteVO) {

		int result = dao.createFavorite(favoriteVO);

		return result;
	}

	// 즐겨찾기 삭제
	public int deleteFavorite(FavoriteVO favoriteVO) {

		int result = dao.deleteFavorite(favoriteVO);

		return result;
	}

	// 즐겨찾기 조회
	public List<FavoriteVO> favoriteSelecter() {
		return dao.selectListfavorite();
	}

	// 답글 조회 (페이지)
	public List<CommentVO> commentSelecter() {
		return dao.listAllComment();
	}

	// 리뷰 조회 (페이지)
	public List<ReviewVO> reviewSelecter() {
		return dao.reviewListAll();
	}

	@Override
	public int count() {
		return dao.count();
	}
}