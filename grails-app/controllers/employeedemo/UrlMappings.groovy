package employeedemo

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/" ( controller:'employee', action:'index' ) // Here i have changed the desired   action to show the desired page while running the application
        "500"(view:'/error')
    }
}
