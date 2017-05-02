package com.app.pojos;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="users")
public class Users {
	
	private Integer userId;
	@NotEmpty(message="required*")
	@Length(min = 8, max = 25)
	//@Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[#@$*]).{5,20})")
	private String password;
	@NotEmpty(message="required*")
	private String emailId;
	@NotEmpty(message="required*")
	private String firstName;
	@NotEmpty(message="required*")
	private String lastName;
	private String gender;
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	private Date regDate;
	@NotEmpty(message="required*")
	private String idProffType;
	@NotEmpty(message="required*")
	private String idProffNumber;
	private String role;
	private Address address;
	@Length(min = 10, max = 10)
	private String contactNo;
	private Reservation reservation;
	private CancelRegistration cancelRegistration;
	public Users() {
		// TODO Auto-generated constructor stub
	}
	

	public Users(String password, String emailId, String firstName, String lastName, String gender,
			String idProffType, String idProffNumber, Address address, String contactNo) {
		super();
		this.password = password;
		this.emailId = emailId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.regDate = new Date();
		this.idProffType = idProffType;
		this.idProffNumber = idProffNumber;
		this.role = "USER";
		this.address = address;
		this.contactNo = contactNo;
	}
	
	

	public Users(Integer userId) {
		super();
		this.userId = userId;
	}


	@Id
	@GeneratedValue
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	@Column(length=10)
	public String getContactNo() {
		return contactNo;
	}


	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}


	@OneToOne(mappedBy="users")
	public Reservation getReservation() {
		return reservation;
	}

	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}



	public String getRole() {
		return "USER";
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Column(nullable=false)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(nullable=false,unique=true)
	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	@Column(nullable=false)
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	@Column(nullable=false)
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Temporal(TemporalType.DATE)
	public Date getRegDate() {
		return new Date();
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getIdProffType() {
		return idProffType;
	}

	public void setIdProffType(String idProffType) {
		this.idProffType = idProffType;
	}

	@Column(unique=true)
	public String getIdProffNumber() {
		return idProffNumber;
	}

	public void setIdProffNumber(String idProffNumber) {
		this.idProffNumber = idProffNumber;
	}

	@Embedded
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	
	
	@OneToOne(mappedBy="users")
	public CancelRegistration getCancelRegistration() {
		return cancelRegistration;
	}
	public void setCancelRegistration(CancelRegistration cancelRegistration) {
		this.cancelRegistration = cancelRegistration;
	}


	@Override
	public String toString() {
		return "Users [userId=" + userId + ", password=" + password + ", emailId=" + emailId + ", firstName="
				+ firstName + ", lastName=" + lastName + ", gender=" + gender + ", regDate=" + regDate
				+ ", idProffType=" + idProffType + ", idProffNumber=" + idProffNumber + ", role=" + role + ", address="
				+ address + ", contactNo=" + contactNo + "]";
	}
	
	
}
