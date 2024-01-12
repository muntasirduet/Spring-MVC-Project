package com.smartAttendance.service.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.dao.attendance.ISectionDAO;
import com.smartAttendance.model.attendance.Section;

@Service("sectionService")
public class SectionService implements ISectionService {
	
	@Autowired
	private ISectionDAO sectionDAO;
	
	@Override
	public WSResponse insertData(Map<String, String[]> requestMap){
		UUID id;
		
		Section entity = new Section();
		
		entity.setSectionName(requestMap.get("section_name")[0]);
		
		sectionDAO.insertDoc(entity);
		
		return WSResponse.createSuccess("Successfull", entity);
		
	}
	
	@Override
	public Section getById(UUID id){
		Section entity = sectionDAO.getDocById(id);
		
		return entity;	
	}
	
	@Override
	public WSResponse updateData(Map<String, String[]> requestMap){
		UUID id;
		
		Section entity = new Section();
		
		entity.setSectionName(requestMap.get("section_name")[0]);
		
		Section entityDoc = entity;
		sectionDAO.updateDoc(entityDoc);
		
		return WSResponse.createSuccess("Successfully Updated", entity);
	}

	@Override
	public Map<String, String> insert(Map<String, String[]> requestMap) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Section> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, String> update(Map<String, String[]> requestMap) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UUID delete(Map<String, String[]> requestMap) {
		// TODO Auto-generated method stub
		return null;
	}
	
}