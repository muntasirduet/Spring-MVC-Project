package com.smartAttendance.controller.attendance;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.smartAttendance.controller.ICommonController;
import com.smartAttendance.model.attendance.Shift;

public interface IShiftController extends ICommonController<Shift> {

	ModelAndView create(HttpServletRequest request);

	ModelAndView show(UUID id, String mode, String action);

}
