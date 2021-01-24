package employeedemo

import grails.boot.GrailsApp
import grails.boot.config.GrailsAutoConfiguration
import groovy.transform.CompileStatic

/*def sql = Sql.newInstance("jdbc:mysql://localhost:3306/", "root", "123456", "com.mysql.cj.jdbc.Driver")
sql.eachRow("SELECT * FROM SwProduct"){
    println "${it.prudoctID} | ${it.productName}"
}*/
@CompileStatic
class Application extends GrailsAutoConfiguration {
    static void main(String[] args) {
        GrailsApp.run(Application, args)
    }
}