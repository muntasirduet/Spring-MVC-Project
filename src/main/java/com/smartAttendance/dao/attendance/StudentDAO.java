package com.smartAttendance.dao.attendance;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.smartAttendance.model.attendance.Student;

@Component("studentDao")
public class StudentDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	/*public JdbcTemplate template;
	
	@Autowired
	public void setTemplate(DataSource template) {
		this.template = new JdbcTemplate(template);
	}
	public List<Student> getStudent(){
		return template.query("select * from student", new RowMapper<Student>(){

			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student student= new Student();
				
				student.setId(rs.getString("id"));
				student.setStudentId(rs.getString("student_id"));
				student.setFirstName(rs.getString("first_name"));
				student.setLastName(rs.getString("last_name"));
				student.setInfo(rs.getString("info"));
				student.setEmail(rs.getString("email"));
				student.setPhoneMobile(rs.getString("phone_mobile"));
				student.setPhoneHome(rs.getString("phone_home"));
				student.setCountry(rs.getString("country"));
				student.setPreferredLanguage(rs.getString("preferred_language"));
				student.setCurrentClass(rs.getString("current_class"));
				student.setAddToClass(rs.getString("add_to_class"));
				student.setStatus(rs.getString("status"));
				student.setDateOfBirth(rs.getString("date_of_birth"));
				student.setGradeLevel(rs.getString("grade_level"));
				return student;
			}
			
		});
	}
	public Student insertDoc(Student student){
        String sql = "INSERT INTO student(student_id, first_name, last_name, add_to_class) VALUES ('"+student.getStudentId()+"','"+student.getFirstName()+"','"+student.getLastName()+"','"+student.getAddToClass()+"')";
        template.update(sql);
        
        System.out.println("Successfully Update");
        return student;
    }
	public Student updateDoc(Student student) {
		 String sql = "UPDATE student SET(student_id, first_name, last_name, info, email, phone_mobile, phone_home, country,"
		 		+ "preferred_language, current_class, add_to_class, status, date_of_birth, grade_level) "
		 		+ "= ('"+student.getStudentId()+"', '"+student.getFirstName()+"','"+student.getLastName()+"','"+student.getInfo()+"',"
		 				+ "'"+student.getEmail()+"','"+student.getPhoneMobile()+"', '"+student.getPhoneHome()+"', '"+student.getCountry()+"',"
		 						+ "'"+student.getPreferredLanguage()+"','"+student.getCurrentClass()+"','"+student.getAddToClass()+"','"+student.getStatus()+"','"+student.getDateOfBirth()+"','"+student.getGradeLevel()+"') WHERE id='"+student.getId()+"';";
	        template.update(sql);
	        
	        System.out.println("Successfully Updated");
	        return student;

	public Department updateDoc(Department department) {
	
	String sql = "UPDATE department SET (department_code, department_name) = ('"+department.getDepartmentCode()+"', '"+department.getDepartmentName()+"') WHERE id = '"+department.getId()+"';";
	jdbc.update(sql);
	
	System.out.println("Successfully Updated");
	return department;
	}
	
		
	}*/
	@Transactional
	   public UUID insertDoc(Student doc){
		   UUID id =(UUID) sessionFactory.getCurrentSession().save(doc);
		   sessionFactory.getCurrentSession().flush(); 
		   return id;
	   }
	@Transactional
	   public Student getDocById(UUID id){
		   Student entity =(Student) sessionFactory.getCurrentSession().get(Student.class, id);
		   return entity;
	   }
	
}