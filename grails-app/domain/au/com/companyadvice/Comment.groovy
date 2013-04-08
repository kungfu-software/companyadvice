package au.com.companyadvice

class Comment {
	String summary
	String pros
	String cons
	String advice

	boolean isApproved = true

    static constraints = {
    	summary blank:false, size: 3 .. 200
    	pros blank:false, size: 20 .. 2000
    	cons blank:false, size: 20 .. 2000
    }
}
