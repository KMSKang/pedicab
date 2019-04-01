package com.team150.Staff.Model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class StaffDaoImpl implements StaffDao {

	private String namespace = "StaffVO";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void create(StaffVO staff) throws Exception {
		sqlSession.insert(namespace + ".create" , staff);
	}
	
	@Override
	public StaffVO read(int sseq) throws Exception {
		return sqlSession.selectOne(namespace + ".read", sseq);
	}
	
	@Override
	public void modify(StaffVO staff) throws Exception {
		sqlSession.update(namespace + ".modify" , staff);
	}
	
	@Override
	public void remove(int sseq) throws Exception {
		sqlSession.delete(namespace + ".remove" , sseq);
	}
	
	@Override
	public List<StaffVO> listAll() throws Exception {
		return sqlSession.selectList(namespace + ".listAll");
	}


	
	/*
	 * public List<StaffVO> getStaffList(){
	 * 
	 * List<StaffVO> list = new ArrayList<StaffVO>();
	 * 
	 * String sql = "SELECT * FROM staff";
	 * 
	 * JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
	 * 
	 * list = jdbcTemplate.query(sql, new StaffRowMapper());
	 * 
	 * return list; }
	 * 
	 * public boolean insertStaff(StaffVO staff) {
	 * 
	 * String sql = "INSERT INTO staff "+
	 * "(sname, sphone, snickname, simg ) VALUES (?, ?, ?, ?)";
	 * 
	 * JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
	 * 
	 * int rows = jdbcTemplate.update( sql, new Object[] {staff.getSname(),
	 * staff.getSphone(), staff.getSnickname(), staff.getSimg()} );
	 * 
	 * return rows>0 ? true : false;
	 * 
	 * }
	 * 
	 * public boolean deleteStaff(int sseq) { String sql =
	 * "DELETE FROM staff WHERE sseq=?"; JdbcTemplate jdbcTemplate = new
	 * JdbcTemplate(dataSource); int rows = jdbcTemplate.update(sql,sseq); return
	 * rows>0 ? true : false; }
	 * 
	 * public boolean updateStaff(StaffVO staff) {
	 * 
	 * String sql = "UPDATE staff SET sphone=?, snickname=?, simg=? WHERE sseq=?";
	 * 
	 * JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
	 * 
	 * int rows = jdbcTemplate.update( sql,staff.getSphone(), staff.getSnickname(),
	 * staff.getSimg(), staff.getSseq()); return rows>0 ? true : false; }
	 * 
	 * public StaffVO getStaff(int sseq) { 
	 * String sql = "SELECT * FROM staff WHERE sseq=?";
	 * JdbcTemplate jdbcTemplate = new
	 * JdbcTemplate(dataSource); StaffVO staff = jdbcTemplate.queryForObject(sql, new
	 * Object[]{sseq}, new StaffRowMapper()); return staff; }
	 */

}
