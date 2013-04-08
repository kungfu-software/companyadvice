package au.com.companyadvice

class Company {
	String name
	String website
	int headCount
	double latitidue
	double longtitude
	
	static hasMany = [freeComments: Comment, reviews: Review]

    static constraints = {
    	name blank:false, size: 3 .. 100
    	website blank:false, url: true
    	headCount min: 3	
    }

    long getTotalScore() {

    }
}
