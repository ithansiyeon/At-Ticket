package com.test.admin.employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;


import com.test.atticket.DBUtil;

public class AdminEmployeeDAO {
	//db 담당
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public AdminEmployeeDAO() {
		DBUtil util = new DBUtil();
		conn = util.open();
	}
	
	public void close() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<AdminEmployeeDTO> getList(HashMap<String,String> map) {
		
		
		try {
			//목록 or 검색
			String where = "";
			
			if (map.get("search") != null) {
				//즉 search한게 무엇이라도 있을 경우에 이 구문에 들어오는 것이다 해당 구문에 들어있는걸 찾아주는 역할을 수행한다
				//해당 검색어에 있는것을 필터링 걸어서 찾아주면 된다.
				where = String.format("and (name like '%%%s%%' or jikwi like '%%%s%%' or salary like '%%%s%%' or ssn like '%%%s%%' or tel like '%%%s%%' or tn like '%%%s%%')",map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"));	
			}
			
			//페이징 조건이 여기서 들어가게 된다.
			String sql = String.format("select a.* from (select rownum as rnum, v.* from vwemployeeinfo v) a where rnum >= %s and rnum <= %s %s order by %s"
					,map.get("begin"), map.get("end"), where,map.get("sort"));
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<AdminEmployeeDTO> list = new ArrayList<AdminEmployeeDTO>();
			
			//쿼리 날린것을 기반으로 돌아온 데이터를 처리할 것이다.
			while (rs.next()) {
				
				AdminEmployeeDTO dto = new AdminEmployeeDTO();//객체를 만들어서 리스트에 넣어줄 것이다.
				
				dto.setSeq(rs.getString("seq"));
				dto.setName(rs.getString("name"));
				dto.setJikwi(rs.getString("jikwi"));
				dto.setSalary(rs.getString("salary"));
				dto.setSsn(rs.getString("ssn"));
				dto.setTel(rs.getString("tel"));
				dto.setBuseo(rs.getString("tn"));
				dto.setDelflag(rs.getString("delflag"));
				
				list.add(dto);//위의 조건을 모두 만족하는 dto 객체를 넣는다.
				
			}
			
			return list;
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	//페이징을 해줄 메소드라고 생각하면 된다.
	public int getTotalCount(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if (map.get("search") != null) {
				//즉 search한게 무엇이라도 있을 경우에 이 구문에 들어오는 것이다 해당 구문에 들어있는걸 찾아주는 역할을 수행한다
				//해당 검색어에 있는것을 필터링 걸어서 찾아주면 된다.
				where = String.format("and (name like '%%%s%%' or jikwi like '%%%s%%' or salary like '%%%s%%' or ssn like '%%%s%%' or tel like '%%%s%%' or tn like '%%%s%%')",map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"),map.get("search"));	
			}
			
			String sql = String.format("select count(*) as cnt from vwemployeeinfo %s",where);//현재 해당 조건을 만족하는 데이터의 행이 몇개인지 받아오는 작업을 수행함.
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return 0;
	}
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
