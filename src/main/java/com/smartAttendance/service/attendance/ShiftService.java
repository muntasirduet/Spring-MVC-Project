package com.smartAttendance.service.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.dao.attendance.IShiftDAO;
import com.smartAttendance.dao.attendance.ShiftDAO;
import com.smartAttendance.model.attendance.Department;
import com.smartAttendance.model.attendance.Shift;

@Service("shiftService")
public class ShiftService implements IShiftService {
	
	@Autowired
	private IShiftDAO shiftDao;
	
	@Override
	public WSResponse insertData(Map<String, String[]> requestMap) {
		// TODO Auto-generated method stub

		 UUID id;
	    Shift entity = new Shift();
		
	    entity.setShiftName(requestMap.get("shift_name")[0]);
		shiftDao.insertDoc(entity);
		
		return WSResponse.createSuccess("Successfull", entity);
	}
	
	@Override
	public Shift getById(UUID id) {
		Shift entity = shiftDao.getDocById(id);
		// TODO Auto-generated method stub
		return entity;
	}
	
	@Override
	public WSResponse updateData(Map<String, String[]> requestMap){
        UUID id;
        
        Shift entity = new Shift();
        
        /*entity.setId(requestMap.get("id")[0]);*/
        
        entity.setShiftName(requestMap.get("shift_name")[0]);
                
        Shift entityDoc = entity;
        shiftDao.updateDoc(entityDoc);
        
        return WSResponse.createSuccess("Successfully update", entity);
    }

	@Override
	public Map<String, String> insert(Map<String, String[]> requestMap) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Shift> getAll() {
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
