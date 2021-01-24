package org.demo.employee


import grails.gorm.transactions.Transactional
import groovy.transform.CompileStatic
import groovy.sql.Sql
import org.hsqldb.jdbc.jdbcDataSource

@Transactional('employee')
class EmployeeService {

    
    /*
    def dataSource = new jdbcDataSource(
            database: 'jdbc:mysql://localhost:3306/employeedemo',
            user: 'root', password: '123456'
    )
    def sql = new Sql(dataSource as Connection)

    EmployeeService employeeService

    Employee save(String first_name) {
        Employee employee = new Employee(first_name: first_name)
        employee.save()
        employee
    }*/











}
