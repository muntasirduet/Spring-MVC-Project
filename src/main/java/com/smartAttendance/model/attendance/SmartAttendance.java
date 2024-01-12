package com.smartAttendance.model.attendance;

import javax.persistence.Column;

public class SmartAttendance {
	@Column(name = "attendance_code")
	private String attendanceCode;

	@Column(name = "current_dates")
	private String currentDates;

	@Column(name = "department_name")
	private String departmentName;

	public String getAttendanceCode() {
		return attendanceCode;
	}

	public void setAttendanceCode(String attendanceCode) {
		this.attendanceCode = attendanceCode;
	}

	public String getCurrentDates() {
		return currentDates;
	}

	public void setCurrentDates(String currentDates) {
		this.currentDates = currentDates;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getShift() {
		return shift;
	}

	public void setShift(String shift) {
		this.shift = shift;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getClassNote() {
		return classNote;
	}

	public void setClassNote(String classNote) {
		this.classNote = classNote;
	}

	public String getStudentNote() {
		return studentNote;
	}

	public void setStudentNote(String studentNote) {
		this.studentNote = studentNote;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getPresent() {
		return present;
	}

	public void setPresent(String present) {
		this.present = present;
	}

	public String getAbsent() {
		return absent;
	}

	public void setAbsent(String absent) {
		this.absent = absent;
	}

	public String getTardy() {
		return tardy;
	}

	public void setTardy(String tardy) {
		this.tardy = tardy;
	}

	public String getPercentage() {
		return percentage;
	}

	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}

	public String getCreatedByCode() {
		return createdByCode;
	}

	public void setCreatedByCode(String createdByCode) {
		this.createdByCode = createdByCode;
	}

	public String getCreatedByName() {
		return createdByName;
	}

	public void setCreatedByName(String createdByName) {
		this.createdByName = createdByName;
	}

	public String getCreatedByUsername() {
		return createdByUsername;
	}

	public void setCreatedByUsername(String createdByUsername) {
		this.createdByUsername = createdByUsername;
	}

	public String getCreatedByEmail() {
		return createdByEmail;
	}

	public void setCreatedByEmail(String createdByEmail) {
		this.createdByEmail = createdByEmail;
	}

	public String getCreatedByOrganizationCode() {
		return createdByOrganizationCode;
	}

	public void setCreatedByOrganizationCode(String createdByOrganizationCode) {
		this.createdByOrganizationCode = createdByOrganizationCode;
	}

	public String getCreatedByOrgranizationName() {
		return createdByOrgranizationName;
	}

	public void setCreatedByOrgranizationName(String createdByOrgranizationName) {
		this.createdByOrgranizationName = createdByOrgranizationName;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public String getUpdatedByCode() {
		return updatedByCode;
	}

	public void setUpdatedByCode(String updatedByCode) {
		this.updatedByCode = updatedByCode;
	}

	public String getUpdatedByName() {
		return updatedByName;
	}

	public void setUpdatedByName(String updatedByName) {
		this.updatedByName = updatedByName;
	}

	public String getUpdated_by_username() {
		return updated_by_username;
	}

	public void setUpdated_by_username(String updated_by_username) {
		this.updated_by_username = updated_by_username;
	}

	public String getUpdatedByEmail() {
		return updatedByEmail;
	}

	public void setUpdatedByEmail(String updatedByEmail) {
		this.updatedByEmail = updatedByEmail;
	}

	public String getUpdatedByOrganizationCode() {
		return updatedByOrganizationCode;
	}

	public void setUpdatedByOrganizationCode(String updatedByOrganizationCode) {
		this.updatedByOrganizationCode = updatedByOrganizationCode;
	}

	public String getUpdatedByOrganizationName() {
		return updatedByOrganizationName;
	}

	public void setUpdatedByOrganizationName(String updatedByOrganizationName) {
		this.updatedByOrganizationName = updatedByOrganizationName;
	}

	public String getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getSubmittedByCode() {
		return submittedByCode;
	}

	public void setSubmittedByCode(String submittedByCode) {
		this.submittedByCode = submittedByCode;
	}

	public String getSubmittedByName() {
		return submittedByName;
	}

	public void setSubmittedByName(String submittedByName) {
		this.submittedByName = submittedByName;
	}

	public String getSubmittedByUsername() {
		return submittedByUsername;
	}

	public void setSubmittedByUsername(String submittedByUsername) {
		this.submittedByUsername = submittedByUsername;
	}

	public String getSubmittedByEmail() {
		return submittedByEmail;
	}

	public void setSubmittedByEmail(String submittedByEmail) {
		this.submittedByEmail = submittedByEmail;
	}

	public String getSubmittedByOrganizationCode() {
		return submittedByOrganizationCode;
	}

	public void setSubmittedByOrganizationCode(String submittedByOrganizationCode) {
		this.submittedByOrganizationCode = submittedByOrganizationCode;
	}

	public String getSubmittedByOrganizationName() {
		return submittedByOrganizationName;
	}

	public void setSubmittedByOrganizationName(String submittedByOrganizationName) {
		this.submittedByOrganizationName = submittedByOrganizationName;
	}

	public String getSubmittedAt() {
		return submittedAt;
	}

	public void setSubmittedAt(String submittedAt) {
		this.submittedAt = submittedAt;
	}

	public String getApprovedByCode() {
		return approvedByCode;
	}

	public void setApprovedByCode(String approvedByCode) {
		this.approvedByCode = approvedByCode;
	}

	public String getApprovedByName() {
		return approvedByName;
	}

	public void setApprovedByName(String approvedByName) {
		this.approvedByName = approvedByName;
	}

	public String getApprovedByUsername() {
		return approvedByUsername;
	}

	public void setApprovedByUsername(String approvedByUsername) {
		this.approvedByUsername = approvedByUsername;
	}

	public String getApprovedByEmail() {
		return approvedByEmail;
	}

	public void setApprovedByEmail(String approvedByEmail) {
		this.approvedByEmail = approvedByEmail;
	}

	public String getApprovedByOrganizationCode() {
		return approvedByOrganizationCode;
	}

	public void setApprovedByOrganizationCode(String approvedByOrganizationCode) {
		this.approvedByOrganizationCode = approvedByOrganizationCode;
	}

	public String getApprovedByOrganizationName() {
		return approvedByOrganizationName;
	}

	public void setApprovedByOrganizationName(String approvedByOrganizationName) {
		this.approvedByOrganizationName = approvedByOrganizationName;
	}

	public String getApprovedAt() {
		return approvedAt;
	}

	public void setApprovedAt(String approvedAt) {
		this.approvedAt = approvedAt;
	}

	public String getLockedByCode() {
		return lockedByCode;
	}

	public void setLockedByCode(String lockedByCode) {
		this.lockedByCode = lockedByCode;
	}

	public String getLockedByName() {
		return lockedByName;
	}

	public void setLockedByName(String lockedByName) {
		this.lockedByName = lockedByName;
	}

	public String getLockedByUsername() {
		return lockedByUsername;
	}

	public void setLockedByUsername(String lockedByUsername) {
		this.lockedByUsername = lockedByUsername;
	}

	public String getLockedByEmail() {
		return lockedByEmail;
	}

	public void setLockedByEmail(String lockedByEmail) {
		this.lockedByEmail = lockedByEmail;
	}

	public String getLockedByOrganizationCode() {
		return lockedByOrganizationCode;
	}

	public void setLockedByOrganizationCode(String lockedByOrganizationCode) {
		this.lockedByOrganizationCode = lockedByOrganizationCode;
	}

	public String getLockedByOrganizationName() {
		return lockedByOrganizationName;
	}

	public void setLockedByOrganizationName(String lockedByOrganizationName) {
		this.lockedByOrganizationName = lockedByOrganizationName;
	}

	public String getLockedAt() {
		return lockedAt;
	}

	public void setLockedAt(String lockedAt) {
		this.lockedAt = lockedAt;
	}

	public String getIsLocked() {
		return isLocked;
	}

	public void setIsLocked(String isLocked) {
		this.isLocked = isLocked;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getWfStatus() {
		return wfStatus;
	}

	public void setWfStatus(String wfStatus) {
		this.wfStatus = wfStatus;
	}

	@Column(name = "class_name")
	private String className;

	@Column(name = "shift")
	private String shift;

	@Column(name = "section")
	private String section;

	@Column(name = "subject_name")
	private String subjectName;

	@Column(name = "class_note")
	private String classNote;

	@Column(name = "student_note")
	private String studentNote;

	@Column(name = "student_id")
	private String studentId;

	@Column(name = "student_name")
	private String studentName;

	@Column(name = "present")
	private String present;

	@Column(name = "absent")
	private String absent;

	@Column(name = "tardy")
	private String tardy;

	@Column(name = "percentage")
	private String percentage;

	@Column(name = "created_by_code")
	private String createdByCode;

	@Column(name = "created_by_name")
	private String createdByName;

	@Column(name = "created_by_username")
	private String createdByUsername;

	@Column(name = "created_by_email")
	private String createdByEmail;

	@Column(name = "created_by_organization_code")
	private String createdByOrganizationCode;

	@Column(name = "created_by_orgranization_name")
	private String createdByOrgranizationName;

	@Column(name = "created_at")
	private String createdAt;

	@Column(name = "updated_by_code")
	private String updatedByCode;

	@Column(name = "updated_by_name")
	private String updatedByName;

	@Column(name = "updated_by_username")
	private String updated_by_username;

	@Column(name = "updated_by_email")
	private String updatedByEmail;

	@Column(name = "updated_by_organization_code")
	private String updatedByOrganizationCode;

	@Column(name = "updated_by_organization_name")
	private String updatedByOrganizationName;

	@Column(name = "updated_at")
	private String updatedAt;

	@Column(name = "submitted_by_code")
	private String submittedByCode;

	@Column(name = "submitted_by_name")
	private String submittedByName;

	@Column(name = "submitted_by_username")
	private String submittedByUsername;

	@Column(name = "submitted_by_email")
	private String submittedByEmail;

	@Column(name = "submitted_by_organization_code")
	private String submittedByOrganizationCode;

	@Column(name = "submitted_by_organization_name")
	private String submittedByOrganizationName;

	@Column(name = "submitted_at")
	private String submittedAt;

	@Column(name = "approved_by_code")
	private String approvedByCode;

	@Column(name = "approved_by_name")
	private String approvedByName;

	@Column(name = "approved_by_username")
	private String approvedByUsername;

	@Column(name = "approved_by_email")
	private String approvedByEmail;

	@Column(name = "approved_by_organization_code")
	private String approvedByOrganizationCode;

	@Column(name = "approved_by_organization_name")
	private String approvedByOrganizationName;

	@Column(name = "approved_at")
	private String approvedAt;

	@Column(name = "locked_by_code")
	private String lockedByCode;

	@Column(name = "locked_by_name")
	private String lockedByName;

	@Column(name = "locked_by_username")
	private String lockedByUsername;

	@Column(name = "locked_by_email")
	private String lockedByEmail;

	@Column(name = "locked_by_organization_code")
	private String lockedByOrganizationCode;

	@Column(name = "locked_by_organization_name")
	private String lockedByOrganizationName;

	@Column(name = "locked_at")
	private String lockedAt;

	@Column(name = "is_locked")
	private String isLocked;

	@Column(name = "status")
	private String status;

	@Column(name = "wf_status")
	private String wfStatus;
}
