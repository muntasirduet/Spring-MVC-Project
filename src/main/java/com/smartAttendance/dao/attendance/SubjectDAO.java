package com.smartAttendance.dao.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.smartAttendance.model.attendance.Subject;

@Component("subjectDao")
public class SubjectDAO implements ISubjectDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	//CREATE
	@Transactional
	@Override
	public UUID insertDoc(Subject entityDoc) {
		UUID id = (UUID) sessionFactory.getCurrentSession().save(entityDoc);
		sessionFactory.getCurrentSession().flush();
		return id;
		
	}
	//SHOW
	@Transactional
	@Override
	public Subject getDocById(UUID id) {
		Subject entity = sessionFactory.getCurrentSession().get(Subject.class, id);
		return entity;
	}
	
	//UPDATE
	@Transactional
	@Override
	public UUID updateDoc(Subject entityDoc) {
		UUID id = (UUID) sessionFactory.getCurrentSession().save(entityDoc);
		sessionFactory.getCurrentSession().flush();
		return id;	
	}
	@Override
	public List<Subject> getAllDoc() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Subject> getDocs(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public UUID deleteDoc(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}
	
}