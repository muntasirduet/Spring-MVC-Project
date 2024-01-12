package com.smartAttendance.service.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.dao.attendance.DepartmentDAO;
import com.smartAttendance.dao.attendance.IDepartmentDAO;
import com.smartAttendance.model.attendance.Department;

@Service("departmentService")
public class DepartmentService implements IDepartmentService {
	
	@Autowired
	private IDepartmentDAO departmentDao;
	
	@Override
    public WSResponse insertData(Map<String, String[]> requestMap) {

        UUID id;
    	Department entity = new Department();
        
        entity.setDepartmentCode(requestMap.get("department_code")[0]);
        entity.setDepartmentName(requestMap.get("department_name")[0]);
                       
//        Department entityDoc = entity;
        departmentDao.insertDoc(entity);
        
        return WSResponse.createSuccess("Successful", entity);
    }

	

	@Override
	public Department getById(UUID id) {
		Department entity = departmentDao.getDocById(id);
		// TODO Auto-generated method stub
		return entity;
	}
	
	@Override
	public WSResponse updateData(Map<String, String[]> requestMap){
        UUID id;
        
        Department entity = new Department();
        
        /*entity.setId(requestMap.get("id")[0]);*/
        entity.setDepartmentCode(requestMap.get("department_code")[0]);
        entity.setDepartmentName(requestMap.get("department_name")[0]);
                
        Department entityDoc = entity;
        departmentDao.updateDoc(entityDoc);
        
        return WSResponse.createSuccess("Successfully update", entity);
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

	
	
	/*
	 * public WSResponse updateData(Map<String, String[]> requestMap) {
	 * Department entity = new Department();
	 * 
	 * entity.setId(requestMap.get("id")[0]);
	 * entity.setDepartmentCode(requestMap.get("department_code")[0]);
	 * entity.setDepartmentName(requestMap.get("department_name")[0]);
	 * 
	 * Department entityDoc = entity; departmentDao.updateDoc(entityDoc);
	 * 
	 * return WSResponse.createSuccess("Successfully Updated", entity); }
	 */
}