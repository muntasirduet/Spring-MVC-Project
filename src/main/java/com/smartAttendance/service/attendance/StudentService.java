package com.smartAttendance.service.attendance;


import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.dao.attendance.StudentDAO;
import com.smartAttendance.model.attendance.DClass;
import com.smartAttendance.model.attendance.Student;

@Service("studentService")
public class StudentService implements IStudentService {
	@Autowired
	private StudentDAO studentDAO;
	
	
		public WSResponse insertData(Map<String, String[]> requestMap) {
			UUID id;
	        Student entity = new Student();
	        
	        entity.setStudentId(requestMap.get("student_id")[0]);
	        entity.setFirstName(requestMap.get("first_name")[0]);
	        entity.setLastName(requestMap.get("last_name")[0]);
	       /* entity.setAddToClass(requestMap.get("add_to_class")[0]);
	        entity.setEmail(requestMap.get("email")[0]);
	        entity.setInfo(requestMap.get("info")[0]);
	        entity.setPhoneMobile(requestMap.get("phone_mobile")[0]);
	        entity.setPhoneHome(requestMap.get("phone_home")[0]);
	        entity.setCountry(requestMap.get("country")[0]);
	        entity.setPreferredLanguage(requestMap.get("preferred_language")[0]);
	        entity.setCurrentClass(requestMap.get("current_class")[0]);
	        entity.setAddToClass(requestMap.get("add_to_class")[0]);
	        entity.setStatus(requestMap.get("status")[0]);
	        entity.setDateOfBirth(requestMap.get("date_of_birth")[0]);
	        entity.setGradeLevel(requestMap.get("grade_level")[0]);*/
	       
	        
	        Student entityDoc = entity;
	        studentDAO.insertDoc(entityDoc);
	        
	        return WSResponse.createSuccess("successful", entityDoc);
	    }
		/*public WSResponse updateData(Map<String, String[]> requestMap) {
			Student entity = new Student();
			
			entity.setId(requestMap.get("id")[0]);
			
			entity.setId(requestMap.get("id")[0]);
			entity.setStudentId(requestMap.get("student_id")[0]);
			entity.setFirstName(requestMap.get("first_name")[0]);
			entity.setLastName(requestMap.get("last_name")[0]);
			entity.setAddToClass(requestMap.get("add_to_class")[0]);
			entity.setEmail(requestMap.get("email")[0]);
			entity.setInfo(requestMap.get("info")[0]);
			entity.setPhoneMobile(requestMap.get("phone_mobile")[0]);
			entity.setPhoneHome(requestMap.get("phone_home")[0]);
			entity.setCountry(requestMap.get("country")[0]);
			entity.setPreferredLanguage(requestMap.get("preferred_language")[0]);
			entity.setCurrentClass(requestMap.get("current_class")[0]);
			entity.setAddToClass(requestMap.get("add_to_class")[0]);
	        entity.setStatus(requestMap.get("status")[0]);
	        entity.setDateOfBirth(requestMap.get("date_of_birth")[0]);
	        entity.setGradeLevel(requestMap.get("grade_level")[0]);
	        
	        System.out.println("From service: "+entity.getId());
	        
	        Student entityDoc= entity;
	        studentDAO.updateDoc(entityDoc);
	        return WSResponse.createSuccess("Successfully Updated", entity);
		}
	*/	@Override
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
		public Student getById(UUID id) {
			Student entity = studentDAO.getDocById(id);
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