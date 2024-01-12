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

import com.smartAttendance.bean.EnumData;
import com.smartAttendance.bean.Resource;
import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.Parent;
import com.smartAttendance.service.attendance.IParentService;

@RestController
public class ParentController implements IParentController{
	private static final ModelAndView ERROR = null;
	
	@Autowired
	private IParentService parentService;

	
	
	//********************** Create Parent**********************
		@RequestMapping(value = "/createparent",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
		@Override
		public ModelAndView create(HttpServletRequest request) {
			Map <String,Object> map = new HashMap<String,Object>();
			map.put("lb_parents", Resource.loadProperty("attendance","parent_label_parents"));
			map.put("lb_addParent", Resource.loadProperty("attendance", "parent_label_add_parent"));
			map.put("lb_createNewParent", Resource.loadProperty("attendance", "parent_label_create_new_parent"));
			return new ModelAndView("attendance/parent/Add Parent","map",map);
		}
		@RequestMapping(value = "store", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
		public WSResponse store(HttpServletRequest request) {
			Map <String,String[]> map = request.getParameterMap();
			WSResponse data = parentService.insertData(map);
			return data;
		}
		
		//********************** Create Parent List **********************
		
		@RequestMapping(value = "/createparentlist", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
		public ModelAndView createParentList() {
			Map <String,Object> map = new HashMap<String,Object>();
			map.put("lb_name", Resource.loadProperty("attendance", "parent_list_name"));
			map.put("lb_emailAddress", Resource.loadProperty("attendance", "parent_list_email_address"));
			map.put("lb_homePhone", Resource.loadProperty("attendance", "parent_list_home_phone"));
			map.put("lb_mobilePhone", Resource.loadProperty("attendance", "parent_list_mobile_phone"));
			map.put("lb_assignToStudent", Resource.loadProperty("attendance", "parent_list_assign_to_student"));
			
			return new ModelAndView("attendance/parent/ParentList","map",map);
		}
		
		@RequestMapping(value = "storeparent",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
		public WSResponse storeparent(HttpServletRequest request) {
			Map <String,String[]> map = request.getParameterMap();
			WSResponse data = parentService.insertListData(map);
			return data;
			
		}
		
		//********************** Show Parent**********************
		@RequestMapping(value = "/showparent/{id}/{mode}/{action}",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
		@Override
		public ModelAndView show(@PathVariable(value = "id")UUID id,@PathVariable(value = "mode") String mode,@PathVariable(value = "action") String action) {
			Parent entity;
			entity = parentService.getById(id);
			Map <String,Object> map = new HashMap<String,Object>();
			map.put("lb_famillyRole", Resource.loadProperty("attendance", "parent_show_familly_role"));
			map.put("lb_emailAddress", Resource.loadProperty("attendance", "parent_show_email_address"));
			map.put("lb_phone", Resource.loadProperty("attendance", "parent_show_phone"));
			map.put("lb_password", Resource.loadProperty("attendance", "parent_show_password"));
			 

			map.put("first_name", entity.getFirstName());
			map.put("last_name", entity.getLastName());
			map.put("email_address", entity.getEmailAddress());
			map.put("mobile_phone", entity.getMobileNumber());
			return new ModelAndView("attendance/parent/Edit-Parents-Profile","map",map);
		}
		
		
	
	//********************** Edit Parent**********************
	@RequestMapping(value = "/editparent/{id}/{mode}",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView edit(@PathVariable(value = "id")UUID id,@PathVariable(value = "mode")String mode) {
		Parent entity ;
		entity = parentService.getById(id);
		
		Map <String,String> getCountries = EnumData.getCountries();
		
		Map <String,Object> map = new HashMap<String,Object>();
		map.put("getCountries", getCountries);
		
		map.put("lb_name", Resource.loadProperty("attendance", "parent_edit_parent_bio_name"));
		map.put("lb_famillyRole", Resource.loadProperty("attendance", "parent_edit_parent_bio_familly_role"));
		map.put("lb_emailAddress", Resource.loadProperty("attendance", "parent_edit_parent_bio_email_address"));
		map.put("lb_phone", Resource.loadProperty("attendance", "parent_edit_parent_bio_phone"));
		map.put("lb_country", Resource.loadProperty("attendance", "parent_edit_parent_bio_country"));
		
		
		
		map.put("first_name", entity.getFirstName());
		map.put("last_name", entity.getLastName());
		map.put("email_address", entity.getEmailAddress());
		map.put("mobile_phone", entity.getMobileNumber());
		map.put("home_phone", entity.getHomeNumber());
		map.put("country", entity.getCountry());
		return new ModelAndView("attendance/parent/Edit Parent Bio info","map",map);
		
	}
	@RequestMapping( value = "/update", method = RequestMethod.POST)
	public WSResponse update(HttpServletRequest request) {
		Map <String,String[]> map = request.getParameterMap();
		WSResponse data = parentService.updateData(map);
		return data;
	}
	

	//********************** Parent Report **********************
	@RequestMapping("/reportparent")
	public ModelAndView parentreport(HttpServletRequest request) {
		Map <String,Object> map = new HashMap<String,Object>();
		map.put("lb_parent", Resource.loadProperty("attendance", "parent_report_parent"));
		map.put("lb_class", Resource.loadProperty("attendance", "parent_report_class"));
		map.put("lb_includeFeild", Resource.loadProperty("attendance", "parent_report_include_feild"));
		return new ModelAndView("attendance/parent/Parent Report","map",map);
	}
		
		
		@Override
		public ModelAndView index() {
			
			return null;
		}

		@Override
		public ModelAndView show(UUID id) {
			
			return null;
		}

		@Override
		public ModelAndView create() {
			
			return null;
		}

		@Override
		public ModelAndView edit(UUID id) {
			
			return null;
		}

		@Override
		public ModelAndView showSearch(HttpServletRequest request) {
			
			return null;
		}

		@Override
		public WSResponse get(UUID id) {
			
			return null;
		}


		@Override
		public WSResponse destroy(HttpServletRequest request) {
			
			return null;
		}

		@Override
		public String search(HttpServletRequest request) {
			
			return null;
		}

	
}