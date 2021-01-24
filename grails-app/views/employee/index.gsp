<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title>Λίστα Εργαζομένων</title>
    </head>
    <body>
        <a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Αρχική</a></li>
                <li><g:link class="create" action="create">Νέα Υποβολή</g:link></li>
            </ul>
        </div>
        <div id="list-employee" class="content scaffold-list" role="main">
            <h1>Λίστα Εργαζομένων</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <f:table collection="${employeeList}" properties="${['id', 'first_name', 'last_name', 'date_of_birth']}"/>




            <div class="pagination">
                <g:paginate total="${employeeCount ?: 0}" />
            </div>
        </div>
    </body>
</html>

