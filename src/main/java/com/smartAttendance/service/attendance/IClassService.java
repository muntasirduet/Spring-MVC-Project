package com.smartAttendance.service.attendance;

import java.util.Map;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.DClass;
import com.smartAttendance.service.ICommonService;

public interface IClassService extends ICommonService<DClass> {

	WSResponse insertData(Map<String, String[]> map);

	WSResponse updateData(Map<String, String[]> map);

}
