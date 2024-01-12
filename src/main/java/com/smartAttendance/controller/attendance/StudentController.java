package com.smartAttendance.controller.attendance;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.smartAttendance.bean.Resource;
import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.Student;
import com.smartAttendance.service.attendance.IStudentService;

@RestController
@RequestMapping("")
public class StudentController implements IStudentController {
	private static final ModelAndView ERROR=null;
	@Autowired
	private IStudentService studentService;
	
	
	/*******store**********/
	@RequestMapping(value="/student-store", method= RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE )
	@Override
	public WSResponse store(HttpServletRequest request){
	    System.out.println("Store called");
	    
	    Map<String, String[]> map = request.getParameterMap();
	    WSResponse data = studentService.insertData(map);
	    
	    return data;
	}

	/*******student Create**********/
	@RequestMapping(value="/student-create" , method=RequestMethod.GET,produces= MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView create(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		return new ModelAndView("attendance/student/create", "map", map);
	}
	
	/***********student edit**********//*
	@RequestMapping("/student/edit")
	public ModelAndView studentEdit(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Student> student = studentService.getCurrent();
        int length = student.size();
        map.put("id", student.get(length-1).getId());
        map.put("first_name", student.get(length-1).getFirstName());
        map.put("last_name", student.get(length-1).getLastName());
        map.put("info", student.get(length-1).getInfo());
        map.put("email", student.get(length-1).getEmail());
        map.put("phone_mobile", student.get(length-1).getPhoneMobile());
        map.put("phone_home", student.get(length-1).getPhoneHome());
        map.put("country", student.get(length-1).getCountry());
        map.put("preferred_language", student.get(length-1).getPreferredLanguage());
        map.put("current_class", student.get(length-1).getCurrentClass());
        map.put("add_to_class", student.get(length-1).getAddToClass());
        map.put("status", student.get(length-1).getStatus());
        map.put("student_id", student.get(length-1).getStudentId());
        map.put("date_of_birth", student.get(length-1).getDateOfBirth());
        map.put("grade_level", student.get(length-1).getGradeLevel());
		
		return new ModelAndView("attendance/student/edit", "map", map);
	}*/
	
	/***********student Show**********/
	@RequestMapping(value="/student-show/{id}/{mode}/{action}", method= RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView show(@PathVariable(value="id") UUID id, @PathVariable(value="mode") String mode, @PathVariable(value="action") String action){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("lb_info", Resource.loadProperty("attendance", "student_label_info"));
		map.put("lb_email", Resource.loadProperty("attendance", "student_label_email"));
		map.put("lb_phone", Resource.loadProperty("attendance","student_label_phone"));
		map.put("lb_currentClasses", Resource.loadProperty("attendance","class_label_current_clas"));
		map.put("lb_status", Resource.loadProperty("attendance","student_label_status"));
		map.put("lb_preferredLanguage", Resource.loadProperty("attendance","student_label_preferred_language"));
		map.put("lb_dateOfBirth", Resource.loadProperty("attendance","student_label_date_of_birth"));
		map.put("lb_gradeLevel", Resource.loadProperty("attendance","student_label_grade_level"));
		map.put("lb_password", Resource.loadProperty("attendance","student_label_password"));
		map.put("lb_myAtHistory", Resource.loadProperty("attendance","student_label_my_at_history"));
		map.put("lb_addANote", Resource.loadProperty("attendance","student_label_add_a_note"));
		map.put("lb_studentId", Resource.loadProperty("attendance", "student_label_student_id"));
		
		Student entity;
		entity = studentService.getById(id);

		map.put("student_id", entity.getStudentId());
		map.put("first_name", entity.getFirstName());
		map.put("last_name", entity.getLastName());
		map.put("add_to_class", entity.getAddToClass());
		return new ModelAndView("attendance/student/show", "map", map);
	}
	/*******store**********/
/*	@RequestMapping("student/update")
	public WSResponse update(HttpServletRequest request){
	    System.out.println("update called");
	    
	    Map<String, String[]> map = request.getParameterMap();
	    
	    System.out.println("from controller: "+map);
	    
	    WSResponse data = studentService.updateData(map);
	    
	    
	    return data;
	}*/

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

/*	@Override
	public ModelAndView create() {
		// TODO Auto-generated method stub
		return null;
	}
*/
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
	public WSResponse destroy(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String search(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

/*	@Override
	public ModelAndView create(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}
*/
	@Override
	public ModelAndView edit(UUID id, String mode) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public ModelAndView create() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WSResponse update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}
}