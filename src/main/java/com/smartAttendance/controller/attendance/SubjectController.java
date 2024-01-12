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
import com.smartAttendance.model.attendance.Subject;
import com.smartAttendance.service.attendance.SubjectService;

@RestController 
@RequestMapping("")
public class SubjectController implements ISubjectController {
	public static final ModelAndView ERROR = null;
	
	@Autowired
	public SubjectService subjectService;

	 
	//********************  subject create  ********************\\
	
	@RequestMapping(value = "/subjectcreate",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView create(HttpServletRequest request) {
		Map <String,Object> map = new HashMap<String,Object>();
		map.put("lb_subjectName", Resource.loadProperty("attendance", "subject_label_description"));
		map.put("lb_pendingSubject", Resource.loadProperty("attendance", "subject_label_pending_subject") );
		return new ModelAndView("attendance/subject/Add Subject","map",map);
	}
	
	@RequestMapping(value = "/storesubject", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	public WSResponse store(HttpServletRequest request) {
		Map <String,String[]> map = request.getParameterMap();
		WSResponse data = subjectService.insertData(map);
		return data;
	}
	
	
	//********************  create subject list  ********************\\
		@RequestMapping(value = "/subjectlist",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
		public ModelAndView createsubjectlist(HttpServletRequest request) {
			Map <String,Object> map = new HashMap<String,Object>();
			map.put("lb_name", Resource.loadProperty("attendance", "subject_list_label_name"));
			return new ModelAndView("attendance/subject/subject list","map",map);
		}
		
		@RequestMapping( value = "storesubjectlist", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
		public WSResponse storesubjectlist(HttpServletRequest request) {
			Map <String,String[]> map =  request.getParameterMap();
			WSResponse data = subjectService.insertData(map);
			return data;
		}
		
	
		
	
	//********************  subject Edit  ********************\\
	@RequestMapping(value = "/editsubject/{id}/{mode}",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView edit(@PathVariable(value = "id")UUID id,@PathVariable(value = "mode")String mode) {
		Subject entity;
		entity = subjectService.getById(id);
		Map <String,Object> map = new HashMap<String,Object>();
 		map.put("lb_subjectName", Resource.loadProperty("attendance", "edit_subject_label_description"));
		map.put("lb_subjectCode", Resource.loadProperty("attendance", "edit_subject_label_subject_code"));
		
		map.put("subject_name", entity.getSubjectName());
		
		return new ModelAndView("attendance/subject/edit-subject-general-info","map",map);
	}
	
	@RequestMapping( value = "/updatesubject" , method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public WSResponse update(HttpServletRequest request) {
		Map <String,String[]> map = request.getParameterMap();
		WSResponse data = subjectService.updateData(map);
		return data;
	}
	
	
	
	//********************  subject profile Show ********************\\
	
	@RequestMapping(value = "/subjectprofile/{id}/{mode}/{action}",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView show(@PathVariable(value = "id") UUID id,@PathVariable(value = "mode")String mode,@PathVariable(value = "action")String action) {
		Subject entity ;
		entity = subjectService.getById(id);
		
		
		Map <String,Object> map = new HashMap<String,Object>(); 
		map.put("subject_name", entity.getSubjectName());
		return new ModelAndView("attendance/subject/subject profile","map",map);
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


	@Override
	public ModelAndView create() {
		return null;
	}


	

	
}