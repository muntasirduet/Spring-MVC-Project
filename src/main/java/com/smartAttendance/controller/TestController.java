package com.smartAttendance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.smartAttendance.model.Test;
import com.smartAttendance.service.TestService;

@Controller
public class TestController {
	public TestService testService;
	
	@Autowired
	public void setTestService(TestService testService){
		this.testService = testService;
	}
	
	@RequestMapping("/show")
	public ModelAndView show(){
		List<Test> list = testService.getCurrent();
		
		for (Test li: list){
			System.out.println(li.getEmployeeName());
		}
		
		return new ModelAndView();
	}

}
