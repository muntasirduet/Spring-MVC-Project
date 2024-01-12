package com.smartAttendance.dao.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.smartAttendance.model.attendance.Shift;

@Component("shiftDao")
public class ShiftDAO implements IShiftDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public UUID insertDoc(Shift doc) {
		UUID id = (UUID) sessionFactory.getCurrentSession().save(doc);

		sessionFactory.getCurrentSession().flush();

		System.out.println("Successfully Update");
		return id;
	}
	
	@Transactional
	@Override
	public Shift getDocById(UUID id){
		Shift entity = sessionFactory.getCurrentSession().get(Shift.class, id);
		
		return entity;
	}
	
	@Transactional
	@Override
    public UUID updateDoc(Shift doc){
        UUID id = (UUID) sessionFactory.getCurrentSession().save(doc);
        sessionFactory.getCurrentSession().flush();
        
        return id;
    }

	@Override
	public List<Shift> getAllDoc() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Shift> getDocs(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UUID deleteDoc(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
