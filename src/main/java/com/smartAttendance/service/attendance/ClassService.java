package com.smartAttendance.service.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.dao.attendance.IClassDAO;
import com.smartAttendance.model.attendance.DClass;

@Service("classService")
public class ClassService implements IClassService {
	
	@Autowired
	private IClassDAO classDAO;
		
		@Override
		public WSResponse insertData(Map<String, String[]> requestMap) {
			UUID id;
	        DClass entity = new DClass();
	        
	        entity.setClassName(requestMap.get("class_name")[0]);
	       
	        
	        DClass entityDoc = entity;
	        classDAO.insertDoc(entityDoc);
	        
	        return WSResponse.createSuccess("successful", entityDoc);
	    }
		@Override
		public WSResponse updateData(Map<String, String[]> requestMap) {
			DClass entity = new DClass();
	        
	        entity.setClassName(requestMap.get("class_name")[0]);
	        entity.setTeachers(requestMap.get("teachers")[0]);
	        entity.setMeetingDays(requestMap.get("meeting_days")[0]);
	        entity.setStartTime(requestMap.get("start_time")[0]);
	        entity.setEndTime(requestMap.get("end_time")[0]);
	        entity.setStatus(requestMap.get("status")[0]);
	        DClass entityDoc = entity;
	        classDAO.updateDoc(entityDoc);
	        
	        return WSResponse.createSuccess("Successfully Updated", entity);
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
		public DClass getById(UUID id) {
			DClass entity = classDAO.getDocById(id);
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
