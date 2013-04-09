package au.com.companyadvice

class User extends SecUser {

	String email
	String website
	Company currentCompany
	
	static hasMany = [previousCompanies: Company]


    static constraints = {
    	username blank:false, size: 4..50, unique: true
    	password blank:false, size: 6 .. 50
    	email blank:false, email:true
    	website url:true
    }

    String toString() {
    	return username;
    }
}
