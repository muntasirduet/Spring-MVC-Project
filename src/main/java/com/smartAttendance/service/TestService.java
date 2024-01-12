package com.smartAttendance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartAttendance.dao.TestDAO;
import com.smartAttendance.model.Test;

@Service("testService")
public class TestService {
	public TestDAO testDao;
	
	@Autowired
	public void setTestDao(TestDAO testDao){
		this.testDao = testDao;
	}
	
	public List<Test> getCurrent(){
		return testDao.getTest();
	}
	
	public TestService(){
		System.out.println("Service is okay!!!");
	}
}
