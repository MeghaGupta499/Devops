package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="UserTable")
public class User {
	    
	    @Id 
		private String uemail; 
		private int uid;
		private String uname;
		private String upassword;
		private int ucontact;
		public String getUemail() {
			return uemail;
		}
		public void setUemail(String uemail) {
			this.uemail = uemail;
		}
		public int getUid() {
			return uid;
		}
		public void setUid(int uid) {
			this.uid = uid;
		}
		public String getUname() {
			return uname;
		}
		public void setUname(String uname) {
			this.uname = uname;
		}
		public String getUpassword() {
			return upassword;
		}
		public void setUpassword(String upassword) {
			this.upassword = upassword;
		}
		public int getUcontact() {
			return ucontact;
		}
		public void setUcontact(int ucontact) {
			this.ucontact = ucontact;
		}
		
	
		
		
}

