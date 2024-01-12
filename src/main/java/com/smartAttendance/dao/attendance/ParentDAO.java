package com.smartAttendance.dao.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.smartAttendance.model.attendance.Parent;

@Component("parentDao")
public class ParentDAO implements IParentDAO {
	@Autowired
	private SessionFactory sessoinFactory;
	
	//Insert Create Data
	@Transactional
	@Override
	public UUID insertDoc(Parent entityDoc) {
		UUID id = (UUID) sessoinFactory.getCurrentSession().save(entityDoc);
		sessoinFactory.getCurrentSession().flush();
		return id;
	}
	
	//update Data
	@Transactional
	@Override
	public UUID updateDoc(Parent entityDoc) {
		UUID id = (UUID) sessoinFactory.getCurrentSession().save(entityDoc);;
		sessoinFactory.getCurrentSession().flush();
		return id;
	}
	//Insert List Data
	@Transactional
	@Override
	public UUID insertListDoc(Parent entityDoc) {
		UUID id = (UUID) sessoinFactory.getCurrentSession().save(entityDoc);
		sessoinFactory.getCurrentSession().flush();
		return id;
	}
	//get Id
	@Transactional
	public Parent getDocById(UUID id) {
		Parent entity = sessoinFactory.getCurrentSession().get(Parent.class, id);
		return entity;
	}

	@Override
	public List<Parent> getAllDoc() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Parent> getDocs(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UUID deleteDoc(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}