package com.smartAttendance.service.attendance;

import java.util.Map;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.Subject;
import com.smartAttendance.service.ICommonService;

public interface ISubjectService extends ICommonService<Subject>{
	WSResponse insertData(Map<String, String[]> requestMap);

	WSResponse updateData(Map<String, String[]> requestMap);
	
}
