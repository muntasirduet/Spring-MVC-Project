package com.smartAttendance.service.attendance;

import java.util.Map;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.Student;
import com.smartAttendance.service.ICommonService;

public interface IStudentService extends ICommonService<Student> {

	WSResponse insertData(Map<String, String[]> map);

}