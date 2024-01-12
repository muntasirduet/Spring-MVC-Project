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
import com.smartAttendance.model.attendance.Section;
import com.smartAttendance.service.attendance.ISectionService;

@RestController
@RequestMapping("")
public class SectionController implements ISectionController {

	private static final ModelAndView ERROR = null;

	@Autowired
	private ISectionService sectionService;

	/******************** Create Section ********************/

	@RequestMapping(value = "/createsect", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView create(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("lb_sectionName", Resource.loadProperty("attendance", "section_label_Section_name"));

		return new ModelAndView("attendance/section/create", "map", map);
	}

	/******************** Store Section ********************/

	@RequestMapping(value = "/storesect", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public WSResponse store(HttpServletRequest request) {

		Map<String, String[]> map = request.getParameterMap();
		WSResponse data = sectionService.insertData(map);

		return data;
	}

	/******************** Show Section ********************/

	/*@RequestMapping("/sect/show")
	public ModelAndView show(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("lb_sectionName", Resource.loadProperty("attendance", "section_label_Section_name"));

		return new ModelAndView("attendance/section/show", "map", map);
	}*/

	/******************** Edit Section ********************/

	/*
	 * @RequestMapping("/sect/edit") public ModelAndView edit(HttpServletRequest
	 * request){ Map<String, Object> map = new HashMap<String, Object>();
	 * 
	 * return new ModelAndView("attendance/section/edit", "map", map); }
	 * 
	 */
	
	/******************** Update Section ********************/
	
	@RequestMapping(value = "/updatesect", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public WSResponse update(HttpServletRequest request){
		Map<String, String[]> map = request.getParameterMap();
		
		WSResponse data = sectionService.updateData(map);
		
		return data;
	}

	/******************** ShowChange Section ***************/

	@RequestMapping("/sect/showchange")
	public ModelAndView showchange(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();

		return new ModelAndView("attendance/section/showchange", "map", map);
	}

	/******************** Profile Section ***************/

	@RequestMapping(value="/sectprofile-{id}-{mode}-{action}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@Override
	public ModelAndView show(@PathVariable(value = "id") UUID id, @PathVariable(value="mode") String mode, @PathVariable(value="action") String action) {
		Section entity;
		entity = sectionService.getById(id);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("entity", entity);
		map.put("section_name", entity.getSectionName());

		map.put("lb_sectionName", Resource.loadProperty("attendance", "section_label_Section_name"));
		map.put("lb_emailParents", Resource.loadProperty("attendance", "section_label_email_parents"));
		map.put("lb_emailStudents", Resource.loadProperty("attendance", "section_label_email_students"));
		map.put("lb_textParents", Resource.loadProperty("attendance", "section_label_text_parents"));
		map.put("lb_textStudents", Resource.loadProperty("attendance", "section_label_text_students"));

		return new ModelAndView("attendance/section/profile", "map", map);
	}

	@Override
	public ModelAndView index() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView show(UUID id) {
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

}