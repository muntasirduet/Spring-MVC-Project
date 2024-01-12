package com.smartAttendance.dao.attendance;

import java.util.UUID;

import com.smartAttendance.dao.ICommonDAO;
import com.smartAttendance.model.attendance.Department;

public interface IDepartmentDAO extends ICommonDAO<Department> {
	
	UUID insertDoc(Department doc);
	
	UUID updateDoc(Department doc);

	

}