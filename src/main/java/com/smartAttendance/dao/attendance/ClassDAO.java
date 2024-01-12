package com.smartAttendance.dao.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.smartAttendance.model.attendance.DClass;


@Component("classDAO")
public class ClassDAO implements IClassDAO {
	@Autowired
	private SessionFactory sessionFactory;
	/*public JdbcTemplate template;

	@Autowired
	public void setTemplate(DataSource template) {
		this.template = new JdbcTemplate(template);
	}
	
	public List<DClass> getDClass(){
		return template.query("select * from class", new RowMapper<DClass>(){

			
			public DClass mapRow(ResultSet rs, int rowNum) throws SQLException {
				DClass dClass= new DClass();
				dClass.setClassId(rs.getString("id"));
				dClass.setClassName(rs.getString("class_name"));
				dClass.setTeachers(rs.getString("teachers"));
				dClass.setMeetingDays(rs.getString("meeting_days"));
				dClass.setStartTime(rs.getString("start_time"));
				dClass.setEndTime(rs.getString("end_time"));
				dClass.setStatus(rs.getString("status"));
				return dClass;
			}
			
		});
	}
	public DClass insertDoc(DClass dClass){
        String sql = "INSERT INTO class(class_name) VALUES ('"+dClass.getClassName()+"')";
        template.update(sql);
        
        System.out.println("Successfully Update");
        return dClass;
    }
	public DClass updateDoc(DClass dClass) {
		 String sql = "UPDATE class SET(class_name, teachers, meeting_days, start_time, end_time, status) = ('"+dClass.getClassName()+"', '"+dClass.getTeachers()+"','"+dClass.getMeetingDays()+"','"+dClass.getStartTime()+"', '"+dClass.getEndTime()+"', '"+dClass.getStatus()+"') WHERE id = '"+dClass.getClassId()+"';";
	        template.update(sql);
	        
	        System.out.println("Successfully Updated");
	        return dClass;

public Department updateDoc(Department department) {

String sql = "UPDATE department SET (department_code, department_name) = ('"+department.getDepartmentCode()+"', '"+department.getDepartmentName()+"') WHERE id = '"+department.getId()+"';";
jdbc.update(sql);

System.out.println("Successfully Updated");
return department;


}*/
	   @Transactional
	   @Override
	   public UUID insertDoc(DClass doc){
		   UUID id =(UUID) sessionFactory.getCurrentSession().save(doc);
		   sessionFactory.getCurrentSession().flush(); 
		   return id;
	   }
	   
	   @Transactional
	   @Override
	   public DClass getDocById(UUID id){
		   DClass entity =(DClass) sessionFactory.getCurrentSession().get(DClass.class, id);
		   return entity;
	   }
	   @Transactional
	   @Override
	   public UUID updateDoc(DClass doc){
		   UUID id =(UUID) sessionFactory.getCurrentSession().save(doc);
		   sessionFactory.getCurrentSession().flush(); 
		   return id;
		   /*Session session = HibernateUtil.getSessionFactory().openSession();
			Student s = new Student(1, 22,"Mahesh");
			session.beginTransaction();
			session.update(s);
			session.getTransaction().commit();
			session.close();*/
	   }

	@Override
	public List<DClass> getAllDoc() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DClass> getDocs(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UUID deleteDoc(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}
	  

}
