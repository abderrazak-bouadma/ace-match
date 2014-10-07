import com.sfeir.security.Member;
import com.sfeir.security.MemberRole;
import com.sfeir.security.Role;

class BootStrap {

    def init = { servletContext ->
		
		def roleUser = Role.findByAuthority("ROLE_USER") ?: new Role(authority: "ROLE_USER").save()
		def memebr1 = Member.findByUsername("nadal") ?: new Member(username: "nadal", password: "nadal", enabled: true).save()
		MemberRole.create(memebr1, roleUser)
		
    }
    def destroy = {
    }
}
