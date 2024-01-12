package com.smartAttendance.dao.attendance;

import java.util.UUID;

import com.smartAttendance.dao.ICommonDAO;
import com.smartAttendance.model.attendance.Parent;

public interface IParentDAO extends ICommonDAO<Parent>{

	UUID insertDoc(Parent entityDoc);

	UUID insertListDoc(Parent entityDoc);

	UUID updateDoc(Parent entityDoc);

}
