package com.smartAttendance.service.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.dao.attendance.IUserDAO;
import com.smartAttendance.dao.attendance.UserDAO;
import com.smartAttendance.model.attendance.User;
@Service("userService")
public class UserService implements IUserService{
	@Autowired
	private IUserDAO userDao;
	
	@Override
	public WSResponse insertData(Map<String, String[]> requestMap) {
		UUID id;
		User entity = new User();
		entity.setFirstName(requestMap.get("first_name")[0]);
		entity.setLastName(requestMap.get("last_name")[0]);
		
		User entityDoc = entity;
		userDao.insertDoc(entityDoc);
		return WSResponse.createSuccess("Successfull", entityDoc);
	}
	
	
	@Override
	public WSResponse insertListData(Map<String, String[]> requestMap) {
		UUID id;
		User entity = new User();
		entity.setFirstName(requestMap.get("first_name")[0]);
		entity.setLastName(requestMap.get("last_name")[0]);
		entity.setEmailAddress(requestMap.get("email_address")[0]);
		entity.setUserPassword(requestMap.get("user_password")[0]);
		entity.setAddToClass(requestMap.get("add_to_class")[0]);
		entity.setUserType(requestMap.get("user_type")[0]);
		
		User entityDoc = entity;
		userDao.insertListDoc(entityDoc);
		return WSResponse.createSuccess("Successfull", entityDoc);
	}

	@Override
	public WSResponse updateData(Map<String, String[]> requestMap) {
		UUID id;
		User entity = new User();
		entity.setFirstName(requestMap.get("first_name")[0]);
		entity.setLastName(requestMap.get("last_name")[0]);
		entity.setEmailAddress(requestMap.get("email_address")[0]);
		entity.setHomePhone(requestMap.get("phone_number")[0]);
		entity.setMobilePhone(requestMap.get("mobile_phone_number")[0]);
		entity.setUserSchool(requestMap.get("group_school")[0]);
		User entityDoc = entity;
		userDao.updateDoc(entityDoc);
		return WSResponse.createSuccess("Successfull", entityDoc);
	}

	@Override
	public User getById(UUID id) {
		User entity = userDao.getDocById(id);
		return entity;
	}


	@Override
	public Map insert(Map requestMap) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List getAll() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Map update(Map requestMap) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public UUID delete(Map requestMap) {
		// TODO Auto-generated method stub
		return null;
	}


	




	
	
	

}