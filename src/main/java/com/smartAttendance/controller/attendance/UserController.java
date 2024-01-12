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
import com.smartAttendance.model.attendance.User;
import com.smartAttendance.service.attendance.IUserService;

@RestController
public class UserController implements IUserController{
	public static final ModelAndView ERROR = null;
	@Autowired
	private IUserService userService;

	
	  //******************** User Create ********************\\

	@RequestMapping(value = "/usercreate",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView create(HttpServletRequest request) {
		Map <String,Object> map = new HashMap<String,Object>();
	
		return new ModelAndView("attendance/user/Add User","map",map);
	}
	@RequestMapping(value = "/userstore" ,method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public WSResponse store(HttpServletRequest request) {
		Map <String,String[]> map = request.getParameterMap();
		WSResponse data = userService.insertData(map);
		return data;
		
	}
	
	
	//******************** User show And Edit ********************\\
	
	@RequestMapping(value = "/usershow/{id}/{mode}", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView edit(@PathVariable(value = "id") UUID id,@PathVariable(value = "mode") String mode)  {
		User entity ;
		entity = userService.getById(id);
		Map <String,Object> map = new HashMap<String,Object>();
		map.put("lb_name", Resource.loadProperty("attendance", "user_profile_name"));
		map.put("lb_emailAddress", Resource.loadProperty("attendance", "user_profile_email_address"));
		map.put("lb_phoneNumber", Resource.loadProperty("attendance", "user_profile_phone_number"));
		map.put("lb_mobileNumber", Resource.loadProperty("attendance", "user_profile_mobile_number"));
		map.put("lb_country", Resource.loadProperty("attendance", "user_profile_country"));
		map.put("lb_school", Resource.loadProperty("attendance", "user_profile_school"));
		map.put("lb_userType", Resource.loadProperty("attendance", "user_profile_user_type"));
		
		map.put("first_name", entity.getFirstName());
		map.put("last_name", entity.getLastName());
		map.put("email_address", entity.getEmailAddress());
		map.put("user_password", entity.getUserPassword());
		
		
		return new ModelAndView("attendance/user/edit-user-profile","map",map);
	}
	@RequestMapping(value = "/userupdate",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public WSResponse update(HttpServletRequest request) {
		Map <String,String[]> map = request.getParameterMap();
		WSResponse data = userService.updateData(map);
		return data;
	}
	
	
	
	//******************** User List ********************\\
	
	@RequestMapping(value = "/userlist",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
	public ModelAndView createuserlist(HttpServletRequest request) {
		Map <String,Object> map = new HashMap<String,Object>();
		map.put("lb_name", Resource.loadProperty("attendance", "user_list_name"));
		map.put("lb_emailAddress", Resource.loadProperty("attendance", "user_list_email_address"));
		map.put("lb_password", Resource.loadProperty("attendance", "user_list_password"));
		map.put("lb_userType", Resource.loadProperty("attendance", "user_list_user_type"));
		map.put("lb_addToClass", Resource.loadProperty("attendance", "user_list_add_to_class"));
		return new ModelAndView("attendance/user/UserList","map",map);
	}
	
	@RequestMapping(value = "/userliststore", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
	public WSResponse userstore(HttpServletRequest request) {
		Map <String,String[]> map = request.getParameterMap();
		WSResponse data = userService.insertListData(map);
		return data;
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
	public ModelAndView show(UUID id, String mode, String action) {
		// TODO Auto-generated method stub
		return null;
	}
	
}