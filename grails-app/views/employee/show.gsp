<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title>Στοιχεία Εργαζόμενου</title>
    </head>
    <body>
        <a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Αρχική</a></li>
                <li><g:link class="list" action="index">Λίστα Εργαζομένων</g:link></li>
                <li><g:link class="create" action="create">Δημιουργία </g:link></li>
            </ul>
        </div>
        <div id="show-employee" class="content scaffold-show" role="main">
            <h1>Στοιχεία Εργαζόμενου</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="employee"/>
            <g:form resource="${this.employee}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.employee}">Επεξεργασία</g:link>
                    <input class="delete" type="submit" value="Διαγραφή" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Είσαι σίγουρος ?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
