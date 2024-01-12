package com.smartAttendance.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.smartAttendance.model.Test;

@Component("testDao")
public class TestDAO {
	
	public JdbcTemplate template;
	
	@Autowired
	public void setTemplate(DataSource template){
		this.template = new JdbcTemplate(template);
	}
	
	public List<Test> getTest(){
		return template.query("select * from employee", new RowMapper<Test>(){

			@Override
			public Test mapRow(ResultSet rs, int rowNum) throws SQLException {
				Test test = new Test();
				
				test.setEmployeeName(rs.getString("employee_name"));
				test.setEmployeeSalary(rs.getString("employee_salary"));
				
				return test;
			}
			
		});
	}
	
	public TestDAO(){
		System.out.println("DAO is okay!!!");
	}
}
