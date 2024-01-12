package com.smartAttendance.dao.attendance;

import java.util.UUID;

import com.smartAttendance.dao.ICommonDAO;
import com.smartAttendance.model.attendance.Section;

public interface ISectionDAO extends ICommonDAO<Section> {

	UUID insertDoc(Section doc);

	UUID updateDoc(Section doc);

}