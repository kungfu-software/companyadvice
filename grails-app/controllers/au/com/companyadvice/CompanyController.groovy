package au.com.companyadvice

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_USER'])
class CompanyController {
	static scaffold = Company
    //def index() { }
}
