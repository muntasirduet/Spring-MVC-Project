package com.smartAttendance.controller;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.smartAttendance.bean.WSResponse;

public interface ICommonController<T> {
	public ModelAndView index();
	public ModelAndView show(UUID id);
	public ModelAndView create();
	public ModelAndView edit(UUID id);
	public ModelAndView showSearch(HttpServletRequest request);
	
	public WSResponse get(UUID id);
	public WSResponse store(HttpServletRequest request);
	public WSResponse update(HttpServletRequest request);
	public WSResponse destroy(HttpServletRequest request);
	
	public String search(HttpServletRequest request);
}