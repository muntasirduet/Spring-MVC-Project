package com.smartAttendance.dao.attendance;

import java.util.UUID;

import com.smartAttendance.dao.ICommonDAO;
import com.smartAttendance.model.attendance.DClass;

public interface IClassDAO extends ICommonDAO<DClass>{

	UUID insertDoc(DClass entityDoc);

	UUID updateDoc(DClass entityDoc);

	DClass getDocById(UUID id);

}
