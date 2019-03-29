package com.team150.Reserve.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team150.Reserve.Model.ReserveDAO;
import com.team150.Reserve.Model.ReserveVO;

@Service
public class ReserveServiceImpl implements ReserveService {

	@Inject
	private ReserveDAO dao;

	@Override
	public void regist(ReserveVO vo) throws Exception {
		dao.create(vo);

	}

	@Override
	public ReserveVO read(int useq) throws Exception {
		return dao.read(useq);
	}

	@Override
	public ReserveVO read1(int rseq) throws Exception {
		return dao.read1(rseq);
	}

	@Override
	public void modify(ReserveVO vo) throws Exception {
		dao.modify(vo);

	}

	@Override
	public void remove(int rseq) throws Exception {
		dao.remove(rseq);

	}

	@Override
	public List<ReserveVO> listAll() throws Exception {
		return dao.listAll();
	}

}
