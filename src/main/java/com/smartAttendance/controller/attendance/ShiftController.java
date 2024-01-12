package com.smartAttendance.controller.attendance;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.smartAttendance.bean.Resource;
import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.Shift;
import com.smartAttendance.service.attendance.IShiftService;

@Controller
public class ShiftController implements IShiftController {
	private static final ModelAndView ERROR = null;
	@Autowired
	private IShiftService shiftService;
	


	/******************** Create Shift ********************/
	
	@RequestMapping(value = "/createshift", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView create(HttpServletRequest request){
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("lb_shiftName", Resource.loadProperty("attendance", "shift_label_shift_name"));
				
		return new ModelAndView("attendance/shift/create", "map", map);
	}
	
	/******************** Store Shift ********************/
	
	@RequestMapping(value = "/storeshift", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public WSResponse store(HttpServletRequest request){
		System.out.println("Store called");

		Map<String, String[]> map = request.getParameterMap();

	    System.out.println("all okay");
		WSResponse data = shiftService.insertData(map);

		return data;
	}
	
	/******************** Edit Shift ********************/
	/*
	@RequestMapping("/shift/edit")
	public ModelAndView edit(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		return new ModelAndView("attendance/shift/edit", "map", map);
	}
	*/
	/******************** Show Shift ********************/
	
	/*@RequestMapping("/shift/show")
	public ModelAndView show(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("lb_shiftName", Resource.loadProperty("attendance", "shift_label_shift_name"));
		
		return new ModelAndView("attendance/shift/show", "map", map);
	}*/
	
	/******************** ShowChange Shift ********************/
	
	/*@RequestMapping("/shift/showchange")
	public ModelAndView showchange(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		return new ModelAndView("attendance/shift/showchange", "map", map);
	}
	*/
	/******************** Profile Shift ********************/
	
	@RequestMapping(value = "/shiftprofile/{id}/{mode}/{action}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView show(@PathVariable(value="id") UUID id, @PathVariable(value = "mode") String mode, @PathVariable (value = "action") String action){
		Shift entity;
		entity = shiftService.getById(id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("entity", entity);
		map.put("shift_name", entity.getShiftName());
		
		map.put("lb_shiftName", Resource.loadProperty("attendance", "shift_label_shift_name"));
		map.put("lb_emailParents", Resource.loadProperty("attendance", "shift_label_email_parents"));
		map.put("lb_emailStudents", Resource.loadProperty("attendance", "shift_label_email_students"));
		map.put("lb_textParents", Resource.loadProperty("attendance", "shift_label_text_parents"));
		map.put("lb_textStudents", Resource.loadProperty("attendance", "shift_label_text_students"));
		
		
		
		return new ModelAndView("attendance/shift/profile", "map", map);
	}

	@Override
	public ModelAndView index() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView show(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView create() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView edit(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView showSearch(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WSResponse get(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WSResponse update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WSResponse destroy(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String search(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}
}
