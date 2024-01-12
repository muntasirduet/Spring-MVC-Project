package com.smartAttendance.dao.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.smartAttendance.model.attendance.Department;


@Component("departmentDao")
public class DepartmentDAO implements IDepartmentDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	/********************For Inserting Data********************/
	@Transactional
	@Override
	public UUID insertDoc(Department doc) {
		UUID id = (UUID) sessionFactory.getCurrentSession().save(doc);

		sessionFactory.getCurrentSession().flush();

		System.out.println("Successfully Update");
		return id;
	}
	
	@Transactional
	@Override
	public Department getDocById(UUID id){
		Department entity = (Department) sessionFactory.getCurrentSession().get(Department.class, id);
		
		return entity;
	}
	
	@Transactional
	@Override
    public UUID updateDoc(Department doc){
        UUID id = (UUID) sessionFactory.getCurrentSession().save(doc);
        sessionFactory.getCurrentSession().flush();
        
        return id;
    }
	

	public DepartmentDAO() {
		System.out.println("DAO configuration is fine");
	}

	@Override
	public List<Department> getAllDoc() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Department> getDocs(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UUID deleteDoc(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}
}
	