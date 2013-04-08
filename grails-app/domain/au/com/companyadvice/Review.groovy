package au.com.companyadvice

class Review {
	int seniorManagement
	int cultureAndValues
	int salaryAndBenifits
	int careerOps
	int workLifeBalance

	Comment commet

    static constraints = {
    	seniorManagement min: -2, max: 2
    	cultureAndValues min: -2, max: 2
    	salaryAndBenifits min: -2, max: 2
    	careerOps min: -2, max: 2
    	workLifeBalance min: -2, max: 2
    }
}
