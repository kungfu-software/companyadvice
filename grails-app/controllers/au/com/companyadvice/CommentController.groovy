package au.com.companyadvice

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_USER'])
class CommentController {
	static scaffold = Comment 

    //def index() { }
}
