package com.app.pojos;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import com.sun.istack.internal.NotNull;

@Entity
@Table(name="payment")
public class Payment {
	@NotNull
	private Long cardNo;
	@NotEmpty
	private String custName;
	@NotNull
	private int cvv;
	@NotNull
	private double limit;
	@NotNull
	private int year;
	@NotNull
	private int month;

	public Payment() {
		// TODO Auto-generated constructor stub
	}

	public Payment(Long cardNo, String custName, int cvv, double limit, int month, int year) {
		super();
		this.cardNo = cardNo;
		this.custName = custName;
		this.cvv = cvv;
		this.limit = limit;

	}

	@Id
	public Long getCardNo() {
		return cardNo;
	}

	public void setCardNo(Long cardNo) {
		this.cardNo = cardNo;
	}

	@Column(name = "cust_name", length = 20)
	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	@Column(name = "credit_limit", columnDefinition = "decimal(6,1)")
	public double getLimit() {
		return limit;
	}

	public void setLimit(double limit) {
		this.limit = limit;
	}

	@Column(name = "exp_year")
	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	@Column(name = "exp_month")
	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	@Column(name = "cvv")
	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	@Override
	public String toString() {
		return "Card [cardNo=" + cardNo + ", custName=" + custName + ", limit=" + limit + ", expDate=" + month + " "
				+ year + " cvv " + cvv;
	}
	
}
