package com.smartAttendance.controller.attendance;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.smartAttendance.controller.ICommonController;
import com.smartAttendance.model.attendance.Subject;

public interface ISubjectController extends ICommonController<Subject> {
	public ModelAndView create(HttpServletRequest request);
	public ModelAndView edit(UUID id,String mode);
	public ModelAndView show(UUID id,String mode,String action);
}
