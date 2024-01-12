package com.smartAttendance.service.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.dao.attendance.IParentDAO;
import com.smartAttendance.model.attendance.Parent;

@Service("parentService")
public class ParentService implements IParentService{
	@Autowired
	private IParentDAO parentDao;
	
	
	//create parent
	@Override
	public WSResponse insertData(Map<String, String[]> requestMap) {
		UUID id;
		Parent entity = new Parent();
		entity.setFirstName(requestMap.get("first_name")[0]);
		entity.setLastName(requestMap.get("last_name")[0]);
		entity.setMobileNumber(requestMap.get("mobile_number")[0]);
		entity.setAddParent(requestMap.get("add_parent")[0]);
		Parent entityDoc = entity;
		parentDao.insertDoc(entityDoc);
		return WSResponse.createSuccess("Succesfull", entityDoc);
	}
	
	//parentList
	@Override
	public WSResponse insertListData(Map<String, String[]> requestMap) {
		
		Parent entity = new Parent();
		entity.setFirstName(requestMap.get("first_name")[0]);
		entity.setLastName(requestMap.get("last_name")[0]);
		entity.setMobileNumber(requestMap.get("mobile_number")[0]);
		entity.setEmailAddress(requestMap.get("email_address")[0]);
		entity.setHomeNumber(requestMap.get("home_phone")[0]);
		entity.setAssignedToSttudent(requestMap.get("assigne_to_student")[0]);
		Parent entityDoc = entity;
		parentDao.insertListDoc(entityDoc);
		return WSResponse.createSuccess("Succesfull", entityDoc);
	}
	
	//update parent
	@Override
	public WSResponse updateData(Map<String, String[]> requestMap) {
		UUID id;
		Parent entity = new Parent();
		entity.setFirstName(requestMap.get("first_name")[0]);
		entity.setLastName(requestMap.get("last_name")[0]);
		entity.setMobileNumber(requestMap.get("mobile_number")[0]);
		entity.setEmailAddress(requestMap.get("email_address")[0]);
		entity.setHomeNumber(requestMap.get("home_number")[0]);
		entity.setCountry(requestMap.get("country")[0]);
		Parent entityDoc = entity;
		parentDao.updateDoc(entityDoc);
		return WSResponse.createSuccess("successfull", entityDoc);
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
	public Parent getById(UUID id) {
		Parent entity = parentDao.getDocById(id);
		return entity;
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