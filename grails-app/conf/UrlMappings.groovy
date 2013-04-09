class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/logout/$action?"(controller: "logout")
		"/login/$action?"(controller: "login")
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
