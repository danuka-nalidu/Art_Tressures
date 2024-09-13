
package com.oop.model;


public class Supplier {

	private String SupplierID;
	
	private String Name;

	private String Email;

	private String Phone;

	private String Address;
	
	private String Gender;
	
	private String AccountNumber;
	
	private String BankUserName;
	
	private String Branch;
	
	private String ArtCategories;
	
	private String UserName;
	
	private String Password;
	



	
	public Supplier() {
		
	}


	public String getSupplierID() {
		return SupplierID;
	}

	
	public void setSupplierID(String SupplierID) {
		this.SupplierID = SupplierID;
	}

	public String getName() {
		return Name;
	}

	
	public void setName(String name) {
		Name = name;
	}

	
	public String getEmail() {
		return Email;
	}

	
	public void setEmail(String Email) {
		this.Email = Email;
	}

	
	public String getPhone() {
		return Phone;
	}

	
	public void setPhone(String Phone) {
		this.Phone = Phone;
	}

	
	public String getAddress() {
		return Address;
	}

	public void setAddress(String Address) {
		this.Address = Address;
	}
	
	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		this.Gender = gender;
	}

	
	public String getAccountNumber() {
		return AccountNumber;
	}

	
	public void setAccountNumber(String AccountNumber) {
		this.AccountNumber = AccountNumber;
	}

	public String getBankUserName() {
		return BankUserName;
	}


	public void setBankUserName(String BankUserName) {
		this.BankUserName = BankUserName;
	}


	public String getBranch() {
		return Branch;
	}


	public void setBranch(String Branch) {
		this.Branch = Branch;
	}

	
	public String getArtCategories() {
		return ArtCategories;
	}

	public void setArtCategories(String ArtCategories) {
		this.ArtCategories = ArtCategories;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		this.UserName = userName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}
	
	public String toString() {
		
		return "Supplier ID = " + SupplierID + "\n" + 
		           "Supplier Name = " + Name + "\n" + 
		           "Account Number = " + AccountNumber + "\n" +
		           "Phone = " + Phone + "\n" + 
		           "Address = " + Address + "\n" + 
		           "Gender = " + Gender + "\n" +
		           "Email = " + Email + "\n" + 
		           "Bank User Name = " + BankUserName + "\n" + 
		           "Branch = " + Branch + "\n" +
		           "Account Type = " + ArtCategories + "\n" +
		           "User Name = " + UserName + "\n" +
		           "Password = " + Password;
	}
}
