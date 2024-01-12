package com.smartAttendance.model.attendance;
import java.sql.Timestamp;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

@Entity
@Table(name="student")
@Inheritance(strategy =InheritanceType.TABLE_PER_CLASS)
public class Student {
	  @Id
	  @Column(name = "id")
	  @org.hibernate.annotations.Type(type="org.hibernate.type.PostgresUUIDType")
	  @GeneratedValue(strategy=GenerationType.AUTO)
	   private UUID id;
	  

	public UUID getId() {
		return id;
	}
	public void setId(UUID id) {
		this.id = id;
	}

	@Column(name = "student_id")
	   private String studentId;
	  
	  @Column(name="first_name")
	  private String firstName;
	  
	  @Column(name="last_name")
	  private String lastName;
	  
	  @Column(name="info")
	  private String info;
	  
	  @Column(name = "email")
	   private String email;
	  
	  
	  public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "phone_home")
	   private String phoneHome;
	  
	  @Column(name = "phone_mobile")
	   private String phoneMobile;
	  
	  @Column(name = "country")
	   private String country;
	  
	  @Column(name = "preferred_language")
	   private String preferredLanguage;
	  
	  @Column(name = "current_class")
	   private String currentClass;
	  
	  @Column(name = "add_to_class")
	   private String addToClass;
	  
	  @Column(name = "date_of_birth")
	   private String dateOfBirth;
	  
	  @Column(name = "grade_level")
	   private String gradeLevel;
	  
	  @Column(name = "created_by_name")
	   private String createdByName;
	  
	  @Column(name = "created_by_username")
	   private String createdByUsername;
	  
	  @Column(name = "created_by_email")
	   private String createdByEmail;
	  
	  @Column(name = "created_by_organization_code")
	   private String createdByOrganizationCode;
	  
	  @Column(name = "created_by_organization_name")
	   private String createdByOrganizationName;
	  
	  @Column(name = "created_at")
	   private Timestamp createdAt;
	  
	  @Column(name = "updated_by_code")
	   private String updatedByCode;
	  
	  @Column(name = "updated_by_name")
	   private String updatedByName;
	  
	  @Column(name = "updated_by_username")
	   private String updatedByUsername;
	  
	  @Column(name = "updated_by_email")
	   private String updatedByEmail;
	  
	  @Column(name = "updated_by_organization_code")
	   private String updatedByOrganizationCode;
	  
	  @Column(name = "updated_by_organization_name")
	   private String upadatedByOrganizationName;
	  
	  @Column(name = "updated_at")
	   private Timestamp updatedAt;
	  
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
	   private String submittedByOrganiztionName;
	  
	  @Column(name = "submitted_at")
	  private Timestamp submittedAt;
	  
	  @Column(name = "approved_by_code")
	  private String approvedByCode;

	  @Column(name = "approved_by_name")
	  private String approvedByName;

	  @Column(name = "approved_by_username")
	  private String approvedByUsername;

	  @Column(name = "approved_by_email")
	  private String approvedByEmail;

	  @Column(name = "approved_by_organization_code")
	   private String approvedByOrganaizationCode;

	  @Column(name = "approved_by_organization_name")
	   private String approvedByOrganizationName;

	  @Column(name = "approved_at")
	   private Timestamp approvedAt;

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
	   private Timestamp lockedAt;

	  @Column(name = "is_locked")
	   private Boolean isLocked;

	  @Column(name = "status")
	   private String status;

	  @Column(name = "wf_status")
	  private String wfStatus;

	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getPhoneHome() {
		return phoneHome;
	}
	public void setPhoneHome(String phoneHome) {
		this.phoneHome = phoneHome;
	}
	public String getPhoneMobile() {
		return phoneMobile;
	}
	public void setPhoneMobile(String phoneMobile) {
		this.phoneMobile = phoneMobile;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPreferredLanguage() {
		return preferredLanguage;
	}
	public void setPreferredLanguage(String preferredLanguage) {
		this.preferredLanguage = preferredLanguage;
	}
	public String getCurrentClass() {
		return currentClass;
	}
	public void setCurrentClass(String currentClass) {
		this.currentClass = currentClass;
	}
	public String getAddToClass() {
		return addToClass;
	}
	public void setAddToClass(String addToClass) {
		this.addToClass = addToClass;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getGradeLevel() {
		return gradeLevel;
	}
	public void setGradeLevel(String gradeLevel) {
		this.gradeLevel = gradeLevel;
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
	public String getCreatedByOrganizationName() {
		return createdByOrganizationName;
	}
	public void setCreatedByOrganizationName(String createdByOrganizationName) {
		this.createdByOrganizationName = createdByOrganizationName;
	}
	public Timestamp getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Timestamp createdAt) {
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
	public String getUpdatedByUsername() {
		return updatedByUsername;
	}
	public void setUpdatedByUsername(String updatedByUsername) {
		this.updatedByUsername = updatedByUsername;
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
	public String getUpadatedByOrganizationName() {
		return upadatedByOrganizationName;
	}
	public void setUpadatedByOrganizationName(String upadatedByOrganizationName) {
		this.upadatedByOrganizationName = upadatedByOrganizationName;
	}
	public Timestamp getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Timestamp updatedAt) {
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
	public String getSubmittedByOrganiztionName() {
		return submittedByOrganiztionName;
	}
	public void setSubmittedByOrganiztionName(String submittedByOrganiztionName) {
		this.submittedByOrganiztionName = submittedByOrganiztionName;
	}
	public Timestamp getSubmittedAt() {
		return submittedAt;
	}
	public void setSubmittedAt(Timestamp submittedAt) {
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
	public String getApprovedByOrganaizationCode() {
		return approvedByOrganaizationCode;
	}
	public void setApprovedByOrganaizationCode(String approvedByOrganaizationCode) {
		this.approvedByOrganaizationCode = approvedByOrganaizationCode;
	}
	public String getApprovedByOrganizationName() {
		return approvedByOrganizationName;
	}
	public void setApprovedByOrganizationName(String approvedByOrganizationName) {
		this.approvedByOrganizationName = approvedByOrganizationName;
	}
	public Timestamp getApprovedAt() {
		return approvedAt;
	}
	public void setApprovedAt(Timestamp approvedAt) {
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
	public Timestamp getLockedAt() {
		return lockedAt;
	}
	public void setLockedAt(Timestamp lockedAt) {
		this.lockedAt = lockedAt;
	}
	public Boolean getIsLocked() {
		return isLocked;
	}
	public void setIsLocked(Boolean isLocked) {
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
	  
	
		
}