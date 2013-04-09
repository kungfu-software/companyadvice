import au.com.companyadvice.SecRole
import au.com.companyadvice.SecUser
import au.com.companyadvice.SecUserSecRole


class BootStrap {

    def init = { servletContext ->

    	def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
    	def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)

    	def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)

        def seabook = SecUser.findByUsername('seabook') ?: new SecUser(
                username: 'seabook',
                password: '1234',
                enabled: true).save(failOnError: true)
 
        if (!adminUser.authorities.contains(adminRole)) {
            SecUserSecRole.create adminUser, adminRole
        }

        if (!seabook.authorities.contains(userRole)) {
            SecUserSecRole.create seabook, userRole
        }

    }
    def destroy = {
    }
}
