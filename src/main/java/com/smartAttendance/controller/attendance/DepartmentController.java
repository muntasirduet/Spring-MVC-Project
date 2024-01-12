package com.smartAttendance.controller.attendance;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.smartAttendance.bean.Resource;
import com.smartAttendance.bean.WSResponse;
import com.smartAttendance.model.attendance.Department;
import com.smartAttendance.service.attendance.IDepartmentService;

@RestController
@RequestMapping("")
public class DepartmentController implements IDepartmentController {

	private static final ModelAndView ERROR = null;
	@Autowired
	private IDepartmentService departmentService;

	/******************** Create Department ********************/

	@RequestMapping(value = "/createdept", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView create(HttpServletRequest request) {

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("lb_departmentTitle", Resource.loadProperty("attendance", "department_label_main_title"));
		map.put("lb_departmentCode", Resource.loadProperty("attendance", "department_label_department_code"));
		map.put("lb_departmentName", Resource.loadProperty("attendance", "department_label_department_name"));

		return new ModelAndView("attendance/department/create", "map", map);
	}

	/******************** Store Department ********************/

	@RequestMapping(value = "/storedept", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public WSResponse store(HttpServletRequest request) {
		System.out.println("Store called");

		Map<String, String[]> map = request.getParameterMap();
		WSResponse data = departmentService.insertData(map);

		return data;
	}

	/******************** Show Department ********************/

	/*
	 * @RequestMapping("/dept/show") public ModelAndView show(HttpServletRequest
	 * request) { Map<String, Object> map = new HashMap<String, Object>();
	 * map.put("lb_departmentName", Resource.loadProperty("attendance",
	 * "department_label_department_name"));
	 * 
	 * return new ModelAndView("attendance/department/show", "map", map); }
	 */
	/******************** Edit Department ********************/

	/*
	 * @RequestMapping("/dept/edit") public ModelAndView edit(HttpServletRequest
	 * request) { Map<String, Object> map = new HashMap<String, Object>();
	 * 
	 * List<Department> department = departmentService.getCurrent(); int length
	 * = department.size(); map.put("id", department.get(length - 1).getId());
	 * map.put("department_code", department.get(length -
	 * 1).getDepartmentCode()); map.put("department_name", department.get(length
	 * - 1).getDepartmentName());
	 * 
	 * return new ModelAndView("attendance/department/edit", "map", map); }
	 */
	/******************** Update Department ********************/
	
	@RequestMapping(value = "/updatedept", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    @Override
	public WSResponse update(HttpServletRequest request){
        Map<String, String[]> map = request.getParameterMap();
        WSResponse data = departmentService.updateData(map);
        
        return data;
    }

	/******************** ShowChange Department ********************/

	/*
	 * @RequestMapping("/dept/showchange") public ModelAndView
	 * showchange(HttpServletRequest request) { Map<String, Object> map = new
	 * HashMap<String, Object>();
	 * 
	 * return new ModelAndView("attendance/department/showchange", "map", map);
	 * }
	 */

	/******************** Profile Department ********************/
	
	/*@RequestMapping(value = "/deptprofile/{id}/{mode}/{action}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)*/
	@RequestMapping(value = "/deptprofile-{id}-{mode}-{action}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView show(@PathVariable(value="id") UUID id, @PathVariable(value = "mode") String mode, @PathVariable (value = "action") String action) {
		Department entity;
		entity = departmentService.getById(id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("entity", entity);
		map.put("department_code", entity.getDepartmentCode());
		map.put("department_name", entity.getDepartmentName());

		map.put("lb_departmentCode", Resource.loadProperty("attendance", "department_label_department_code"));
		map.put("lb_departmentName", Resource.loadProperty("attendance", "department_label_department_name"));
		map.put("lb_emailParents", Resource.loadProperty("attendance", "department_label_email_parents"));
		map.put("lb_emailStudents", Resource.loadProperty("attendance", "department_label_email_students"));
		map.put("lb_textParents", Resource.loadProperty("attendance", "department_label_text_parents"));
		map.put("lb_textStudents", Resource.loadProperty("attendance", "department_label_text_students"));
		 
		return new ModelAndView("attendance/department/profile", "map", map);
	}

	@Override
	public ModelAndView index() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public ModelAndView create() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView edit(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView showSearch(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WSResponse get(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WSResponse destroy(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String search(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView edit(UUID id, String mode) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public ModelAndView show(UUID id) {
		// TODO Auto-generated method stub
		return null;
	}

}