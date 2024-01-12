package com.smartAttendance.service.attendance;

import java.util.Map;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.Department;
import com.smartAttendance.service.ICommonService;

public interface IDepartmentService extends ICommonService<Department> {

	WSResponse insertData(Map<String, String[]> requestMap);

	WSResponse updateData(Map<String, String[]> requestMap);
	
}