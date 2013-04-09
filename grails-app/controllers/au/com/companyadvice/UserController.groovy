package au.com.companyadvice

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_USER'])
class UserController {
	static scaffold = User
    //def index() { }
}
