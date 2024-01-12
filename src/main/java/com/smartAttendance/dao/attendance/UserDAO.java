package com.smartAttendance.dao.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.smartAttendance.model.attendance.User;

@Component("userDao")
public class UserDAO implements IUserDAO{
	@Autowired
	private SessionFactory sessionFactory; 

	@Transactional
	@Override
	public UUID insertDoc(User entityDoc) {
		System.out.println("ad to class "+entityDoc.getAddToClass());
		UUID id = (UUID) sessionFactory.getCurrentSession().save(entityDoc);
		sessionFactory.getCurrentSession().flush();
		return id;
	}
	
	@Transactional
	@Override
	public User getDocById(UUID id) {
		User entity = sessionFactory.getCurrentSession().get(User.class, id);
		return entity;
	}
	
	@Transactional
	@Override
	public UUID insertListDoc(User entityDoc) {
		UUID id = (UUID) sessionFactory.getCurrentSession().save(entityDoc);
		sessionFactory.getCurrentSession().flush();
		return id;
	}
	@Transactional
	public UUID updateDoc(User entityDoc) {
		UUID id = (UUID) sessionFactory.getCurrentSession().save(entityDoc);
		sessionFactory.getCurrentSession().flush();
		return id;
	}

	@Override
	public List<User> getAllDoc() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getDocs(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UUID deleteDoc(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}

}