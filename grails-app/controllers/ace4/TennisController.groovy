package ace4

import grails.plugins.springsecurity.Secured;

class TennisController {
	
	@Secured(["ROLE_USER"])
	def list() {
		render "securisée"
	}
}
