package com.smartAttendance.dao.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.smartAttendance.model.attendance.Section;

@Component("sectionDao")
public class SectionDAO implements ISectionDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public UUID insertDoc(Section doc){
		UUID id = (UUID) sessionFactory.getCurrentSession().save(doc);
		
		sessionFactory.getCurrentSession().flush();
		
		System.out.println("Successfully Update");
		
		return id;
	}
	
	@Transactional
	@Override
	public Section getDocById(UUID id){
		Section entity = (Section) sessionFactory.getCurrentSession().get(Section.class, id);
		
		return entity;
	}
	
	@Transactional
	@Override
	public UUID updateDoc(Section doc){
		UUID id = (UUID) sessionFactory.getCurrentSession().save(doc);
		
		sessionFactory.getCurrentSession().flush();
		
		return id;
	}

	@Override
	public List<Section> getAllDoc() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Section> getDocs(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UUID deleteDoc(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}
	
}