package au.com.companyadvice

class User {

	String username
	String password
	String email
	String website
	Company currentCompany
	
	static hasMany = [previousCompanies: Company]


    static constraints = {
    	username blank:false, size: 4..50
    	password blank:false, size: 6 .. 50
    	email blank:false, email:true
    	website url:true
    }

    String toString() {
    	return username;
    }
}
