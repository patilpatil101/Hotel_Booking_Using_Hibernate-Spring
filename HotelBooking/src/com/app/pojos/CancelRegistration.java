package com.app.pojos;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="cancel_registration")
public class CancelRegistration {
	private Integer cancelId;
	private String reason;
	private Date cancelDate;
	
	private Users users;
	
	public CancelRegistration() {
		
	}

	
	public CancelRegistration(String reason, Date cancelDate, Users users) {
		super();
		this.reason = reason;
		this.cancelDate = cancelDate;
		this.users = users;
	}

    @Id
    @GeneratedValue
	public Integer getCancelId() {
		return cancelId;
	}

	public void setCancelId(Integer cancelId) {
		this.cancelId = cancelId;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Date getCancelDate() {
		return cancelDate;
	}

	public void setCancelDate(Date cancelDate) {
		this.cancelDate = cancelDate;
	}

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="userId")
	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}


	@Override
	public String toString() {
		return "CancelRegistration [cancelId=" + cancelId + ", reason=" + reason + ", cancelDate=" + cancelDate + "]";
	}
	
	
	
}
