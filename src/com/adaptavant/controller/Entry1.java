package com.adaptavant.controller;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Entry1{	

		private static final long serialVersionUID = 1L;
		@PrimaryKey
	 	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	 	private String key;	
		@Persistent	 
		private String studentname;
		@Persistent	 
		private String studentemail;	
		@Persistent	 
		private String studentmobile;
		@Persistent	 
		private String studentcollege;
		@Persistent	 
		private String studentdegree;
	    @Persistent	 
	    private String projectcourse;
	    @Persistent	 
	    private String referal;
	    @Persistent	 
	    private String mode;
	    @Persistent	 
	    private String date;
	    @Persistent	 
	    private String budget;
		
	    public String getkey() {
			return key;
		}
		public void setkey(String key) {
			this.key = key;
		}
		public String getstudentname() {
			return studentname;
		}
		public void setstudentname(String studentname) {
			this.studentname = studentname;
		}
		public String getstudentemail() {
			return studentemail;
		}
		public void setstudentemail(String studentemail) {
			this.studentemail = studentemail;
		}
		public String getstudentmobile() {
			return studentmobile;
		}
		public void setstudentmobile(String studentmobile) {
			this.studentmobile = studentmobile;
		}
		public String getstudentcollege() {
			return studentcollege;
		}
		public void setstudentcollege(String studentcollege) {
			this.studentcollege = studentcollege;
		}
		public String getprojectcourse() {
			return projectcourse;
		}
		public void setprojectcourse(String projectcourse) {
			this.projectcourse = projectcourse;
		}
		public String getreferal() {
			return referal;
		}
		public void setreferal(String referal) {
			this.referal = referal;
		}
		public String getmode() {
			return mode;
		}
		public void setmode(String mode) {
			this.mode = mode;
			
		}
		public String getdate() {
			return date;
		}
		public void setdate(String date) {
			this.date = date;
		}
		public String getbudget() {
			return budget;
		}
		public void setbudget(String budget) {
			this.budget = budget;
		}
		public String getdegree() {
			return studentdegree;
		}
		public void setstudentdegree(String studentdegree) {
			this.studentdegree = studentdegree;
		}
	}

