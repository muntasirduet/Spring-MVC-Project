package com.smartAttendance.service.attendance;

import java.util.Map;

import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.Section;
import com.smartAttendance.service.ICommonService;

public interface ISectionService extends ICommonService<Section> {

	WSResponse insertData(Map<String, String[]> requestMap);

	WSResponse updateData(Map<String, String[]> requestMap);

}