package com.adaptavant.controller;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Entry{	

		private static final long serialVersionUID = 1L;
		@PrimaryKey
	 	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	 	private String key;	
		@Persistent	 
		private String name;
		@Persistent	 
		private String email;
		@Persistent
		private Date date;
		@Persistent
		private String referrer;
		@Persistent
		private String phone;
		@Persistent
		private String message;
		public String getname() {
			return name;
		}
		public void setname(String name) {
			this.name = name;
		}
		public String getemail() {
			return email;
		}
		public void setemail(String email) {
			this.email = email;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
		}
		public String getreferrer() {
			return referrer;
		}
		public void setreferrer(String referrer) {
			this.referrer = referrer;
		}
		public String getphone() {
			return phone;
		}
		public void setphone(String phone) {
			this.phone = phone;
		}
		public String getmessage() {
			return message;
		}
		public void setmessage(String message) {
			this.message = message;
		}
		
		public String getKey() {
			return key;
			}
		public void setKey(String key) {
			this.key = key;
		}
		
	}

