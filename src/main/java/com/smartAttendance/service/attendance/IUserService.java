package com.smartAttendance.service.attendance;

import java.util.Map;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.User;
import com.smartAttendance.service.ICommonService;

public interface IUserService extends ICommonService<User> {

	WSResponse insertData(Map<String, String[]> requestMap);

	WSResponse insertListData(Map<String, String[]> requestMap);

	WSResponse updateData(Map<String, String[]> requestMap);

}
