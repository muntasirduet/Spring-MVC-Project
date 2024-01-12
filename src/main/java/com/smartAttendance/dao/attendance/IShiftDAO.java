package com.smartAttendance.dao.attendance;

import java.util.UUID;

import com.smartAttendance.dao.ICommonDAO;
import com.smartAttendance.model.attendance.Shift;

public interface IShiftDAO extends ICommonDAO<Shift> {

	UUID insertDoc(Shift doc);

	UUID updateDoc(Shift doc);

}
