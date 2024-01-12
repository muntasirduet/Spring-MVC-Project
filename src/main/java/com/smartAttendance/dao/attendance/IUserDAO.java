package com.smartAttendance.dao.attendance;

import java.util.UUID;

import com.smartAttendance.dao.ICommonDAO;
import com.smartAttendance.model.attendance.User;

public interface IUserDAO extends ICommonDAO<User> {

	UUID insertDoc(User entityDoc);

	UUID insertListDoc(User entityDoc);

	UUID updateDoc(User entityDoc);

}
