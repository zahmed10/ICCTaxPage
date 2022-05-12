package com.sr.taxWebPage.models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "userInfo")
public class UserForm {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "*First Name is required!")
	private String firstName;

	@NotEmpty(message = "*Last Name is required!")
	private String lastName;

	@NotEmpty(message = "*Address is required!")
	private String address;

	@NotEmpty(message = "*City is required!")
	private String city;

	@Pattern(regexp = "^([Aa][LKSZRAEPlkszraep]|[Cc][AOTaot]|[Dd][ECec]|[Ff][LMlm]|[Gg][AUau]|"
			+ "[Hh][Ii]|[Ii][ADLNadln]|[Kk][SYsy]|" + "[Ll][Aa]|[Mm][ADEHINOPSTadehinopst]|[Nn][CDEHJMVYcdehjmvy]|"
			+ "[Oo][HKRhkr]|[Pp][ARWarw]|[Rr][Ii]|[Ss][CDcd]|[Tt][NXnx]|[Uu][Tt]|"
			+ "[Vv][AITait]|[Ww][AIVYaivy])$", message = "*Please enter a vaild State")
	private String state;

	@Pattern(regexp = "(^$|[0-9]{5})", message = "*Please enter a valid Zip Code")
	@NotEmpty(message = "*Zip Code is required!")
	private String zipCode;

	@Pattern(regexp = "(^$|[0-9]{10})", message = "*Please enter a valid Phone Number ex; 888-888-8888")
	@NotEmpty(message = "*Phone Number is required!")
	private String phone;

	@NotEmpty(message = "*Email is required!")
	@Email(message = "*Please enter a valid Email")
	private String email;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	private String type;

	
	@Max(value = 612 , message = "Test fail")
	@Min(value = 0, message ="Test fail")
	private int single_donation_a;

	@Max(value = 609 , message = "Test fail")
	@Min(value = 0, message ="Test fail")
	private int single_donation_b;

	private int total_single;

	@Max(value = 1222 , message = "Test fail")
	@Min(value = 0, message ="Test fail")
	private int married_donation_a;

	@Max(value = 1215 , message = "Test fail")
	@Min(value = 0, message ="Test fail")
	private int married_donation_b;

	private int total_married;

	private String year;

	private String already_paid;
	private String already_paid_name;
	private String already_paid_amount;
	private String already_paid_year;

	private String already_paid_no;


	private String already_paid_yes;

	private int total;
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getSingle_donation_a() {
		return single_donation_a;
	}

	public void setSingle_donation_a(int single_donation_a) {
		this.single_donation_a = single_donation_a;
	}

	public int getSingle_donation_b() {
		return single_donation_b;
	}

	public void setSingle_donation_b(int single_donation_b) {
		this.single_donation_b = single_donation_b;
	}

	public int getTotal_single() {
		return total_single;
	}

	public void setTotal_single(int total_single) {
		this.total_single = total_single;
	}

	public int getMarried_donation_a() {
		return married_donation_a;
	}

	public void setMarried_donation_a(int married_donation_a) {
		this.married_donation_a = married_donation_a;
	}

	public int getMarried_donation_b() {
		return married_donation_b;
	}

	public void setMarried_donation_b(int married_donation_b) {
		this.married_donation_b = married_donation_b;
	}

	public int getTotal_married() {
		return total_married;
	}

	public void setTotal_married(int total_married) {
		this.total_married = total_married;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getAlready_paid() {
		return already_paid;
	}

	public void setAlready_paid(String already_paid) {
		this.already_paid = already_paid;
	}

	public String getAlready_paid_name() {
		return already_paid_name;
	}

	public void setAlready_paid_name(String already_paid_name) {
		this.already_paid_name = already_paid_name;
	}

	public String getAlready_paid_amount() {
		return already_paid_amount;
	}

	public void setAlready_paid_amount(String already_paid_amount) {
		this.already_paid_amount = already_paid_amount;
	}

	public String getAlready_paid_year() {
		return already_paid_year;
	}

	public void setAlready_paid_year(String already_paid_year) {
		this.already_paid_year = already_paid_year;
	}

	public String getAlready_paid_no() {
		return already_paid_no;
	}

	public void setAlready_paid_no(String already_paid_no) {
		this.already_paid_no = already_paid_no;
	}

	public String getAlready_paid_yes() {
		return already_paid_yes;
	}

	public void setAlready_paid_yes(String already_paid_yes) {
		this.already_paid_yes = already_paid_yes;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public UserForm() {
	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

}
