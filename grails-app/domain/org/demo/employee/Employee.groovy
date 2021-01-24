package org.demo.employee

class Employee {

    String id
    String first_name
    String last_name
    Date date_of_birth

    static constraints = {
        id blank: false, unique: true
        first_name blank: false
        last_name blank: false
        date_of_birth blank: false
    }


}
