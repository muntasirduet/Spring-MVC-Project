package com.smartAttendance.service.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.dao.attendance.ISubjectDAO;
import com.smartAttendance.dao.attendance.SubjectDAO;
import com.smartAttendance.model.attendance.Subject;

@Service("subjectService")
public class SubjectService implements ISubjectService{
	@Autowired
	public ISubjectDAO subjectDao;
	
	@Override
	public WSResponse insertData(Map<String, String[]> requestMap) {
		UUID id;
		Subject entity = new Subject();
		entity.setSubjectName(requestMap.get("subject_name")[0]);
		Subject entityDoc = entity;
		subjectDao.insertDoc(entityDoc);
		return WSResponse.createSuccess("successfull", entityDoc);
	}
	
	@Override
	public WSResponse updateData(Map<String, String[]> requestMap) {
		Subject entity = new Subject();
		entity.setSubjectName(requestMap.get("subject_name")[0]);
		Subject entityDoc = entity;
		subjectDao.updateDoc(entityDoc);
		return WSResponse.createSuccess("successfull", entityDoc);
	}
	


	

	@Override
	public Subject getById(UUID id) {
		Subject entity = subjectDao.getDocById(id);
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