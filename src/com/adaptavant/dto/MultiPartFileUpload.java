package com.adaptavant.dto;

import org.gmr.web.multipart.GMultipartFile;

public class MultiPartFileUpload {

	 	private String filename;
	 	private String firstname;
	 	private String email;
	 	private String experience;
	 	private String designation;
	 	private String referer;
	 	private String message;
	 	private String phone;
	 	private String photoURL;
	 	private String contactID;
	    private GMultipartFile file;
	   
	 	public String getFilename() {
			return filename;
		}
		public void setFilename(String filename) {
			this.filename = filename;
		}
		public String getReferer() {
			return referer;
		}
		public void setReferer(String referer) {
			this.referer = referer;
		}
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getFirstname() {
			return firstname;
		}
		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getExperience() {
			return experience;
		}
		public void setExperience(String experience) {
			this.experience = experience;
		}
		public String getDesignation() {
			return designation;
		}
		public void setDesignation(String designation) {
			this.designation = designation;
		}
		public GMultipartFile getFile() {
			return file;
		}
		public void setFile(GMultipartFile file) {
			this.file = file;
		}
		public String getPhotoURL() {
			return photoURL;
		}
		public void setPhotoURL(String photoURL) {
			this.photoURL = photoURL;
		}
		public String getContactId() {
			return contactID;
		}
		public void setContactID(String contactID) {
			this.contactID = contactID;
		}
		
}
