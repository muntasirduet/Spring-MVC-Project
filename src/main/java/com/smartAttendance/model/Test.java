package com.smartAttendance.model;

import javax.persistence.Column;

public class Test {
	@Column(name="employee_name")
	private String employeeName;
	@Column(name="employee_salary")
	private String employeeSalary;
	
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeSalary() {
		return employeeSalary;
	}
	public void setEmployeeSalary(String employeeSalary) {
		this.employeeSalary = employeeSalary;
	}
}
