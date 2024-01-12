package com.smartAttendance.service.attendance;

import java.util.Map;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.Shift;
import com.smartAttendance.service.ICommonService;

public interface IShiftService extends ICommonService<Shift> {

	WSResponse insertData(Map<String, String[]> requestMap);

	WSResponse updateData(Map<String, String[]> requestMap);

}
