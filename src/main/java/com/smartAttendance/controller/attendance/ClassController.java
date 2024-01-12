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
import com.smartAttendance.model.attendance.DClass;
import com.smartAttendance.service.attendance.ClassService;
import com.smartAttendance.service.attendance.IClassService;

@RestController
@RequestMapping("")
public class ClassController implements IClassController {
	private static final ModelAndView ERROR = null;
	
	@Autowired
	private IClassService classService;
	

	/********************Class Create********************/
	@RequestMapping(value="/create-class", method=RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView create(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("lb_mainTitle", Resource.loadProperty("attendance", "class_label_main_title"));
		map.put("lb_description", Resource.loadProperty("attendance", "class_label_description"));
		map.put("lb_meetingDays", Resource.loadProperty("attendance", "class_label_meeting_days"));
		return new ModelAndView("attendance/class/create", "map", map);
	}
	/*******store**********/
	@RequestMapping(value="/store-class", method=RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE)
	public WSResponse store(HttpServletRequest request){
	    System.out.println("Store called");
	    
	    Map<String, String[]> map = request.getParameterMap();
	    WSResponse data = classService.insertData(map);
	    
	    return data;
	}
	
	/*******Class edit general info**********//*
	@RequestMapping("/edit-info")
	public ModelAndView classEditGeneralInfo(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("lb_description", Resource.loadProperty("attendance", "class_label_description"));
		return new ModelAndView("attendance/class/edit-class-general-info", "map", map);
	}*/
	
	/********************Class edit********************//*
	@RequestMapping(value="/edit", method=RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView edit(@PathVariable(value="id") UUID id, @PathVariable(value="mode") String mode){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("lb_description", Resource.loadProperty("attendance", "class_label_description"));
		map.put("lb_teachers", Resource.loadProperty("attendance", "class_label_teachers"));
		map.put("lb_note", Resource.loadProperty("attendance", "class_label_note"));
		map.put("lb_meeting_days", Resource.loadProperty("attendance", "class_label_meeting_days"));
		map.put("lb_status", Resource.loadProperty("attendance", "class_label_status"));
		map.put("lb_emailParents", Resource.loadProperty("attendance", "class_label_email_parents"));
		map.put("lb_emailStudents", Resource.loadProperty("attendance", "class_label_email_students"));
		map.put("lb_texSmsStudents", Resource.loadProperty("attendance", "class_label_text_sms_students"));
		map.put("lb_texSmsParents", Resource.loadProperty("attendance", "class_label_text_sms_parents"));
		List<DClass> dClass = classService.getCurrent();
        int length = dClass.size();
        map.put("id", dClass.get(length-1).getClassId());
        map.put("class_name", dClass.get(length-1).getClassName());
        map.put("teachers", dClass.get(length-1).getTeachers());
        map.put("meeting_days", dClass.get(length-1).getMeetingDays());
        map.put("start_time", dClass.get(length-1).getStartTime());
        map.put("end_time", dClass.get(length-1).getEndTime());
        map.put("status", dClass.get(length-1).getStatus());
		
		return new ModelAndView("attendance/class/edit", "map", map);
	}*/
	
/***********Class Show**********/
	@RequestMapping(value="/show-class/{id}/{mode}/{action}", method= RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView show(@PathVariable(value="id") UUID id, @PathVariable(value="mode") String mode, @PathVariable(value="action") String action){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("lb_description", Resource.loadProperty("attendance", "class_label_description"));
		map.put("lb_className", Resource.loadProperty("attendance", "class_label_class_name"));
		
		DClass entity;
		entity = classService.getById(id);
		System.out.println("From Controller: "+entity.getClassName());
		
		
		map.put("class_name", entity.getClassName());
		
		return new ModelAndView("attendance/class/show", "map", map);
	}
/******************** Edit Class ********************/
    
    @RequestMapping(value="/edit/{id}/{mode}/{action}", method= RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView edit(@PathVariable(value="id") UUID id, @PathVariable(value="mode") String mode, @PathVariable(value="action") String action){
        Map<String, Object> map = new HashMap<String, Object>();
        
        
        /*int length = dClass.size();
        map.put("class_name", dClass.get(length-1).getClassName());
        map.put("teachers", dClass.get(length-1).getTeachers());
        map.put("meeting_days", dClass.get(length-1).getMeetingDays());
        map.put("start_time", dClass.get(length-1).getStartTime());
        map.put("end_time", dClass.get(length-1).getEndTime());
        map.put("status", dClass.get(length-1).getStatus());*/
        map.put("lb_description", Resource.loadProperty("attendance", "class_label_description"));
		map.put("lb_teachers", Resource.loadProperty("attendance", "class_label_teachers"));
		map.put("lb_note", Resource.loadProperty("attendance", "class_label_note"));
		map.put("lb_meeting_days", Resource.loadProperty("attendance", "class_label_meeting_days"));
		map.put("lb_status", Resource.loadProperty("attendance", "class_label_status"));
		map.put("lb_emailParents", Resource.loadProperty("attendance", "class_label_email_parents"));
		map.put("lb_emailStudents", Resource.loadProperty("attendance", "class_label_email_students"));
		map.put("lb_texSmsStudents", Resource.loadProperty("attendance", "class_label_text_sms_students"));
		map.put("lb_texSmsParents", Resource.loadProperty("attendance", "class_label_text_sms_parents"));
        DClass entity;
        entity = classService.getById(id);
        map.put("class_name", entity.getClassName());
        
                
        return new ModelAndView("attendance/class/edit", "map", map);
    }
    @RequestMapping("/update")
    public WSResponse update(HttpServletRequest request){
        Map<String, String[]> map = request.getParameterMap();
        WSResponse data = classService.updateData(map);
        
 
        
        return data;
    }
@Override
public ModelAndView index() {
	// TODO Auto-generated method stub
	return null;
}
/*@Override
public ModelAndView show(UUID id) {
	// TODO Auto-generated method stub
	return null;
}*/
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
public WSResponse destroy(HttpServletRequest request) {
	// TODO Auto-generated method stub
	return null;
}
@Override
public String search(HttpServletRequest request) {
	// TODO Auto-generated method stub
	return null;
}

/*@Override
public WSResponse update(HttpServletRequest request) {
	// TODO Auto-generated method stub
	return null;
}*/
public ModelAndView edit(UUID id, String mode) {
	// TODO Auto-generated method stub
	return null;
}
@Override
public ModelAndView show(UUID id) {
	// TODO Auto-generated method stub
	return null;
}


	
	}




/*@RequestMapping("/create")
public ModelAndView create(HttpServletRequest request){
    
    Map<String,Object> map = new HashMap<String,Object>();
    return new ModelAndView("scm_slc/shipment/create","map",map);
}*/