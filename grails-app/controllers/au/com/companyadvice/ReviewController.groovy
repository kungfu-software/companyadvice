package au.com.companyadvice

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN', 'IS_AUTHENTICATED_FULLY'])
class ReviewController {

	static scaffold = Review 
    //def index() { }
}
